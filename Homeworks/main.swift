//
//  main.swift
//  Homeworks
//
//  Created by Aleksei Naumyshev on 07.07.2025.
//

import Foundation

// ДЗ 12

// 1- Создай клоужер, который просто выводит "Hello, Swift!"

let hello = { print("Hello, Swift!") }

hello()

//2-Создай клоужер, который принимает имя и выводит приветствие.

let greet: (String) -> Void = { print("Hello, \($0)!") }

greet("Student")

// 3-Создай клоужер, который принимает два числа и возвращает их сумму.

let add:(Int,Int)->Int = { $0 + $1 }

print(add(2, 3)) // 5

// 4-Создай функцию, которая принимает клоужер(простой, ничего не принимает и не возвращает () -> Void) и вызывает его.

func doSomething (action: () -> Void) {
    action()
}

 doSomething {
     print("Действие выполнено!")
}

// 5-Функция должна принять клоужер, который принимает число и печатает его квадрат.

func printSquare( number: Int, action: (Int) -> Void) {
    action(number)
}

printSquare(number: 5) { print($0 * $0)}

// ДЗ 11

// 1 - Композиция через протоколы
//
// Задание:
// Создай систему плагинов:
// Протокол Plugin с методом execute()
// Класс App, который хранит массив [Plugin]
// Добавь разные плагины (LoggerPlugin, AnalyticsPlugin) и вызови execute() для всех.

//protocol Plugin {
//    func execute()
//}
//
//class App {
//    var plugins: [Plugin] = []
//    
//    func addPlugin(_ plugin: Plugin) {
//        plugins.append(plugin)
//    }
//    
//    func runPlugins() {
//        for plugin in plugins {
//            plugin.execute()
//        }
//    }
//}

//class LoggerPlugin: Plugin {
//    func execute() {
//        print("Logging started")
//    }
//}
//
//class AnalyticsPlugin: Plugin {
//    func execute() {
//        print("Analytics started")
//    }
//}

//let app = App()
//app.addPlugin(LoggerPlugin())
//app.addPlugin(AnalyticsPlugin())
//app.runPlugins()

// 2 - Протокол для тестирования (Dependency Injection)
// Задание:
// Создай протокол NetworkServiceProtocol с методом fetchData() -> String.
// Сделай два класса:
// RealNetworkService
// MockNetworkService
// Используй их в ViewModel, которая не знает, какой именно сервис используется.

//protocol NetworkServiceProtocol {
//    func fetchData() -> String
//}
//
//class RealNetworkService: NetworkServiceProtocol {
//    func fetchData() -> String {
//        return "Real data"
//    }
//}
//
//class MockNetworkService: NetworkServiceProtocol {
//    func fetchData() -> String {
//        return "Mock data"
//    }
//}

//class ViewModel {
//    private let networkService: NetworkServiceProtocol
//    
//    init(networkService: NetworkServiceProtocol) {
//        self.networkService = networkService
//    }
//    
//    func fetchDataAndPrint() {
//        let data = networkService.fetchData()
//        print(data)
//    }
//}
//

// 3 - Наследование протоколов
// Задание:
// Создай Movable с методами moveForward() и moveBackward().
// Создай Flyable, который наследует Movable и добавляет метод fly().
// Реализуй в классе Bird.

//protocol Movable {
//    func moveForward()
//    func moveBackward()
//}
//
//protocol Flyable: Movable {
//    func fly()
//}
//
//class Bird: Flyable {
//    func moveForward() {
//        print("Forward")
//    }
//    func moveBackward() {
//        print("Backward")
//    }
//    func fly() {
//        print("Fly")
//    }
//}


            
//Задание 1. Создайте структуру Student:
//● Структура должна содержать следующие свойства:
//○ name: имя студента (тип String).
//○ grade: оценка студента (тип Int или Double).
//Создайте массив студентов:
//● Создайте массив students, состоящий из нескольких объектов типа
//Student.
//● Заполните массив данными о различных студентах и их оценках.
//Используйте функции высшего порядка:
//● filter:
//○ Примените функцию filter для выбора студентов, у которых
//оценка выше 4.
//○ Результат должен быть массивом студентов, удовлетворяющих
//этому условию.
//● map:
//○ Примените функцию map для преобразования массива
//студентов в массив строк с именами студентов.
//○ Результат должен быть массивом имен всех студентов из
//исходного массива.
//● reduce:
//○ Примените функцию reduce для вычисления средней оценки
//всех студентов.
//○ Результат должен быть числом, представляющим среднюю
//оценку студентов из массива.

