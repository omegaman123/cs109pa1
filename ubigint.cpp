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

ubigint::ubigint(unsigned long that) : ubig_value{} {

    if (that == 0) {
        ubig_value.push_back(0);
    } else {
        while (that > 0) {
            ubig_value.push_back((that % 10));
            that /= 10;
        }
    }
}


ubigint::ubigint(const string &that) : ubig_value{} {
    DEBUGF ('~', "that = \"" << that << "\"")
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

    udigit_t carryout = 0;
    uint counter = 0;
    ubigint res;
    for (udigit_t digit:first.ubig_value) {
        udigit_t addVal;
        if (counter >= second.ubig_value.size()) {
            addVal = 0;
        } else {
            addVal = second.ubig_value[counter];
        }

        udigit_t val = addVal + digit + carryout;
        carryout = val / 10;
        val %= 10;
        res.ubig_value.push_back(val);
        ++counter;
    }
    if (carryout > 0) {
        res.ubig_value.push_back(carryout);
    }

    while (res.ubig_value.size() > 1 and res.ubig_value.back() == 0) {
        res.ubig_value.pop_back();
    }

    return res;

}

ubigint ubigint::operator-(const ubigint &that) const {
    if (*this < that) throw domain_error("ubigint::operator-(a<b)");
    ubigint res;
    ubigint first = *this;
    ubigint second = that;

    udigit_t carryout = 0;
    uint counter = 0;
    for (udigit_t digit:first.ubig_value) {
        udigit_t subval;
        if (counter >= second.ubig_value.size()) {
            subval = 0;
        } else {
            subval = second.ubig_value[counter];
        }
        udigit_t val;
        if (digit < (subval + carryout)) {
            val = (digit + 10) - carryout - subval;
            carryout = 1;
        } else {
            val = digit - subval - carryout;
            carryout = 0;
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

    ubigint res = ubigint(0);
    ubigint first = *this;
    ubigint second = that;

    if (this->ubig_value.size() < that.ubig_value.size()) {
        second = *this;
        first = that;
    }

    uint place = 0;
    for (udigit_t secDigit:second.ubig_value) {

        ubigint currentplace;
        for (uint i = 0; i < place; ++i) {
            currentplace.ubig_value.push_back(0);
        }
        uint carryout = 0;
        for (udigit_t firDigit:first.ubig_value) {
            udigit_t product = firDigit * secDigit;
            udigit_t val = product % 10;
            udigit_t placeVal = val + carryout;
            carryout = (product / 10);
            if (placeVal > 10) {
                udigit_t newPlaceVal = placeVal % 10;
                carryout = carryout + placeVal / 10;
                currentplace.ubig_value.push_back(newPlaceVal);
            } else {
                currentplace.ubig_value.push_back(placeVal);
            }
        }
        if (carryout > 0) {
            currentplace.ubig_value.push_back(carryout);
        }
        res = res + currentplace;
        ++place;
    }

    return res;
}

void ubigint::multiply_by_2() {
    ubigint two = ubigint(2);
    ubigint res = two * *this;
    this->ubig_value = res.ubig_value;

}

void ubigint::divide_by_2() {
    ubigvalue_t res;
    auto rit = this->ubig_value.rbegin();
    udigit_t rem = 0;
    for (; rit != this->ubig_value.rend(); ++rit) {
        udigit_t quo = ((rem * 10) + *rit) / 2;
        rem = ((rem * 10) + *rit) % 2;
        res.push_back(quo);
    }

    std::reverse(res.begin(), res.end());
    while (res.size() > 1 and res.back() == 0) {
        res.pop_back();
    }
    this->ubig_value = res;
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
    if (this->ubig_value.size() != that.ubig_value.size()) {
        return false;
    }
    for (uint i = 0; i < this->ubig_value.size(); ++i) {
        if (this->ubig_value[i] != that.ubig_value[i]) {
            return false;
        }
    }
    return true;
}

bool ubigint::operator<(const ubigint &that) const {
    if (this->ubig_value.size() < that.ubig_value.size()) {
        return true;
    }
    if (this->ubig_value.size() > that.ubig_value.size()) {
        return false;
    }
    for (int i = this->ubig_value.size() - 1; i >= 0; --i) {
        if (this->ubig_value[i] < that.ubig_value[i]) {
            return true;
        }
        if (this->ubig_value[i] > that.ubig_value[i]) {
            return false;
        }
    }
    return false;
}

ostream &operator<<(ostream &out, const ubigint &that) {
    std::string s;
    auto rit = that.ubig_value.rbegin();
    int counter = 0;
    for (; rit != that.ubig_value.rend(); ++rit) {
        if (counter == 69) {
            s += "\\\n";
            counter = 0;
        }
        s += std::to_string(*rit);
        ++counter;
    }
    return out << s;
}

