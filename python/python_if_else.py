# https://www.hackerrank.com/challenges/py-if-else/problem

n = int(raw_input())

if n % 2 != 0:
    print('Weird')
elif 2 < n <= 5:
    print('Not Weird')
elif 5 < n <= 20:
    print('Weird')
else:
    print('Not Weird')