//struct Student {
//    let name: String
//    let grade: Double
//}
//
//let students: [Student] = [
//    .init(name: "Александр", grade: 5.0),
//    .init(name: "Иван", grade: 3.0),
//    .init(name: "Петр", grade: 4.5),
//    .init(name: "Максим", grade: 2)
//    ]
//
//let filteredStudents = students.filter { $0.grade > 4 }
//
//let studentsNames = students.map(\.self.name)
//
//let averageGrade = students.reduce(0) { result, student in
//    result + student.grade
//} / Double(students.count)

//Задание 2:
//1. Дан массив строк. Используя функции
//filter и count, подсчитайте, сколько
//слов имеют длину более 4 символов.
//2. Выведите результат.
//Пример:
//let words = ["Swift", "Java",
//"Python", "C", "JavaScript"]
//// Ожидаемый результат:
//3 (слова "Swift", "Python" и
//"JavaScript" имеют длину более 4
//символов)

let words: [String] = ["Swift", "Java",
                       "Python", "C", "JavaScript"]

let countOfLongWords = words.filter( {$0.count > 4})
print(countOfLongWords)

// ДЗ 10

//Задача 1: Создайте протокол Playable: Метод: play(),
//который не принимает параметров и ничего не возвращает.

//protocol Playable {
//    func play()
//}
//
//extension Playable {
//    func tune() {
//       print("Настройка инструмента...")
//    }
//}

//Задача 2: Создайте классы Piano, Guitar и Drum, которые
//соответствуют протоколу Playable: У каждого класса метод
//play() должен выводить, что за инструмент играет (например,
//"Пианино играет мелодию").

//class Piano: Playable {
//    func play() {
//        print("Пианино играет мелодию")
//    }
//}
//
//class Guitar: Playable {
//    func play() {
//        print("Гитара играет мелодию")
//    }
//}
//
//class Drum: Playable {
//    func play() {
//        print("Барабаны играют")
//    }
//}

//Задача 3: Создайте функцию performConcert, которая
//принимает массив объектов, соответствующих Playable, и
//вызывает метод play() для каждого из них.

//func performConcert(_ instruments: [Playable]) {
//    for instrument in instruments {
//        instrument.tune()
//        instrument.play()
//    }
//}

//Задача 4. Создайте расширение для Playable, которое
//добавляет метод tune(), выводящий сообщение "Настройка
//инструмента...", и вызовите его в функциях каждого объекта
//перед play().

//let instrunents: [Playable] = [Piano(), Guitar(), Drum()]
//
//
//performConcert(instrunents)

//Домашнее задание: Создание системы учёта студентов и сотрудников университета
//Вам необходимо разработать программу, которая моделирует работу принтера, способного печатать разными цветами.
//Требования:
//1. Протоколы:
//○ Создайте протокол Ink, который определяет метод print().
//2. Классы чернил:
//○ Реализуйте несколько классов чернил (например, RedInk, BlueInk, GreenInk), каждый из которых соответствует
//протоколу Ink.
//○ В каждом классе реализуйте метод print(), который выводит сообщение о печати с использованием
//соответствующего цвета (можете использовать простые строки для имитации цвета).
//3. Класс принтера:
//○ Создайте класс Printer, который имеет свойство ink типа Ink.
//○ Добавьте метод startPrinting(), который вызывает метод print() у текущего объекта ink.
//4. Демонстрация полиморфизма: В основном блоке кода создайте экземпляр Printer. Последовательно назначайте ему
//различные объекты чернил (RedInk, BlueInk, GreenInk) и вызывайте метод startPrinting(), демонстрируя
//полиморфное поведение.
//5. Используйте перечисления enum для определения доступных цветов.

