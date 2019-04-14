// $Id: bigint.cpp,v 1.78 2019-04-03 16:44:33-07 - - $

#include <cstdlib>
#include <exception>
#include <stack>
#include <stdexcept>

using namespace std;

#include "bigint.h"
#include "debug.h"
#include "relops.h"

bigint::bigint(long that) : uvalue(that), is_negative(that < 0) {
    DEBUGF ('~', this << " -> " << uvalue)
}

bigint::bigint(const ubigint &uvalue_, bool is_negative_) :
        uvalue(uvalue_), is_negative(is_negative_) {
}

bigint::bigint(const string &that) {
    is_negative = that.size() > 0 and that[0] == '_';
    uvalue = ubigint(that.substr(is_negative ? 1 : 0));
}

bigint bigint::operator+() const {
    return *this;
}

bigint bigint::operator-() const {
    return {uvalue, not is_negative};
}

bigint bigint::operator+(const bigint &that) const {
    if (!this->is_negative and !that.is_negative) {
        bigint res;
        res.is_negative = false;
        res.uvalue = this->uvalue + that.uvalue;
        return res;
    }
    if (this->is_negative and that.is_negative) {
        bigint res;
        res.is_negative = true;
        res.uvalue = this->uvalue + that.uvalue;
        return res;
    }
    if (this->is_negative and !that.is_negative) {
        bigint res;
        if (this->uvalue < that.uvalue) {
            res.is_negative = false;
            res.uvalue = that.uvalue - this->uvalue;
        } else if (this->uvalue == that.uvalue) {
            res = bigint(0);
        } else {
            res.is_negative = true;
            res.uvalue = this->uvalue - that.uvalue;
        }
        return res;
    }
    bigint res;
    if (this->uvalue < that.uvalue) {
        res.is_negative = true;
        res.uvalue = that.uvalue - this->uvalue;
    } else if (this->uvalue == that.uvalue) {
        res = bigint(0);
    } else {
        res.is_negative = false;
        res.uvalue = this->uvalue - that.uvalue;
    }
    return res;
}

bigint bigint::operator-(const bigint &that) const {
    if (!this->is_negative and !that.is_negative) {
        bigint res;
        if (this->uvalue > that.uvalue) {
            res.uvalue = this->uvalue - that.uvalue;
            res.is_negative = false;
        } else if (this->uvalue == that.uvalue) {
            res = bigint(0);
        } else {
            res.uvalue = that.uvalue - this->uvalue;
            res.is_negative = true;
        }
        return res;
    }
    if (!this->is_negative and that.is_negative){
        bigint res;
        res.uvalue = this->uvalue + that.uvalue;
        res.is_negative = false;
        return res;
    }
    if (this->is_negative and !that.is_negative){
        bigint res;
        res.uvalue = this->uvalue + that.uvalue;
        res.is_negative = true;
        return res;
    }
    bigint res;
    if (this->uvalue > that.uvalue){
        res.uvalue = this->uvalue - that.uvalue;
        res.is_negative = true;
    } else if (this->uvalue == that.uvalue){
        res = bigint(0);
    } else {
        res.uvalue = that.uvalue - this->uvalue;
        res.is_negative = false;
    }
    return res;

}


bigint bigint::operator*(const bigint &that) const {
   bigint res;
   if (this->is_negative and that.is_negative){
       res.is_negative = false;
   } else if(!this->is_negative and !that.is_negative){
       res.is_negative = false;
   } else {
       res.is_negative = true;
   }
   res.uvalue = this->uvalue * that.uvalue;
   return res;

}

bigint bigint::operator/(const bigint &that) const {
    bigint res;
    if (this->is_negative and that.is_negative){
        res.is_negative = false;
    } else if(!this->is_negative and !that.is_negative){
        res.is_negative = false;
    } else {
        res.is_negative = true;
    }
    res.uvalue = this->uvalue / that.uvalue;
    return res;
}

bigint bigint::operator%(const bigint &that) const {
    bigint res;

    if (this->uvalue == that.uvalue){
        res.is_negative = false;
    } else {
        res.is_negative = this->is_negative;
    }

    res.uvalue = this->uvalue % that.uvalue;
    return res;
}

bool bigint::operator==(const bigint &that) const {
    return is_negative == that.is_negative and uvalue == that.uvalue;
}

bool bigint::operator<(const bigint &that) const {
    if (is_negative != that.is_negative) return is_negative;
    return is_negative ? uvalue > that.uvalue
                       : uvalue < that.uvalue;
}

ostream &operator<<(ostream &out, const bigint &that) {
    return out << (that.is_negative ? "-": "") << that.uvalue;
}

