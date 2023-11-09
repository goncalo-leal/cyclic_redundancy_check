#! /usr/bin/env python3

import csv

def long_division(dividend, divisor):
    while len(dividend) >= len(divisor):
        quotient = [0] * (len(dividend) - len(divisor)) + [dividend[-1] // divisor[-1]]
        temp = [0] * (len(quotient) - 1) + divisor
        dividend = [1 if d1 != d2 else 0 for d1, d2 in zip(dividend, temp)]
        dividend = clean_poly(dividend)
    return dividend

def print_poly(poly):
    pow = len(poly) - 1
    add = ""
    for i in range(len(poly)):
        if poly[pow - i] > 0:
            print(f"{add}{poly[pow - i]}x^{pow - i}", end="")
            add = " + "
    print()

def clean_poly(poly):
    found_last_1 = False
    result = []

    for bit in poly[::-1]:
        if found_last_1 or bit == 1:
            found_last_1 = True
            result.insert(0, bit)

    return result

def main():
    # b(x) = x⁸+x⁷+x⁵+x²+x+1
    b = [0] * 9
    b[8] = b[7] = b[5] = b[2] = b[1] = b[0] = 1

    remainders = []
    new_clean_remainder = [0] * 8 # the remainder cannot be greater than x⁷ because b is x⁸

    for i in range(8, 24):
        num = [0] * (i + 1)
        num[i] = 1

        print("----------------------------")

        remainder = long_division(num, b)        
        print_poly(num)
        print_poly(remainder)

        remainder = remainder + [0] * (8 - len(remainder)) # we want the remainders to be all of the same size
        assert len(remainder) == 8
        remainder.reverse()
        remainders.append(remainder)
        
        print("----------------------------")

    with open('remainders.csv', 'w', newline='') as file:
        writer = csv.writer(file)

        for rem in remainders:
            print(rem)
            writer.writerow(rem)

    # store this matrix in a csv file

if __name__ == '__main__':
    main()