//protocol Ink {
//    func printColor()
//}
//
//enum ColorInk {
//    case red
//    case blue
//    case green
//}
//
//class RedInk: Ink {
//    func printColor() {
//        print("Печать в красном цвете...")
//    }
//}
//
//class BlueInk: Ink {
//    func printColor() {
//        print("Печать в синем цвете...")
//    }
//}

//class GreenInk: Ink {
//    func printColor() {
//        print("Печать в зеленом цвете...")
//    }
//}
//
//class Printer {
//    var ink: Ink
//    
//    init(ink: Ink) {
//        self.ink = ink
//    }
//    
//    func startPrinting() {
//        ink.printColor()
//    }
//}
//
//var printer = Printer(ink: RedInk())
//printer.startPrinting()
//
//printer = Printer(ink: BlueInk())
//printer.startPrinting()
//
//printer = Printer(ink: GreenInk())
//printer.startPrinting()

// ДЗ 9

//Задача 1: Создайте класс Shape с методом area(), который
//возвращает площадь фигуры.

//class Shape {
//    func area() -> Double {
//        return 0.0
//    }
//}

//Задача 2: Создайте подкласс Rectangle, который наследует
//Shape, и переопределите метод area(), чтобы возвращать
//площадь прямоугольника.

//class Rectangle: Shape {
//    var length: Double
//    var width: Double
//    
//    init(length: Double, width: Double) {
//        self.length = length
//        self.width = width
//    }
//    
//    override func area() -> Double {
//        self.length * self.width
//    }
//}

//Задача 3: Создайте класс Circle, который также наследует
//Shape и реализует метод area() для круга.

//class Circle: Shape {
//    var radius: Double
//    
//    init(radius: Double) {
//        self.radius = radius
//    }
//    
//    override func area() -> Double {
//        .pi * self.radius * self.radius
//    }
//}

// Домашнее задание: Создание системы учёта студентов и сотрудников университета
// Описание задачи:
// 1. Создайте базовый класс Person, который будет представлять общие свойства и методы для людей.
// ○ Свойства:
//  ■ name: String — имя человека.
//  ■ age: Int — возраст человека.
// ○ Инициализатор:
//  ■ Используйте guard для проверки, что имя не пустое, а возраст больше нуля. Если данные некорректные,
// инициализатор должен возвращать nil.
// ○ Метод:
//  ■ describe() — метод, который выводит информацию о человеке.
// 2. Создайте класс Student, который наследует класс Person:
//  ○ Дополнительное свойство:
// ■ studentID: String — идентификатор студента.
//  ○ Инициализатор:
// ■ Помимо проверки имени и возраста, используйте guard для проверки, что studentID не пустой.
//  ○ Переопределённый метод:
// ■ Переопределите метод describe(), чтобы выводить дополнительную информацию о студенте, включая его
// studentID.
// Создайте класс Professor, который также наследует класс Person:
// ○ Дополнительное свойство:
// ■ subject: String — предмет, который преподаёт профессор.
//  ○ Инициализатор:
// ■ Используйте guard, чтобы проверить, что имя не пустое, возраст больше нуля, и предмет также не пустой.
//  ○ Переопределённый метод:
// ■ Переопределите метод describe(), чтобы выводить информацию о профессоре и предмете, который он
// преподаёт.
// Пример использования:
// 1. Создайте несколько объектов классов Student и Professor.
// 2. Выведите информацию о каждом человеке с помощью метода describe().
// Ожидаемое поведение:
//  ● Если данные для создания объекта некорректны (например, возраст меньше 0 или имя пустое), объект не должен
// создаваться (инициализатор должен вернуть nil).
//  ● Если объект успешно создан, метод describe() должен корректно выводить информацию о человеке.

