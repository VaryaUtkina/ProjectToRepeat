//
//  main.swift
//  ProjectToRepeat
//
//  Created by Варвара Уткина on 26.09.2024.
//

import Foundation

// Базовые операторы Module #1 Lesson #2

var a = -9
var b = 4

print(a * b)

// остаток от деления
print(a % b)

a = 5
b = 10

a = a + b
a += b

print(a)

print(a == b)

let accessDeniedMessage = "ACCESS DENIED"
let welcomeMessage = "Welcome!"

var allowedEntry = false

if !allowedEntry {
    print(accessDeniedMessage)
} else {
    print(welcomeMessage)
}

let enteredDoorCode = true
let passedRetinaScan = false

if enteredDoorCode && passedRetinaScan {
    print(welcomeMessage)
} else {
    print(accessDeniedMessage)
}

let hasDoorKey = false
let knowsOverridePassword = true

if hasDoorKey || knowsOverridePassword {
    allowedEntry = true
}

if !allowedEntry {
    print(accessDeniedMessage)
} else {
    print(welcomeMessage)
}

// Работа со строками
let fname = ""
let fsurname = String()
let fullName: String //объявлено и не инициализированно

let name = "Tim"
let surname = "Cook"
let nyearOfBirth = 1960
let ncurrentYear = 2024

// Конкатенация строк
fullName = name + " " + surname
var greeting = "Hello, my name is "

greeting += fullName
print(greeting)

// Многострочные литералы
let resume = """
    Full name: \(fullName)
    Year of birth: \(yearOfBirth)
    Age: \(currentYear - yearOfBirth)
    Company: Apple inc
    Post: CEO
    Cite: "You are more powerful than you think"
    """
print(resume)

// Задание
// 1
let valueOne: Float = 3.14
let valueTwo: Float = 42
let sum = Double(valueOne + valueTwo)
print(sum)

// 2
let numberOne = 8
let numberTwo = 5
let result = numberOne / numberTwo
let remainder = numberOne % numberTwo

print("При делении \(numberOne) на \(numberTwo) результат равен \(result), остаток равен \(remainder)")
print("Результат деления \(numberOne) на \(numberTwo) равен \(result) \(remainder)/\(numberTwo)")

// 3
let dayOfBirth = 24
let monthOfBirth = 12
let yearOfBirth = 1994

let currentDay = 26
let currentMonth = 9
let currentYear = 2024

let days2024 = (currentMonth - 1) * 30 + currentDay
let days = days2024 + (currentYear - 1 - yearOfBirth) * 360

let seconds = days * 24 * 60 * 60
let months = days / 30
let years = days / 360

print("\(years) years, \(months) months, \(days) days and \(seconds) seconds")

if monthOfBirth > 0 && monthOfBirth <= 3 {
    print("Я родилась в первом квартале")
} else if monthOfBirth > 3 && monthOfBirth <= 6 {
    print("Я родилась вo втором квартале")
} else if monthOfBirth > 6 && monthOfBirth <= 9 {
    print("Я родилась в третьем квартале")
} else if monthOfBirth > 9 && monthOfBirth <= 12  {
    print("Я родилась в четвертом квартале")
} else {
    print("Error")
}

// 4
let sinus = sin(1.0)
let roundedSinus = (sinus * 1000).rounded() / 1000

print(roundedSinus)
print(round(sinus * 1000) / 1000)
print(String(format: "Sinus by one is %.3f", sinus))


// Lesson 3
// Операторы ветвлений
var temperature = 20

if temperature < 18 { //False
    print("The weather is cool")
}

temperature = 15

if temperature < 18 { //False
    print("The weather is cool")
}

temperature = 15

if temperature < 18 { //False
    print("The weather is cool")
} else if temperature < 25 {
    print("The weather is warm")
}

temperature = 30

if temperature < 18 { //False
    print("The weather is cool")
} else if temperature < 25 {
    print("The weather is warm")
} else {
    print("The weather is hot")
}

// Тернарный оператор

var weather = ""

if temperature < 18 {
    weather = "The weather is cool"
} else {
    weather = "The weather is warm"
}

// condition ? some code : else some code

weather = temperature < 18 ? "The weather is cool" : "The weather is warm"

print(weather)

// Оператор Switch
var grade: Character = "A"

grade = "b"

if grade == "A" || grade == "a" {
    print("Excellent")
} else if grade == "B" || grade == "b" {
    print("Good")
} else if grade == "C" || grade == "c"  {
    print("Satisfactory")
} else if grade == "D" || grade == "d"  {
    print("Could be better")
} else {
    print("Invalid grade")
}

