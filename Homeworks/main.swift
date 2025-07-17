//
//  main.swift
//  Homeworks
//
//  Created by Aleksei Naumyshev on 07.07.2025.
//

import Foundation

// ДЗ 3

// Задача 1: Написать функцию, которая просит пользователя ввести 5 имен и сохраняет их в пустой массив.

func setNames(){
    var names : [String] = []
    for i in 1...5 {
        let name: String? = readLine()
            names.append(name ?? "")
        
    }
    print(names)
}
setNames()

// Задача 2: Напишите функцию getElement, которая принимает массив целых чисел типа [Int] и индекс index типа Int, и
// возвращает элемент массива по этому индексу.

func getElement(from array: [Int], at index: Int) -> Int? {
    if index >= 0 && index < array.count {
        return array[index]
    } else {
        return nil
    }
}

if let element = getElement(from: [5, 4, 21], at: 1){
    print(element)
} else {
    print("некорректный индекс")
}

// Задача 3: Напишите функцию swapElements, которая
// принимает массив целых чисел типа [Int], два индекса index1
// и index2 типа Int, и возвращает новый массив, в котором
// значения элементов по этим индексам поменяны местами.

func swapElements(array: [Int], index1: Int, index2: Int) -> [Int?]{
    if index1 == index2{
        return array
    }
    if (index1 <= 0 && index1 > array.count) || (index2 <= 0 && index2 > array.count) {
        print("Error index")
        return [nil]
        }
    var newArray = array
    newArray[index1] = array[index2]
    newArray[index2] = array[index1]
    return newArray
}

print(swapElements(array: [1, 2, 3, 4], index1: 1, index2: 3))

//  Задача 1: Создайте функцию combineArrays, которая принимает
//  два массива строк и возвращает новый массив, состоящий из
//  элементов обоих массивов.

func combineArrays(_ array1: [String], _ array2: [String]) -> [String] {
    return array1 + array2
}

let first = ["apple", "banana"]
let second = ["coffee", "milk"]
print(combineArrays(first, second))

//  Задача 2: Создайте функцию areArraysEqual, которая принимает
//  два массива целых чисел [Int] и возвращает true, если массивы
//  идентичны (имеют одинаковые элементы в том же порядке), и
//  false в противном случае.

func areArraysEqual(_ array1: [Int], _ array2: [Int]) -> Bool {
    return array1 == array2
}

//  Напишите функцию removeLastElement, которая
//  принимает массив строк [String] и возвращает новый массив без
//  первого и последнего элемента исходного массива

func removeLastElement(from array: [String]) -> [String] {
    var newArray = array
    if array.count <= 2 {
        return []
    } else {
        
        newArray.removeFirst()
        newArray.removeLast()
        }
    return newArray
}

let names = ["Alice", "Bob", "Charlie", "Diana"]
print(removeLastElement(from: names))

// ДЗ 2
//
// Логические значения и условные операторы
//
// Задание 1:

//var testNumber = 0
//if testNumber > 0 {
//    print("\(testNumber) is positive")
//} else if testNumber < 0 {
//    print("\(testNumber) is negative")
//} else {
//    print("\(testNumber) is zero")
//}
//
//// Задание 2:
//
//let userAge = 18
//if userAge >= 18 {
//    print( "Доступ разрешен.")
//} else {
//    print("Доступ запрещен.")
//}
//
//// Задание 3:
//
//var number = 6
//if number % 2 == 0 {
//    print("Число \(number) чётное")
//} else {
//    print("Число \(number) нечётное")
//}
//
//// Задание 4:
//
//let login = "admin"
//let pass = "12345"
//
//if login == "admin" && pass == "1234" {
//        print( "Доступ разрешен.")
//    } else {
//        print("Доступ запрещен.")
//    }
//
//// Опционалы
//
//// Задание 1:
//
//var optionalName: String? = "Алексей"
////optionalName = nil
//print("Здравствуйте, \(optionalName!)!")
//
//// Задание 2:
//
//var optionalNumber: Int? = 10 // nil
//number = optionalNumber ?? 0
//print(number)
//
//// Задание 3:
//
//let age = 20
//let minAge = 18
//let testPassed = true
//
//let canObtainLicense = age >= minAge && testPassed
//
//print("Может получить права: \(canObtainLicense)")
//
//
//// Конкатинация:
//
//// Задание 1:
//
//let firstName = "Aleksei"
//let lastName = "Naumyshev"
//let fullName = firstName + " " + lastName
//print(fullName)
//
//// Задание 2:
//
//let age = 46
//var message = "Меня зовут " + firstName + ", и мне " + String(age) + " лет."
//print(message)
//
//// Задание 3:
//
//let numder1 = 5
//let number2 = 7
//
//print("Сумма чисел " + String(numder1) + " и " + String(number2) + " равна " + String(numder1 + number2) + ".")
//
//// Интерполяция строк
//
//// Задание 1:
//
//message = "Меня зовут \(firstName), и мне \(age) лет."
//print(message)
//
//// Задание 2:
//
//let weight = 78.0
//let height = 1.73
//print("Ваш ИМТ равен \(weight / (height * height)).")
//
//// Задание 3:
//
//let productName = "Coffee"
//let price = 15
//let quantity = 2
//print("Вы добавили в корзину \(quantity) шт. товара '\(productName)', стоимость которого равна \(price) на сумму \(price * quantity) руб.")
//
//// Основные типы данных:
//
//// Задание 1:
//
//let numderInt16: Int16 = -32768
//let numberUnInt8: UInt8 = 200
//let Pi: Double = 3.1415926535
//let isDone: Bool = false
//let greeting: String = "Hello, world!"
//
//// Задание 2:
//
//let number: Int = 42
//print(number * number)
//
//// Задание 3:
//
//var number3 = 5
//var isEven = number3 % 2 == 0
//
//// Переменные и константы:
//
//// Задание 1:
//
//var temperature = 12
//temperature = 18
//
//// Задание 2:
//
//let  birthYear = 1979
////birthYear = 1980
//
//// Задание 3:
//
//var  count = 10
////count = "Hi!"
//
//// Логические значения и условные операторы
//
//// Задание 1:
//
//var testNumber = 5
//if testNumber > 0 {
//    print("\(testNumber) is positive")
//} else if testNumber < 0 {
//    print("\(testNumber) is negative")
//} else {
//    print("\(testNumber) is zero")
//}
//
//// Задание 2:
//
//let userAge = 18
//if userAge >= 18 {
//    print( "Доступ разрешен.")
//} else {
//    print("Доступ запрещен.")
//}