//class Person {
//    var name: String
//    var age: Int
//    
//    init?(name: String, age: Int) {
//        guard !name.isEmpty, age > 0 else {
//            return nil
//        }
//        self.name = name
//        self.age = age
//    }
//    
//    func describe() {
//        print("Имя: \(name), возраст: \(age)")
//    }
//}
//
//class Student: Person {
//    var studentID: String
//    
//    init?(name: String, age: Int, studentID: String) {
//        guard !studentID.isEmpty else {
//            return nil
//        }
//        self.studentID = studentID
//        super.init(name: name, age: age)
//    }
//    
//    override func describe() {
//        print("Студент: \(name), возраст: \(age), ID: \(studentID)")
//    }
//}
//
//class Professor: Person {
//    var subject: String
//    
//    init?(name: String, age: Int, subject: String) {
//        guard !subject.isEmpty else {
//            return nil
//        }
//        self.subject = subject
//        super.init(name: name, age: age)
//    }
//    
//    override func describe() {
//        print("Профессор: \(name), возраст: \(age), преподаёт: \(subject)")
//    }
//}
//
//if let student1 = Student(name: "Алексей", age: 20, studentID: "S123") {
//    student1.describe()
//}
//
//if let student2 = Student(name: "", age: 21, studentID: "S124") {
//    student2.describe()
//} else {
//    print("Ошибка: студент не создан (некорректные данные)")
//}
//
//if let professor1 = Professor(name: "Иван Иванович", age: 45, subject: "Математика") {
//    professor1.describe()
//}

//if let professor2 = Professor(name: "Сергей", age: -5, subject: "Физика") {
//    professor2.describe()
//} else {
//    print("Ошибка: профессор не создан (некорректные данные)")
//}


// ДЗ 7

//1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик
//TrunkCar.
//2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли
//двигатель, открыты ли окна, заполненный объем багажника.
//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить
//двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного
//объема.
//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять
//свойства структуры в зависимости от действия.
//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
//6. Вывести значения свойств экземпляров в консоль.

//struct SportCar {
//    var brand: String
//    var year: Int
//    var trunkVolume: Int
//    var engineIsStarted: Bool
//    var windowsAreOpen: Bool
//    var trunkIsFull: Bool
//    
//    mutating func performAction(_ action: CarAction) {
//        switch action {
//        case .startEngine:
//            engineIsStarted = true
//        case .stopEngine:
//            engineIsStarted = false
//        case .openWindows:
//            windowsAreOpen = true
//        case .closeWindows:
//            windowsAreOpen = false
//        case .load(let volume):
//            trunkIsFull = volume >= trunkVolume
//        case .unload(let volume):
//            trunkIsFull = !trunkIsFull
//        }
//    }
//}

//struct TrunkCar {
//    var brand: String
//    var year: Int
//    var trunkVolume: Int
//    var engineIsStarted: Bool
//    var windowsAreOpen: Bool
//    var trunkIsFull: Bool
//    
//    mutating func performAction(_ action: CarAction) {
//        switch action {
//        case .startEngine:
//            engineIsStarted = true
//        case .stopEngine:
//            engineIsStarted = false
//        case .openWindows:
//            windowsAreOpen = true
//        case .closeWindows:
//            windowsAreOpen = false
//        case .load(let volume):
//            trunkIsFull = volume >= trunkVolume
//        case .unload(let volume):
//            trunkIsFull = !trunkIsFull
//        }
//    }
//}

//enum CarAction {
//    case startEngine
//    case stopEngine
//    case openWindows
//    case closeWindows
//    case load(Int)
//    case unload(Int)
//}

//var myCar = TrunkCar(brand: "Toyota", year: 2010, trunkVolume: 1500, engineIsStarted: false, windowsAreOpen: false, trunkIsFull: false)
//
//myCar.performAction(.startEngine)
//myCar.performAction(.load(1000))
//myCar.performAction(.load(500))
//myCar.performAction(.unload( 800))
//
//var yourCar = SportCar(brand: "Tesla", year: 2020, trunkVolume: 2000, engineIsStarted: false, windowsAreOpen: false, trunkIsFull: false)
//
//yourCar.performAction(.startEngine)
//yourCar.performAction(.load(1000))
//yourCar.performAction(.load(500))
//yourCar.performAction(.unload( 800))


// ДЗ 6

//Задача 1: Создайте перечисление для представления четырёх
//сторон света (north, south, east, west). Реализуйте метод,
//который для каждого направления выводит соответствующее
//описание (например, "Север — холод и снег").