switch grade {
case "A", "a":
    print("Excellent")
case "B", "b":
    print("Good")
case "C", "c":
    print("Satisfactory")
case "D", "d":
    print("Could be better")
default:
    print("Invalid grade")
}

// Задание 1
let quantity = 11
let price: Int
let totalSum: Int


if quantity < 0 {
    price = 0
} else if (0...9).contains(quantity) {
    price = 1000
} else if (10...19).contains(quantity) {
    price = 800
} else {
    price = 600
}

totalSum = price * quantity

print("Общая сумма: \(totalSum)")

// Задание 2
let levelOfSituation = "A"

switch levelOfSituation {
case "A":
    print("Выключить все электрические приборы")
    fallthrough
case "B":
    print("Закрыть входные двери и окна")
    fallthrough
case "C":
    print("Соблюдать спокойствие")
default:
    break
}

// Задание 3
let color = "brown"
let filling = "chocolate"

switch filling {
case "chocolate" where color == "red":
    print("Put in the first bunch")
case "nuts" where color == "yellow":
    print("Put in the second bunch")
case "chocolate" where color == "green" || color == "brown":
    print("Put in the third bunch")
default:
    print("Put it away")
}

// Lesson 4
// Типы коллекций
// Массивы

//let strings = ["a", "b", "c"]

//let characters: [Character] = ["a", "b", "c"]

var integers: [Int] = []
integers = [1, 2, 3]
integers = [4, 5, 6]

integers += [7, 8]
integers.append(9)
integers.insert(1, at: 0)

var someIntegers = integers + [12, 17]

someIntegers.removeLast()
let lastValueFromArray = someIntegers.removeLast()

someIntegers.removeFirst()
someIntegers.remove(at: 1)

let count = someIntegers.count
someIntegers.removeAll()
integers = []

integers = [10, 20, 40]
let index = integers.firstIndex(of: 40)
integers[index ?? 0] = 30


if !integers.isEmpty {
    integers.remove(at: 0)
}

// Множества
let strings: Set = ["a", "a", "a", "b", "c"]

var charecters: Set<Character> = []
charecters.insert("b")
if charecters.contains("b") {
    print(true)
}

charecters = ["a", "d", "v", "b", "c"]
let chars = charecters.sorted(by: >)
print(chars)

// Словари
let users = [1: "Tim Cook", 2: "Taylor Swift"]

var carWashQueue: [String: String] = [:]
carWashQueue = ["E092BA": "Red Toyota", "X127TG": "Gray BMW X6"]
carWashQueue["E092BA"] = "Red Camry"
let oldValue = carWashQueue.updateValue("White BMW X6", forKey: "X127TG")
carWashQueue["M566PA"] = "Green Chavralet Niva"
//carWashQueue["E092BA"] = nil
carWashQueue.removeValue(forKey: "M566PA")

//  Строки
let string = String(["H", "e", "l", "l", "o"])
print(string)

let stringCount = string.count

// For-in циклы
var someSum = 0
for number in 1...5 {
    someSum += number
}
print(someSum)

let fruits = [
    "apple",
    "banana",
    "pineapple",
    "apple",
    "pear",
    "apple",
    "apple",
    "plum",
    "apple"
]

var appleCount = 0

for fruit in fruits {
    if fruit == "apple" {
        appleCount += 1
    }
}

print(appleCount)

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]

for (animal, legCount) in numberOfLegs {
    print("\(animal)s have \(legCount) legs")
}

let greteeng = "Hello!"

for char in greteeng {
    print(char)
}

// While-циклы

var counter = 0

while counter < 5 {
    print("Counter is \(counter)")
    counter += 1
}

repeat {
    print("Counter is \(counter)")
    counter += 1
} while counter < 5

// Задание 1
var deposit = 500_000.0
let period = 5
let rate = 0.11
var profit = 0.0

for _ in 1...period {
    let currentProfit = deposit * rate
    profit += currentProfit
    deposit += currentProfit
}

print("Сумма вклада через \(period) лет увеличится на \(profit.rounded()) и составит \(deposit.rounded()) рублей")

// Задание 2
let numbers = [1, 99, 10, 34, 72, 56]

for number in numbers {
    if number % 2 == 0 {
        print("Четное число: \(number)")
    }
}

for number in numbers {
    if number % 2 == 0 {
        continue
    }
    print("Нечетное число: \(number)")
}

// Задание 3
for iteration in 1...10 {
    if Int.random(in: 1...10) == 5 {
        print("Чтобы выпало число 5 понадобилось \(iteration) итераций")
        break
    }
}

// Задание 4
var numberOfDays = 0
var distance = 0
var isDay = true

