#! /usr/bin/env python3

import csv
from collections import Counter

def generateAllPairs(inArray):
    permutations = []
    for idx, i in enumerate(inArray):
        tmp = inArray[idx + 1:]
        for j in tmp:
            permutations.append((i, j))

    assert len(permutations) == (len(inArray) * (len(inArray) - 1)) / 2
    return permutations


def getBestPermutation(bit7, bit6, bit5, bit4, bit3, bit2, bit1, bit0, i=0):
    # All possible permutations
    allCombinations = [generateAllPairs(bit0), generateAllPairs(bit1), generateAllPairs(bit2), generateAllPairs(bit3),
                       generateAllPairs(bit4), generateAllPairs(bit5), generateAllPairs(bit6), generateAllPairs(bit7)]
    tempCombinations = [[], [], [], [], [], [], [], []]
    fixedCombinations = [[], [], [], [], [], [], [], []]

    newCombsLen = 0

    # Order the list of combinations by its frequency
    # Is just a heuristic
    lista = [comb for bitComb in allCombinations for comb in bitComb]

    # If there are no possible combinations, the search has ended	
    if (len(lista) < 1):
        return []

    counter = Counter(lista)

    # Only for the 10 most common permutations
    for inputs, count in counter.most_common(4):

        tempCombinations = [[], [], [], [], [], [], [], []]
        newbit7 = list(bit7)
        newbit6 = list(bit6)
        newbit5 = list(bit5)
        newbit4 = list(bit4)
        newbit3 = list(bit3)
        newbit2 = list(bit2)
        newbit1 = list(bit1)
        newbit0 = list(bit0)

        in0, in1 = inputs

        # bit7
        if in0 in newbit7:
            # Remove the input from the list
            newbit7.remove(in0)
            if in1 in newbit7:
                # If the other input is in the list, add the combination to the list
                tempCombinations[7].append((in0, in1))
        if in1 in newbit7:
            newbit7.remove(in1)

        # bit6
        if in0 in newbit6:
            newbit6.remove(in0)
            if in1 in newbit6:
                tempCombinations[6].append((in0, in1))
        if in1 in newbit6:
            newbit6.remove(in1)

        # bit5
        if in0 in newbit5:
            newbit5.remove(in0)
            if in1 in newbit5:
                tempCombinations[5].append((in0, in1))
        if in1 in newbit5:
            newbit5.remove(in1)

        # bit4
        if in0 in newbit4:
            newbit4.remove(in0)
            if in1 in newbit4:
                tempCombinations[4].append((in0, in1))
        if in1 in newbit4:
            newbit4.remove(in1)

        # bit3
        if in0 in newbit3:
            newbit3.remove(in0)
            if in1 in newbit3:
                tempCombinations[3].append((in0, in1))
        if in1 in newbit3:
            newbit3.remove(in1)

        # bit2
        if in0 in newbit2:
            newbit2.remove(in0)
            if in1 in newbit2:
                tempCombinations[2].append((in0, in1))
        if in1 in newbit2:
            newbit2.remove(in1)

        # bit1
        if in0 in newbit1:
            newbit1.remove(in0)
            if in1 in newbit1:
                tempCombinations[1].append((in0, in1))
        if in1 in newbit1:
            newbit1.remove(in1)

        # bit0
        if in0 in newbit0:
            newbit0.remove(in0)
            if in1 in newbit0:
                tempCombinations[0].append((in0, in1))
        if in1 in newbit0:
            newbit0.remove(in1)

        # Call the funcion recursively
        newCombstemp = getBestPermutation(newbit7, newbit6, newbit5, newbit4, newbit3, newbit2, newbit1, newbit0, i + 1)
        for idx, newComb in enumerate(newCombstemp):
            tempCombinations[idx] += newComb

        # If the result is better that the one saved, save the new result
        countCombs = []
        for combsBit in tempCombinations:
            for comb in combsBit:
                countCombs += [comb]

        if len(countCombs) > newCombsLen:
            newCombsLen = len(countCombs)
            fixedCombinations = list(tempCombinations)

    return fixedCombinations

def getMostCommonCombinations(bit7, bit6, bit5, bit4, bit3, bit2, bit1, bit0):
    # Get the best combinations
    combinations = getBestPermutation(
        bit7,
        bit6,
        bit5,
        bit4,
        bit3,
        bit2,
        bit1,
        bit0
    )

    # Get the combinations of all combinations
    all_combs = []
    for c in combinations:
        all_combs += generateAllPairs(c)

    counter = Counter(all_combs)

    return set([combs[0] for combs, count in counter.most_common()] + [combs[1] for combs, count in counter.most_common()])

def main():
    remainders = []
    remainder_bits = [[],[],[],[],[],[],[],[]] # 0 -> r7, 1 -> r6, 2 -> r5, 3 -> r4, 4 -> r3, 5 -> r2, 6 -> r1, 7 -> r0

    # Open the csv file with the remainders
    with open('remainders.csv', newline='') as csvfile:
        reader = csv.reader(csvfile, delimiter=',')
        for row in reader:
            remainders.append(row)

    for i in range(len(remainders)):
        for j in range(len(remainders[i])):
            if remainders[i][j] == '1':
                remainder_bits[j].append(i)
    
    for i in range(len(remainder_bits)):
        remainder_bits[i].reverse()

    # Get the most common combinations for level 1
    most_common = getMostCommonCombinations(
        remainder_bits[0],
        remainder_bits[1],
        remainder_bits[2],
        remainder_bits[3],
        remainder_bits[4],
        remainder_bits[5],
        remainder_bits[6],
        remainder_bits[7]
    )

    print("----------------------------")
    print("Try combining the following bits for level 1:")
    for i in most_common:
        print(i)
    print("----------------------------")

    # --------LEVEL 2-------------

    # define the bits for level 2
    level2_bit7 = [(13, 0), (5, 3), (7, 1), (12, 100)] # the 100 means that the bit is not used in level 1
    level2_bit6 = [(6, 1), (15, 11), (4, 2), (5, 3), (13, 7)]
    level2_bit5 = [(6, 1), (4, 2), (5, 3), (0, 10), (12, 14)]
    level2_bit4 = [(15, 11), (4, 2), (9, 7), (12, 100)]
    level2_bit3 = [(14, 8), (6, 1), (3, 11), (10, 100)]
    level2_bit2 = [(13, 0), (9, 7), (2, 5), (10, 100)]
    level2_bit1 = [(13, 0), (5, 3), (9, 7), (4, 6), (8, 15)]
    level2_bit0 = [(13, 0), (6, 1), (14, 8), (4, 2)]

    # Get the most common combinations for level 2
    most_common = getMostCommonCombinations(
        level2_bit7,
        level2_bit6,
        level2_bit5,
        level2_bit4,
        level2_bit3,
        level2_bit2,
        level2_bit1,
        level2_bit0
    )

    print("----------------------------")
    print("Try combining the following bits for level 2:")
    for i in most_common:
        print(i)
    print("----------------------------")

if __name__ == '__main__':
    main()