//enum CompassDirection {
//    case north
//    case south
//    case east
//    case west
//    
//    func description() -> String {
//        switch self {
//        case .north:
//            return "Север — холод и снег"
//        case .south:
//            return "Юг — легкий ветер и солнечный день"
//        case .east:
//            return "Восток — большой океан и природа"
//        case .west:
//            return "Запад — тихие улицы и маленькие домы"
//        }
//    }
//}

//Задача 2: Реализуйте перечисление для статусов заказа
//(ordered, shipped, delivered, cancelled) и напишите
//функцию, которая выводит текущее состояние заказа.

//enum OrderStatus {
//    case ordered
//    case shipped
//    case delivered
//    case cancelled
//    
//    func currentStatus() -> String {
//        switch self {
//        case .ordered:
//            return "Заказ оформлен"
//        case .shipped:
//            return "Заказ отправлен"
//        case .delivered:
//            return "Заказ доставлен"
//        case .cancelled:
//            return "Заказ отменен"
//        }
//    }
//}

//Задача 3: Создайте перечисление для различных типов
//социальных сетей (facebook, twitter, instagram) и функцию,
//которая выводит популярный хэштег для каждой сети.

//enum SocialNetwork {
//    case facebook
//    case twitter
//    case instagram
//    
//    func popularHashtag() -> String {
//        switch self {
//        case .facebook:
//            return "#fb"
//        case .twitter:
//            return "#twitter"
//        case .instagram:
//            return "#instagram"
//        }
//    }
//}

//Задача 4: Создайте перечисление Grade, которое описывает
//оценки студента: excellent, good, satisfactory,
//unsatisfactory. Напишите функцию, которая принимает
//оценку и выводит сообщение:
//● excellent: "Отлично! Ты молодец!"
//● good: "Хорошо! Можешь лучше."
//● satisfactory: "Удовлетворительно. Стоит подтянуть
//знания."
//● unsatisfactory: "Неудовлетворительно. Нужно больше
//учиться."

//enum Grade {
//    case excellent
//    case good
//    case satisfactory
//    case unsatisfactory
//}
//
//func evaluate(grade: Grade) {
//    switch grade {
//    case .excellent:
//        print("Отлично! Ты молодец!")
//    case .good:
//        print("Хорошо! Можешь лучше.")
//    case .satisfactory:
//        print("Удовлетворительно. Стоит подтянуть знания.")
//    case .unsatisfactory:
//        print("Неудовлетворительно. Нужно больше учиться.")
//    }
//}

//Задача 1: Создайте перечисление Season, которое описывает
//времена года: winter, spring, summer, autumn. Напишите
//функцию, которая принимает время года и выводит
//соответствующее описание:
//● winter: "Зима — холодное время года, часто идёт снег."
//● spring: "Весна — пробуждение природы, цветут цветы."
//● summer: "Лето — жаркое время года, можно купаться."
//● autumn: "Осень — время сбора урожая и опадающих
//листьев."

//enum Season {
//    case winter
//    case spring
//    case summer
//    case autumn
//    
//    func description() -> String {
//        switch self {
//        case .winter:
//            return "Зима — холодное время года, часто идёт снег."
//        case .spring:
//            return "Весна — пробуждение природы, цветут цветы."
//        case .summer:
//            return "Лето — жаркое время года, можно купаться."
//        case .autumn:
//            return "Осень — время сбора урожая и опадающих листьев."
//        }
//    }
//}

//Задача 2: Создайте перечисление DeviceState, которое
//описывает состояния устройства: on, off, sleep. Напишите
//функцию, которая принимает текущее состояние устройства и
//выводит сообщение:
//● on: "Устройство включено."
//● off: "Устройство выключено."
//● sleep: "Устройство находится в режиме сна."

//enum DeviceState {
//    case on
//    case off
//    case sleep
//    
//    func description() -> String {
//        switch self {
//        case .on:
//            return "Устройство включено."
//        case .off:
//            return "Устройство выключено."
//        case .sleep:
//            return "Устройство находится в режиме сна."
//        }
//    }
//}


// ДЗ 5

//Задача 1: Написать программу, которая с помощью
//switch-case определяет тип числа (положительное,
//отрицательное, ноль).