while distance != 10 {
    if isDay {
        distance += 2
        numberOfDays += 1
        isDay = false
    } else {
        distance -= 1
        isDay = true
    }
}

print("Черепашке понадобилось \(numberOfDays) дней, чтобы взобраться на \(distance) метровый столб")


// Lesson 5
// Функции


func printSinusOfNumberOne() {
    print(String(format: "Синус числа один равен %.3f", sin(1.0)))
}

printSinusOfNumberOne()
let printSinus = printSinusOfNumberOne

printSinus()

func getSinusOfNumberOne() -> Double {
    let sinus = sin(1.0)
    return round(sinus * 1000) / 1000
}

print(getSinusOfNumberOne())

func sum(numberOne: Int, numberTwo: Int) -> Int {
   numberOne + numberTwo
}

print(sum(numberOne: 1, numberTwo: 2))

func sum(of numberOne: Int, and numberTwo: Int) -> Int {
    numberOne + numberTwo
}

print(sum(of: 1, and: 2))

func calculateRoundedSine(of value: Double, toDecimalPlaces places: Int = 3) -> Double {
    let sinus = sin(value)
    let multiplier = pow(10.0, Double(places))
    return round(sinus * multiplier) / multiplier
}

print(calculateRoundedSine(of: 1.0))

// Вариативные параметры
func getArithmeticMean(_ numbers: Double...) -> Double {
    var total = 0.0
    
    for number in numbers {
        total += number
    }
    
    return total / Double(numbers.count)
}

print(getArithmeticMean(1, 0, 7.2, 77, -99, 9))

// Задание 1
let games = [
    "Салават Юлаев": ["3:5", "5:5", "N/A"],
    "Авангврд": ["2:1"],
    "АкБарс": ["3:3", "1:2"]
]

for (team, results) in games {
    for result in results {
        print("Игра с \(team) - \(result)")
    }
}

// Задание 2
func sum(of numbers: Int...) -> Int {
    var total = 0
    for number in numbers {
        total += number
    }
    return total
}

print(sum(of: 1, 5, 0))

// Задание 3
func isNumberEven(_ number: Int) -> Bool {
    number % 2 == 0
}

func isMultipalOfThree(_ number: Int) -> Bool {
    number % 3 == 0
}

func getArray(from minNumber: Int, to maxNumber: Int) -> [Int] {
    var numbers: [Int] = []
    for number in minNumber...maxNumber {
        numbers.append(number)
    }
    return numbers.shuffled()
}

let numbersFromOne = getArray(from: 1, to: 100)

func getEvenArray(from array: [Int]) -> [Int] {
    var result: [Int] = []
    for number in array {
        if isNumberEven(number) {
            result.append(number)
        }
    }
    return result
}

print(getEvenArray(from: numbersFromOne))

func getArrayMultipalOfThree(from array: [Int]) -> [Int] {
    var result: [Int] = []
    for number in array {
        if isMultipalOfThree(number) {
            result.append(number)
        }
    }
    return result
}

print(getArrayMultipalOfThree(from: numbersFromOne))

// Lesson 6
// Вложенные функции

// Бинарный поиск в отсортированном массиве
 let items = [0, 1, 2, 3, 4, 5, 6]
 
 // Находим середину массива: начальный индекс и поледний индекс, складываем и делим на 2
 let center = (0 + 6) / 2
 
 // Рекурсивный способ: функция вызывает саму себя для решения задачи
func recursiveBinarySearch(for target: Int, in items: [Int]) -> Int? {
    func recursiveBinarySearch(for target: Int, in items: [Int], firstIndex: Int, lastIndex: Int) -> Int? {
        if firstIndex > lastIndex {
            return nil
        }
        // Определить элемент из середины массива
        let middleIndex = (firstIndex + lastIndex) / 2
        let item = items[middleIndex]
        
        if item == target {
            return middleIndex
        } else if target < item {
            return recursiveBinarySearch(
                for: target,
                in: items,
                firstIndex: firstIndex,
                lastIndex: middleIndex - 1
            )
        } else {
            return recursiveBinarySearch(
                for: target,
                in: items,
                firstIndex: middleIndex + 1,
                lastIndex: lastIndex
            )
        }
    }
    
    return recursiveBinarySearch(
        for: target,
        in: items,
        firstIndex: 0,
        lastIndex: items.count - 1
    )
}
 
 print(recursiveBinarySearch(for: 7, in: items) ?? "Такого значения нет в массиве")

// Замыкающие выражения
let numbersA = [5, 8, 20, 13, 1, 4, 3, 6]

