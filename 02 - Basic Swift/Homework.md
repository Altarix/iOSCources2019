## Домашнее задание

1. Исправьте код, чтобы не было ошибки
```
let optional: Int? = 7
let nonOptional: Int = 7
```
2. Найдите ошибки
```
var name: String? = "Test"
// var age: Int = nil
let distance: Float = 26.7
var middleName: String? = nil
```
3. Полностью разверните number разными способами
```
let number: Int??? = 10

// 1 способ
number!!!

// 2 способ
if let number1 = number {
    if let number2 = number1 {
        if let number3 = number2 {
            number3
        }
    }
    
}
```
4. Замените значение 15 на 17 в массиве
```
 var numbers = [4, 8, 15, 16, 23, 42]

numbers[2] = 17
numbers

```
5. Найдите ошибки
```
let array1 = [Int]()
//let array2 = []
let array3: [String] = []
//
let array4 = [1, 2, 3]
//print(array4[0])
// print(array4[5])
array4[1...2]
// array4[0] = 4
// array4.append(4)
//
var array5 = [1, 2, 3]
array5[0] = array5[1]
array5[0...1] = [4, 5]
// array5[0] = "Six"
// array5 += 6
//for item in array5 { print(item) }
//
//let dict1: [Int, Int] = [:]
// let dict2 = [:]
let dict3: [Int: Int] = [:]
//
let dict4 = ["One": 1, "Two": 2, "Three": 3]
// dict4[1]
dict4["One"]
//dict4["Zero"] = 0
//dict4[0] = "Zero"
//
var dict5 = ["NY": "New York", "CA": "California"]
dict5["NY"]
dict5["WA"] = "Washington"
dict5["CA"] = nil
dict5
```
6. Найдите деревенских, но не домашних животных из данных множеств:
```
 let houseAnimals: Set = ["🐶", "🐱"]
 let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
 let farm = farmAnimals.subtracting(houseAnimals)
```
7. Сделайте из этого словаря новый словарь со средними рейтингами приложений
```
let appRatings = [
    "Calendar Pro": [1, 5, 5, 4, 2, 1, 5, 4],
    "The Messenger": [5, 4, 2, 5, 4, 1, 1, 2],
    "Socialise": [2, 1, 2, 2, 1, 2, 4, 2]
]
var ratings = appRatings.mapValues { Float($0.reduce(0, +)) / Float($0.count)}
for item in ratings {print(item)}
print(ratings)
```
8. Получите строку с названиями приложений из предыдущего задания с рейтингом выше 3
```
var threeupratings = ratings.filter {$1 > 3}
var namethreeratigns = ""
for elements in threeupratings {
    namethreeratigns += elements.key + ", "
}
print(namethreeratigns.dropLast(2))
```

9. Напишите функцию, которая добавляет перед началом переданной строки "Привет, " и выводит результат в консоль
```
func hello (_ str: String) {
    print("Hello \(str)")
}
hello("Name")
```

10. Напишите функцию, которая принимает имя и фамилию в виде параметров и выводит строку приветствия в консоль
```
func helloname (_ name: String, _ surname: String) {
    print("Hello \(name) \(surname)")
}
helloname("Sergey", "Popyvanov")
```

11. Напишите функцию, которая принимает переменное число параметров типа int и возвращает их сумму
```
func sumfunc (_ input: Int...) -> Int {
    var sum = 0
    for item in input {
        sum += item
    }
    return sum
}
print(sumfunc(1, 5, 1, 3, 2))
```

12. Напишите замыкание, которое печатает строку "Привет" и присвойте это замыкание переменной. Вызовите замыкание
```
var helloClosure: () {
    print("hello")
}
helloClosure
```
13. Напишите замыкание, которое принимает 2 числа и возвращает их сумму. Присвойте это замыкание переменной и вызовите его
```
func addTwoNumbers (_ n1: Int, _ n2: Int) -> Int {return n1 + n2}
let addTwoNumberClosure: (Int, Int) -> Int = { (n1, n2) in
    return n1 + n2
}
addTwoNumberClosure(2, 8)
```
14. Отсортируйте массив [16, 8, 15, 42, 4, 23] по убыванию
```
let unsortarr = [16, 8, 15, 42, 4, 23]
let sortarr = unsortarr.sorted(by: >)
```

15. Из массива [16, 8, 15, 42, 4, 23] сделайте новый массив с числами больше 10
```
let moreTenarr = unsortarr.filter {$0 > 10}
moreTenarr
```
16. Напишите функцию, которая принимает замыкание в качестве параметра и вызывает его
```
func takeClosure (closure: () -> Void) {}
takeClosure {
 print("test")
}
```

17. Напишите функцию, которая возвращает замыкание, которое что-то печатает в консоль
```
func somePrint () {
    print("some")
}
somePrint()
```

18. Напшите функцию, которая повтораяет переданное замыкание заданное число раз
```
var incrementClosure: (Int) -> Int = { n in
    return n + 10
}

func repeatClosure (_ n: Int) -> Int {
    guard n >= 0 else {return 10}
    var result = 0
    for _ in 0...n {
    result = incrementClosure(result)
    }
    return result
}
print(repeatClosure(56))
```

19. Уберите утечку памяти
```
class Employee {weak var computer: Computer? }
class Computer { var employee: Employee? }
var employee: Employee? = Employee()
var computer: Computer? = Computer()
employee?.computer = computer
computer?.employee = employee

```
20. Уберите утечку памяти
```
class Counter {
    var value = 0
    lazy var increase = {[unowned self] in
        self.value += 1
    }
}
```

21. Напишите функцию, которая будет принимать строку и возвращать true, если она есть в любом из двух массивое, либо false в противном случае
```
let animals1 = ["dog", "cat", "bird", "pig"]
let animals2 = ["turtle", "snake", "lizard", "shark"]

func containItem (_ s: String, _ arr: [String]) -> Bool {
    for item in arr {
        if s == item {return true}
    }
    return false
}
containItem("dog", animals1)
```
22. Напишите функцию, которая считает факториал
```
func factorial (_ n: Int) -> Int {
    guard n > 0 else {return 1}
    
    return n * factorial(n - 1)
}
factorial(5)
```

23. Напишите функцию, которая будет считать сколько раз в массиве встречается цифра 2
```
func counttwo (_ arr: [Int]) -> Int {
    var count = 0
    for item in 0..<arr.count {
        if arr[item] == 2 {count += 1}
    }
    return count
}
let testmassiv = [1, 2, 5, 5, 2, 8, 2]
counttwo(testmassiv)
```

24. Напишите функцию, которая будет проверять есть ли среди первых 3 элементов массива цифра 2
```
func counttwo3 (_ arr: [Int]) -> Bool {
    for item in 0...2 {
        if arr[item] == 2 {return true}
    }
    return false
}
counttwo3(testmassiv)
```

25. Напишите функцию, которая будет считать количество раз, которое две цифры 5 встречаются рядом в массиве
```
func count5 (_ arr: [Int]) -> Int {
    var count5 = 0
    for item in 0..<arr.count {
        if arr[item] == 5 {count5 += 1}
    }
    return count5
}
count5(testmassiv)
```