//print("Введите число:")
//if let input = readLine(), let number = Int(input) {
//    switch number {
//    case _ where number > 0:
//        print("Число положительное")
//    case 0:
//        print("Число равно нулю")
//    default:
//        print("Число отрицательное")
//    }
//} else {
//    print("Некорректный ввод")
//}

//Задача 2: Создайте простую программу-калькулятор, которая
//запрашивает у пользователя два числа и операцию (сложение,
//вычитание, умножение, деление). Используйте switch-case для
//выполнения соответствующей операции.

//print("Введите первое число:")
//if let input1 = readLine(), let number1 = Double(input1) {
//
//    print("Введите второе число:")
//    if let input2 = readLine(), let number2 = Double(input2) {
//
//        print("Введите операцию (+, -, *, /):")
//        if let operation = readLine() {
//
//            var result: Double?
//
//            switch operation {
//            case "+":
//                result = number1 + number2
//            case "-":
//                result = number1 - number2
//            case "*":
//                result = number1 * number2
//            case "/":
//                if number2 != 0 {
//                    result = number1 / number2
//                } else {
//                    print("Ошибка: деление на ноль")
//                }
//            default:
//                print("Ошибка: неизвестная операция")
//            }
//
//            if let res = result {
//                print("Результат: \(res)")
//            }
//
//        } else {
//            print("Ошибка при вводе операции.")
//        }
//
//    } else {
//        print("Ошибка при вводе второго числа.")
//    }
//
//} else {
//    print("Ошибка при вводе первого числа.")
//}


//Задача 3: Напишите программу, которая определяет уровень
//доступа пользователя на основе его роли. Роль вводится в виде
//строки и может принимать значения: admin, user, guest.
//Пример: Введите роль пользователя: admin
//Результат: Полный доступ

//print("Введите роль пользователя:")
//if let input = readLine() {
//    switch input {
//    case "admin":
//        print("Полный доступ")
//    case "user":
//        print("Доступ к части работы")
//    case "guest":
//        print("Ограниченный доступ")
//    default:
//        print("Неизвестная роль")
//    }
//}

//Задача 1: Создайте перечисление TrafficLight, которое
//описывает состояния светофора: red, yellow, green. Напишите
//функцию, которая принимает состояние светофора и выводит
//соответствующее действие:
//Если red, то вывести "Стоп".
//Если yellow, то вывести "Приготовьтесь".
//Если green, то вывести "Можно идти".

//enum TrafficLight {
//    case red
//    case yellow
//    case green
//}
//
//func trafficAction(for light: TrafficLight) {
//    switch light {
//    case .red:
//        print("Стоп")
//    case .yellow:
//        print("Приготовьтесь")
//    case .green:
//        print("Можно идти")
//    }
//}

//Задача 2: Создайте перечисление Weekday, которое описывает дни
//недели: monday, tuesday, wednesday, thursday, friday,
//saturday, sunday. Напишите функцию, которая принимает день
//недели и выводит, является ли этот день рабочим или выходным.

//enum Weekday {
//    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
//}
//
//func checkDay(for day: Weekday) {
//    switch day {
//    case .monday, .tuesday, .wednesday, .thursday, .friday:
//        print("Это рабочий день.")
//    case .saturday, .sunday:
//        print("Это выходной день.")
//    }
//}

//Создайте перечисление CompassDirection, которое
//описывает направления компаса: north, south, east, west.
//Напишите программу, которая принимает направление и выводит
//его описание: Если north, вывести "Север — холод и снег".
//Если south, вывести "Юг — тепло и солнце".
//Если east, вывести "Восток — рассвет и новая жизнь".
//Если west, вывести "Запад — закат и отдых".

//enum CompassDirection {
//    case north, south, east, west
//}
//
//func describeDirection(_ direction: CompassDirection) {
//    switch direction {
//    case .north:
//        print("Север — холод и снег")
//    case .south:
//        print("Юг — тепло и солнце")
//    case .east:
//        print("Восток — рассвет и новая жизнь")
//    case .west:
//        print("Запад — закат и отдых")
//    }
//}

