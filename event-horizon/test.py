import math

print("hello world")

def fibonacci(x):
    if x == 0 or x == 1:
        return 1
    else:
        return fibonacci(x - 1) + fibonacci(x - 2)

import random
class Vector:
    def __init__(self, *args):
        self.data = args
        self.len = len(self.data)

    def print_elements(self):
        print("|", end = "")
        for index, item in enumerate(self.data):
            if index == self.len - 1:
                delim = ""
            else:
                delim = ", "
            print(f"{str(item)}{delim}", end = "")
        print("|")
        return 0

    def mapc(self, func):
        ans = [func(x) for x in self.data]
        return ans

    def __add__(self, other_vec):
        return [x + y for (x, y) in zip(self.data, other_vec.data)]

v = Vector(1, 2, 3, 4, 5)
v.print_elements()
stringed_v = v.mapc(lambda x: str(x))

class Pipe:
    args = Vector(1, 2, 3)

    def __init__(self):
        return 0


debt = math.sqrt(100)

easy_answer = Pipe.args.data

def generate_odds(start: int):
    while True:
        start += 1
        if start % 2 == 0:
            continue
        else:
            yield start

odds_after_ten = generate_odds(10)
age = odds_after_ten.next()
sister_age = odds_after_ten.next()

hash_map = {
    1: "one",
    2: "two",
    3: "three",
    4: "four",
    5: "five",
    6: "six",
    7: "seven",
    8: "eight",
    9: "nine",
}

# Comment
x, y = (5, 10)

def generate_primes(start: int):
    primes_so_far = []
    for i in range(1, start):
        if i % 2 == 0 and i != 2:
            continue
        for prime in primes_so_far:
            if i % prime == 0:
                continue
        primes_so_far.append(i)
    while True:
        for prime in primes_so_far:
            if start % prime == 0:
                continue
            else:
                start += 1
                primes_so_far.append(start)
                yield start
