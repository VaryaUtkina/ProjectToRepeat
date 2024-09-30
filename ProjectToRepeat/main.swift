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