// ДЗ 4

// Задача 1: Вывод чисел от 1 до 10
// Напишите программу, которая с
// использованием цикла for выведет на экран
// числа от 1 до 10.

//for i in 1...10 {
//    print(i)
//}

// Задача 2: Подсчёт суммы чисел от 1 до n
// Напишите программу, которая запрашивает у
// пользователя целое число n и с помощью цикла
// for вычисляет сумму всех чисел от 1 до n

//print("Введите целое число n:")
//
//if let input = readLine(), let n = Int(input) {
//    var sum = 0
//    for i in 1...n {
//        sum += i
//    }
//    print("Сумма чисел от 1 до \(n) : \(sum)")
//} else {
//    print("Некорректный ввод.")
//}

// Задача 3: Вывод чётных чисел
// Напишите программу, которая с помощью цикла
// for выведет на экран все чётные числа в
// диапазоне от 1 до 20

//for i in 1...20 {
//    if i % 2 == 0 {
//        print(i)
//    }
//}

// Задача 1: Вывод значений словаря
// Создайте словарь, где ключами будут имена студентов, а
// значениями — их оценки за экзамен. С помощью цикла for
// выведите имена студентов и их оценки.

//var students: [String: Int] = [
//    "Александр": 4,
//    "Иван": 5,
//    "Максим": 5,
//    "Сергей": 4
//]
//
//for student in students {
//    print(student.key + ": " + String(student.value))
//}

//  Задача 2: Подсчёт общего количества товаров
//  Напишите программу, которая хранит в словаре товары и их
//  количество на складе. Программа должна подсчитать общее
//  количество всех товаров. Например:
//  Общее количество товаров: 100

//var products: [String: Int] = [
//    "Апельсины": 100,
//    "Яблоки": 50,
//    "Бананы": 75,
//    "Макароны": 200
//]
//
//var commonProducts: Int = 0
//
//for product in products {
//    commonProducts += product.value
//}
//
//print("Общее количество товаров: \(commonProducts)")


//Задача 3: Поиск по ключу
//Создайте словарь, где ключами будут города, а значениями — их
//население. Напишите программу, которая будет запрашивать у
//пользователя название города и выводить его население. Если
//город не найден, программа должна вывести сообщение "Город не
//найден". Пример вывода:
//Введите название города: Москва
//Население Москвы: 12600000

//var cities: [String: Int] = [
//    "Москва": 12600000,
//    "Санкт-Петербург": 5300000,
//    "Екатеринбург": 5100000,
//    "Новосибирск": 1500000,
//    "Омск": 1700000
//]
//
//print("Введите название города:")
//if let input = readLine() {
//    if let population = cities[input] {
//        print("Население \(input): \(population)")
//    } else {
//        print("Город не найден")
//    }
//} else {
//    print("Некорректный ввод")
//}

//Задание: Соревнования команд
//Описание задачи:
//Представьте, что вы организуете соревнования, в которых участвуют несколько команд. Каждая команда состоит из участников, и
//каждый участник должен выполнить несколько заданий. Ваша задача — написать программу на Swift, которая будет выводить
//результаты выполнения заданий для каждого участника каждой команды.
//Требования:
//1. Создайте две команды с участниками. Каждая команда должна иметь как минимум двух участников.
//2. Для каждого участника должно быть несколько (минимум 3) заданий, результаты которых выражены в виде чисел (баллов).
//Значения баллов могут быть от 0 до 100.
//3. Напишите метод isTaskCompleted, который будет проверять, выполнено ли задание. Задание считается выполненным, если
//результат (балл) больше или равен 70.
//4. Напишите метод evaluateParticipant, который будет принимать имя участника и массив с результатами его заданий. Внутри
//этого метода вы должны вывести результаты каждого задания, указывая, выполнено оно или нет, используя метод
//isTaskCompleted.
//5. В основной части программы создайте цикл, который будет:
//○ Перебирать команды.
//○ Для каждой команды перебирать её участников.
//○ Для каждого участника вызывать метод evaluateParticipant для оценки его заданий.
//6. Для каждой команды выводите её название и результаты всех участников.
//Условия: Программа должна быть хорошо структурирована, с использованием методов для обработки участников и их заданий.
//● Каждое задание для участника должно оцениваться отдельно, с выводом: выполнено оно успешно или нет.

