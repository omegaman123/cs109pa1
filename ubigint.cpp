// $Id: ubigint.cpp,v 1.16 2019-04-02 16:28:42-07 - - $

#include <cctype>
#include <cstdlib>
#include <exception>
#include <stack>
#include <stdexcept>
#include <algorithm>

using namespace std;

#include "ubigint.h"
#include "debug.h"

ubigint::ubigint(unsigned long that) : uvalue(that), ubig_value{} {
    DEBUGF ('~', this << " -> " << uvalue)
    while (that > 0) {
        ubig_value.push_back((that % 10));
        that /= 10;
    }
}

ubigint::ubigint(const string &that) : uvalue(0), ubig_value{} {
    DEBUGF ('~', "that = \"" << that << "\"");
    for (char digit: that) {
        if (not isdigit(digit)) {
            throw invalid_argument("ubigint::ubigint(" + that + ")");
        }
        uvalue = uvalue * 10 + digit - '0';
    }
    for (char digit:that) {
        if (not isdigit(digit)) {
            throw invalid_argument("ubigint::ubigint(" + that + ")");
        }
        udigit_t val = digit - '0';
        ubig_value.push_back(val);
    }
    std::reverse(ubig_value.begin(), ubig_value.end());
}


ubigint ubigint::operator+(const ubigint &that) const {

    ubigint first = *this;
    ubigint second = that;
    if (this->ubig_value.size() < that.ubig_value.size()) {
        second = *this;
        first = that;
    }

    udigit_t cout = 0;
    uint counter = 0;
    ubigint res;
    for (udigit_t digit:first.ubig_value) {
        udigit_t addVal;
        if (counter >= second.ubig_value.size()) {
            addVal = 0;
        } else {
            addVal = second.ubig_value[counter];
        }

        udigit_t val = addVal + digit + cout;
        cout = val / 10;
        val %= 10;
        res.ubig_value.push_back(val);
        ++counter;
    }
    if (cout > 0) {
        res.ubig_value.push_back(cout);
    }

    while (res.ubig_value.size() > 0 and res.ubig_value.back() == 0) {
        res.ubig_value.pop_back();
    }

    res.uvalue = this->uvalue + that.uvalue;
    return res;

}

ubigint ubigint::operator-(const ubigint &that) const {
    if (*this < that) throw domain_error("ubigint::operator-(a<b)");
//    return ubigint(uvalue - that.uvalue);
    ubigint res;
    res.uvalue = uvalue - that.uvalue;
    ubigint first = *this;
    ubigint second = that;

    udigit_t cout = 0;
    uint counter = 0;
    for (udigit_t digit:first.ubig_value) {
        udigit_t subval;
        if (counter >= second.ubig_value.size()) {
            subval = 0;
        } else {
            subval = second.ubig_value[counter];
        }
        udigit_t val;
        if (digit < (subval + cout)){
            val = (digit + 10) - cout - subval;
            cout = 1;
        } else {
             val = digit - subval - cout;
            cout = 0;
        }

        ++counter;
        res.ubig_value.push_back(val);
    }

    while (res.ubig_value.size() > 1 and res.ubig_value.back() == 0) {
        res.ubig_value.pop_back();
    }


    return res;

}

ubigint ubigint::operator*(const ubigint &that) const {
    return ubigint(uvalue * that.uvalue);
}

void ubigint::multiply_by_2() {
    uvalue *= 2;
}

void ubigint::divide_by_2() {
    uvalue /= 2;
}


struct quo_rem {
    ubigint quotient;
    ubigint remainder;
};

quo_rem udivide(const ubigint &dividend, const ubigint &divisor_) {
    // NOTE: udivide is a non-member function.
    ubigint divisor{divisor_};
    ubigint zero{0};
    if (divisor == zero) throw domain_error("udivide by zero");
    ubigint power_of_2{1};
    ubigint quotient{0};
    ubigint remainder{dividend}; // left operand, dividend
    while (divisor < remainder) {
        divisor.multiply_by_2();
        power_of_2.multiply_by_2();
    }
    while (power_of_2 > zero) {
        if (divisor <= remainder) {
            remainder = remainder - divisor;
            quotient = quotient + power_of_2;
        }
        divisor.divide_by_2();
        power_of_2.divide_by_2();
    }
    return {.quotient = quotient, .remainder = remainder};
}

ubigint ubigint::operator/(const ubigint &that) const {
    return udivide(*this, that).quotient;
}

ubigint ubigint::operator%(const ubigint &that) const {
    return udivide(*this, that).remainder;
}

bool ubigint::operator==(const ubigint &that) const {
    return uvalue == that.uvalue;
}

bool ubigint::operator<(const ubigint &that) const {
    return uvalue < that.uvalue;
}

ostream &operator<<(ostream &out, const ubigint &that) {
    std::string s;
    vector<ubigint::udigit_t>::const_reverse_iterator rit = that.ubig_value.rbegin();
    for (; rit != that.ubig_value.rend(); ++rit) {
        s += std::to_string(*rit);
    }
    return out << "ubigint(" << that.uvalue << ", " << s << ")";
}

