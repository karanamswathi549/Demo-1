## 1.
List → Ordered collection, allows duplicates, can be modified.
Tuple → Ordered collection, allows duplicates, cannot be modified.
Set → Unordered collection, removes duplicates automatically.
Dictionary → Stores data in key-value pairs and allows fast access using keys.

## 2.
Sets are used because they automatically remove duplicates and store only unique values.
cars = {"TN123", "TN456", "TN123", "TN789"}

print(cars)

seats = {101, 102, 101, 103}

print(seats)

students = {"Ben", "John", "Ben", "Jack"}

print(students)

## 3.
Mutable means the data can be changed after it is created.

Immutable means the data cannot be changed after it is created.

collection types:
Mutable Collections are list, set , Dictionary
Ex:
my_list = [1, 2, 3]

my_set = {1, 2, 3}

my_dict = {"name": "John"}

We can add, remove, or update values.

Immutable Collections is Tuple
Ex:
my_tuple = (1, 2, 3)

We Cannot add, remove, or update elements.


## 4. List Operations
cities = ["Dallas", "Charlotte", "Atlanta", "Nashville", "Austin"]

print(cities[0])

print(cities[-1])

cities.append("Houston")

print(cities)

## 5. Transaction Processing
transactions = [2000, 7000, 4500, 9000, 3000, 8000]

for amount in transactions:

    if amount > 5000:
        print(amount)

 ## 6. Tuple Operations
 employee_ids = (101, 102, 103, 104, 105)

print(len(employee_ids))

print(employee_ids[1])

for emp_id in employee_ids:
    print(emp_id)

## 7. Set Operations
numbers = {10, 20, 30, 10, 20, 40}

print(numbers)

## 8. Unique Visitors Counter
visitor_ids = {101, 102, 103, 101, 104, 102, 105}

print(len(visitor_ids))

## 9. Dictionary Operations
student = {
    "name": "Swathi",
    "age": 25,
    "course": "Information Technology"
}

for value in student.values():
    print(value)

## 10. Employee Record System
employee = {
    "id": 101,
    "name": "John",
    "salary": 50000
}

employee["salary"] = 65000

print(employee)