//func isTaskCompleted(score: Int) -> Bool {
//    return score >= 70
//}
//
//func evaluateMember(name: String, scores: [Int]) {
//    print("  Участник: \(name)")
//    
//    var taskNumber = 1
//    for score in scores {
//        if isTaskCompleted(score: score) {
//            print("    Задание \(taskNumber): \(score) баллов — выполнено")
//        } else {
//            print("    Задание \(taskNumber): \(score) баллов — не выполнено")
//        }
//        taskNumber += 1
//    }
//}
//
//let team1 = [
//    "Иван": [80, 65, 90],
//    "Ольга": [72, 68, 75]
//]
//
//let team2 = [
//    "Олег": [60, 55, 95],
//    "Вера": [85, 100, 92]
//]
//
//let allTeams = [
//    "Команда 1": team1,
//    "Команда 2": team2
//]
//
//for team in allTeams {
//    print("\nКоманда: \(team.key)")
//    
//    for memder in team.value {
//        evaluateMember(name: memder.key, scores: memder.value)
//    }
//}
//
//
//

//// ДЗ 3
//
//// Задача 1: Написать функцию, которая просит пользователя ввести 5 имен и сохраняет их в пустой массив.
//
//func setNames(){
//    var names : [String] = []
//    for i in 1...5 {
//        let name: String? = readLine()
//            names.append(name ?? "")
//        
//    }
//    print(names)
//}
//setNames()
//
//// Задача 2: Напишите функцию getElement, которая принимает массив целых чисел типа [Int] и индекс index типа Int, и
//// возвращает элемент массива по этому индексу.
//
//func getElement(from array: [Int], at index: Int) -> Int? {
//    if index >= 0 && index < array.count {
//        return array[index]
//    } else {
//        return nil
//    }
//}
//
//if let element = getElement(from: [5, 4, 21], at: 1){
//    print(element)
//} else {
//    print("некорректный индекс")
//}
//
//// Задача 3: Напишите функцию swapElements, которая
//// принимает массив целых чисел типа [Int], два индекса index1
//// и index2 типа Int, и возвращает новый массив, в котором
//// значения элементов по этим индексам поменяны местами.
//
//func swapElements(array: [Int], index1: Int, index2: Int) -> [Int?]{
//    if index1 == index2{
//        return array
//    }
//    if (index1 <= 0 && index1 > array.count) || (index2 <= 0 && index2 > array.count) {
//        print("Error index")
//        return [nil]
//        }
//    var newArray = array
//    newArray[index1] = array[index2]
//    newArray[index2] = array[index1]
//    return newArray
//}
//
//print(swapElements(array: [1, 2, 3, 4], index1: 1, index2: 3))
//
////  Задача 1: Создайте функцию combineArrays, которая принимает
////  два массива строк и возвращает новый массив, состоящий из
////  элементов обоих массивов.
//
//func combineArrays(_ array1: [String], _ array2: [String]) -> [String] {
//    return array1 + array2
//}
//
//let first = ["apple", "banana"]
//let second = ["coffee", "milk"]
//print(combineArrays(first, second))
//
////  Задача 2: Создайте функцию areArraysEqual, которая принимает
////  два массива целых чисел [Int] и возвращает true, если массивы
////  идентичны (имеют одинаковые элементы в том же порядке), и
////  false в противном случае.
//
//func areArraysEqual(_ array1: [Int], _ array2: [Int]) -> Bool {
//    return array1 == array2
//}
//
////  Напишите функцию removeLastElement, которая
////  принимает массив строк [String] и возвращает новый массив без
////  первого и последнего элемента исходного массива
//
//func removeLastElement(from array: [String]) -> [String] {
//    var newArray = array
//    if array.count <= 2 {
//        return []
//    } else {
//        
//        newArray.removeFirst()
//        newArray.removeLast()
//        }
//    return newArray
//}
//
//let names = ["Alice", "Bob", "Charlie", "Diana"]
//print(removeLastElement(from: names))

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
