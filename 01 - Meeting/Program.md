## План занятия

* Типы данных
    - Структура
        - String (Character), Int (UInt), Float, Double, Array, Set, Dictionary, Bool
    - Класс 
    - Enum
        - Опционалы
    - Tuple
    - Функции (Замыкания)
    - Протокол
* Управление потоком
    - Циклы
        - For in
        - While
        - While repeat
    - Условные инструкции
        - If
        - Switch case
    - Операторы управления
        - Return
        - Break
        - Fallthrough
        - Continue
        - Throw

## Решения тестовых задач

```swift

import UIKit

//MARK: - TASK 1

func printSortSquareArray(_ array: [Int]) {
    print(array.map { return $0 * $0 }.sorted(by: >))
}

//MARK: - TASK 2

func reverseNumber(_ value: Double) -> Double {
    let str = remainder(value, trunc(value)) == 0 ? String(Int(abs(value))) : String(abs(value))
    let result = String(str.reversed())
    return Double(value < 0 ? "-" + result : result) ?? 0.0
}

//MARK: - TASK 3

func bugFeatureChallenge(for value: Int) {
    guard value > 0 else { print("Error!", []) ; return }
    var storage = [String]()
    for count in 1...value {
        if count % 3 == 0 && count % 5 == 0 {
            storage.append("crutch")
        } else {
            if count % 3 == 0 {
                storage.append("bug")
            } else if count % 5 == 0 {
                storage.append("feature")
            } else {
                storage.append("\(count)")
            }
        }
    }
    print(storage)
}

//MARK: - TASK 4

func fileNameFrom(path: String) -> String {
    return NSString(string: NSString(string: path).deletingPathExtension).lastPathComponent
}

//MARK: - TASK 5

func printSpiralMatrixWithSize(size: Int) {
    
    guard size > 0 else { print("Error!", []); return }
    
    var randomArray = [Int]()
    
    for _ in 0..<size*size {
        randomArray.append(Int.random(in: 0...9))
    }
    
    randomArray.sort()

    var result: [[Int?]] = Array(repeating: Array(repeating: nil, count: size), count: size)
    
    var cursorI = 0
    var cursorJ = 0
    var deltaI = 0
    var deltaJ = 1
    
    for number in 1...size * size {
        result[cursorI][cursorJ] = randomArray[number - 1]
        
        let nextI = cursorI + deltaI
        let nextJ = cursorJ + deltaJ
        
        let nextValueIsEmpty = (0..<size ~= nextI) && (0..<size ~= nextJ) && (result[nextI][nextJ] == nil)
        
        if !nextValueIsEmpty {
            if deltaJ == 1 { deltaI = 1; deltaJ = 0; }
            else if deltaI == 1 { deltaI = 0; deltaJ = -1; }
            else if deltaJ == -1 { deltaI = -1; deltaJ = 0; }
            else if deltaI == -1 { deltaI = 0; deltaJ = 1; }
        }
        cursorI += deltaI
        cursorJ += deltaJ
    }
    
    let resultForPrint = result.map { $0.map({ $0 ?? 0 }) }
    
    for row in resultForPrint {
        print(row)
    }
}

```
## Домашнее задание

* Создать Apple ID
* Установить образ MacOs Mojave (в худшем случае High Sierra)
* Установить Xcode последней для MacOS версии
* Попробовать сделать тестовое задание на курсы в Playground
* Создать GitHub аккаунт
* Прочитать SwiftBook до конца(!)

## Материалы лекции

* [Официальный сайт языка Swift](https://swift.org)
* [Сайт Swiftbook](https://swiftbook.ru)
* [Создать Apple ID](https://appleid.apple.com/)
* [Установка MacOS на виртуальную машину](https://brofox86.github.io/macos-plus/ustanovka-macos-na-virtualnuyu-mashinu.html)
