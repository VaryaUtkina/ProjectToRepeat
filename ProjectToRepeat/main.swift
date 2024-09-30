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
