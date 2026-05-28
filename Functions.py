def cal(a, b):

    print("Addition:", a + b)
    print("Subtraction:", a - b)
    print("Multiplication:", a * b)
    print("Division:", a / b)


cal(40, 20)

def rectangle(length, width):

    area = length * width
    perimeter = 2 * (length + width)

    print("Area:", area)
    print("Perimeter:", perimeter)


rectangle(12, 6)


def circle(radius):

    pi = 3.14

    area = pi * radius * radius
    circumference = 2 * pi * radius

    print("Area:", area)
    print("Circumference:", circumference)


circle(7)


def interest(principal, rate, time):

    si = principal * rate * time / 100

    print("Simple Interest:", si)


interest(5000, 5, 2)