func filterLessThanValue(_ value: Int, numbers: [Int]) -> [Int] {
    var filteredNumbers: [Int] = []
    
    for number in numbers {
        if number < value {
            filteredNumbers.append(number)
        }
    }
    
    return filteredNumbers
}

print(filterLessThanValue(5, numbers: numbersA))

func filterGreaterThanValue(_ value: Int, numbers: [Int]) -> [Int] {
    var filteredNumbers: [Int] = []
    
    for number in numbers {
        if number > value {
            filteredNumbers.append(number)
        }
    }
    
    return filteredNumbers
}

print(filterGreaterThanValue(5, numbers: numbersA))

func filterWithPredicateClosure(value: Int, numbers: [Int], closure: (Int, Int) -> Bool) -> [Int] {
    var filteredNumbers: [Int] = []
    
    for number in numbers {
        if closure(number, value) {
            filteredNumbers.append(number)
        }
    }
    
    return filteredNumbers
}

let number = 3
let value = 5
var filteredNumbers: [Int] = []

func isNumber(_ number: Int, lessThanValure value: Int) -> Bool {
    number < value
}

func isNumber(_ number: Int, greaterThanValure value: Int) -> Bool {
    number > value
}

print(
    filterWithPredicateClosure(
        value: 5,
        numbers: numbersA,
        closure: { $0 < $1 }
    )
)

// Свойства с типом замыкающих выражений
let completion: (Int, Int) -> Int = {
    $0 + $1
}

print(completion(7,9))

// Захват значений
// Используется для управления памятью

var number1 = 3
var number2 = 5

let closure: () -> Int = { [number1, number2] in // значения захвачены, сохранены в область памяти
    number1 + number2
}

print(closure())

number1 = 10
number2 = 2

print(closure())

// Задание 1
let numbersB = [1, 2, 3, 4, 5, 6, 7, 8, 9]

func customFilter(_ numbers: [Int], closure: (Int) -> Bool) -> [Int] {
    var filteredNumbers: [Int] = []
    
    for number in numbers {
        if closure(number) {
            filteredNumbers.append(number)
        }
    }
    
    return filteredNumbers
}

let evenNumbers = customFilter(numbersB) { $0 % 2 == 0 }
print(evenNumbers)

// Задание 2
func transformString(_ string: String, closure: (Character) -> String) -> String {
    var transformedString = ""
    
    for char in string {
        transformedString.append(closure(char))
    }
    
    return transformedString
}

let originalString = "Hello, World!"
let uppercasedString = transformString(originalString) { $0.uppercased() }
print(uppercasedString)

// Задание 3
func generateRandomNumbers(
    from numberOne: Int,
    to numberTwo: Int,
    count: Int,
    closure: (Int) -> Int
) -> [Int] {
    var result: [Int] = []
    
    for _ in 1...count {
        let number = Int.random(in: numberOne...numberTwo)
        result.append(closure(number))
    }
    
    return result
}

let randomNumbers = generateRandomNumbers(from: 1, to: 100, count: 10) { $0 * 2 }
print(randomNumbers)


// Lesson 7
// Классы. ООП
let postTitle = "Classes"
let  postBody = "Text of the article"
let postAuthor = "Aleksey Efimov"

let postTitle2 = "Property of classes"
let postBody2 = "Text of the article"
let postAuthor2 = postAuthor

class Post {
    var title = ""
    var body = ""
    var author = ""
    
    var numberOfComments: Int {
        comments.count
    }
    
    private var comments: [String] = []
    
    func add(comment: String) {
        comments.append(comment)
    }
    
    func showComments() {
        for comment in comments {
            print(comment)
        }
    }
}

let postOne = Post()

postOne.title = "This is my first post"
postOne.body = "Hello"
postOne.author = "Aleksey Efimov"
postOne.add(comment: "Thank you!!!")
postOne.add(comment: "+1")
postOne.showComments()

let postTwo = Post()

postTwo.title = "Second post"
postTwo.body = "A lot of text"

// Если экземпляры ссылаются на один и тот же объект
print(postOne === postTwo)

class Person {
    let name: String
    var age = 0
    
    init(name: String, age: Int = 0) {
        self.name = name
        self.age = age
    }
}

let person = Person(name: "Tim", age: 62)
let tom = Person(name: "Tom")

// Задание 1
class Student {
    let name: String
    let age: Int
    
    var averageGrade: Double {
        let total = grades.reduce(0, +)
        return Double(total) / Double(grades.count)
    }
    
    var description: String {
        "\(name): \(averageGrade), \(getStatus())"
    }
    
