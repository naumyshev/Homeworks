//
//  main.swift
//  Homeworks
//
//  Created by Aleksei Naumyshev on 07.07.2025.
//

import Foundation

// Конкатинация:

// Задание 1:

let firstName = "Aleksei"
let lastName = "Naumyshev"
let fullName = firstName + " " + lastName
print(fullName)

// Задание 2:

let age = 46
var message = "Меня зовут " + firstName + ", и мне " + String(age) + " лет."
print(message)

// Задание 3:

let numder1 = 5
let number2 = 7

print("Сумма чисел " + String(numder1) + " и " + String(number2) + " равна " + String(numder1 + number2) + ".")

// Интерполяция строк

// Задание 1:

message = "Меня зовут \(firstName), и мне \(age) лет."
print(message)

// Задание 2:

let weight = 78.0
let height = 1.73
print("Ваш ИМТ равен \(weight / (height * height)).")

// Задание 3:

let productName = "Coffee"
let price = 15
let quantity = 2
print("Вы добавили в корзину \(quantity) шт. товара '\(productName)', стоимость которого равна \(price) на сумму \(price * quantity) руб.")

// Основные типы данных:

// Задание 1:

let numderInt16: Int16 = -32768
let numberUnInt8: UInt8 = 200
let Pi: Double = 3.1415926535
let isDone: Bool = false
let greeting: String = "Hello, world!"

// Задание 2:

let number: Int = 42
print(number * number)

// Задание 3:

var number3 = 5
var isEven = number3 % 2 == 0

// Переменные и константы:

// Задание 1:

var temperature = 12
temperature = 18

// Задание 2:

let  birthYear = 1979
//birthYear = 1980

// Задание 3:

var  count = 10
//count = "Hi!"

// Логические значения и условные операторы

// Задание 1:

var testNumber = 5
if testNumber > 0 {
    print("\(testNumber) is positive")
} else if testNumber < 0 {
    print("\(testNumber) is negative")
} else {
    print("\(testNumber) is zero")
}

// Задание 2:

let userAge = 18
if userAge >= 18 {
    print( "Доступ разрешен.")
} else {
    print("Доступ запрещен.")
}