    private var grades: [Int] = []
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func addGrade(_ grade: Int) {
        if (1...10).contains(grade) {
            grades.append(grade)
        }
    }
    
    private func getStatus() -> String {
        switch averageGrade {
        case 1.0..<4.0: "Underperforming"
        case 4.0..<7.0: "Average"
        case 7.0..<9.0: "Good"
        case 9.0...10.0: "Excellent"
        default: "New"
        }
    }
}

let anna = Student(name: "Anna", age: 19)
anna.addGrade(5)
anna.addGrade(10)
anna.addGrade(9)
anna.addGrade(9)
anna.addGrade(8)

print(anna.description)

let susi = Student(name: "Susi", age: 18)
susi.addGrade(2)
susi.addGrade(3)
print(susi.description)

class Classroom {
    private var students: [Student]
    
    init(students: [Student] = []) {
        self.students = students
    }
    
    func addStudent(_ student: Student) {
        students.append(student)
    }
    
    func getAverageGrade() -> Double {
        let total = students.reduce(0.0) { $0 + $1.averageGrade }
            return total / Double(students.count)
    }
}

let classRoom = Classroom()
classRoom.addStudent(anna)
classRoom.addStudent(susi)
print(classRoom.getAverageGrade())


// Задание 2
class Employee {
    let salary: Int
    let name: String
    let surname: String
    
    init(salary: Int, name: String, surname: String) {
        self.salary = salary
        self.name = name
        self.surname = surname
    }
}

let names = ["John", "Aaron", "Tim", "Ted", "Steven"]
let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins"]

let employees: [Employee] = (1...10).map { _ in
    Employee(
        salary: Int.random(in: 1000...2000),
        name: names.randomElement() ?? "",
        surname: surnames.randomElement() ?? ""
    )
}

employees.forEach { employee in
    print("\(employee.name) \(employee.surname)'s salary is $\(employee.salary)")
}
print("")

let evenSalaryEmployees = employees.filter { $0.salary.isMultiple(of: 2) }

evenSalaryEmployees.forEach { employee in
    print("\(employee.name) \(employee.surname) has even salary. Salary is $\(employee.salary)")
}


// Lesson 8
// Классы: Наследование и полиморфизм. Структуры

// Наследование
class Human {
    let name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func walk() {
        print("I can walk")
    }
    
    func sleep() {
        print("I need sleep")
    }
    
    func eat() {
        print("I need food")
    }
}

let personA = Human(name: "Tim Cook", age: 62)
personA.walk()

class Child: Human {
    func nursing() {
        if age <= 5 {
            print("I need care")
        } else {
            print("I can eat independently")
        }
    }
    
    func parenting() {
        if age >= 5 && age <= 13 {
            print("I need an education")
        } else if age < 5 {
            print("Me too early tu aducate")
        } else {
            print("Me too late to educate")
        }
    }
}

let tomas = Child(name: "Tomas", age: 10)
tomas.nursing()
tomas.eat()

final class SchoolChild: Child {
    func schooling() {
        if age >= 6 && age <= 17 {
            print("I have to go to school")
        } else {
            print("I'm still too early in school")
        }
    }
}

let sarah = SchoolChild(name: "Sarah", age: 5)
sarah.schooling()

// Полиморфизм
class Animal {
    var description: String {
        "This is \(type(of: self)). \(type(of: self)) say: \(makeSound())"
    }
    
    func makeSound() -> String {
        ""
    }
}

final class Cat: Animal {
    override func makeSound() -> String {
        "Meow!"
    }
}

final class Dog: Animal {
    override func makeSound() -> String {
        "Woof!"
    }
}

final class Zoo {
    private var animals: [Animal] = []
    
    func add(animal: Animal) {
        animals.append(animal)
    }
    
    func showAnimals() {
        animals.forEach { animal in
            print(animal.description)
        }
    }
}

let zoo = Zoo()
let cat = Cat()
let dog = Dog()

zoo.add(animal: cat)
zoo.add(animal: dog)
zoo.showAnimals()

// Структуры
struct PlayerLocation {
    let player: String
    var x: Int
    var y: Int
    
    func getLocation() {
        print("\(player) is at \(x) and \(y)")
    }
}

var player = PlayerLocation(player: "Player One", x: 10, y: 8)

player.getLocation()
player.x = 5
player.getLocation()

struct Rectangle {
    var width: Int
    var height: Int
    
    var area: Int {
        width * height
    }
    
    mutating func scale(with: Int, height: Int) {
        self.width *= width
        self.height *= height
    }
}

var rectangle = Rectangle(width: 10, height: 5)
rectangle.scale(with: 2, height: 3)
print(rectangle.area)

//
