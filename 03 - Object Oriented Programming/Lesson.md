## План занятия

* Типы данных
    - Структуры и классы
        - Инициализация
        - Деинициализация
        - Сходства и различия
        - Методы
        - Свойства
* Value type / reference type
* ООП
    - Наследование
    - Инкапсуляция
    - Полиморфизм
    - SOLID, DRY, KISS, YAGNI
* Протоколы
* Расширения
* Сабскрипты
* Перечисления
    - Ассоциативные значения
    - Исходные значения
    - Хранимые значения

## Домашнее задание

* Прочитать дополнительную информацию по ООП для закрепления
* Реализовать подсчет определителя матрицы N x N. Алгоритм по созданию матрицы и подсчету определителя обернуть в class, struct или enum, соответствующий протоколу MatrixTestable:

```swift

protocol MatrixTestable {
        
    // Constructor
    // dimension: Matrix size
    // elementConstructor: Closure with input element row and column, which return the element Int value.
    init(dimension: Int, elementConstructor: ((_ column: Int, _ row: Int) -> Int))

    // Determinant calculating function
    func determinant() -> Int
}


```
Конструктор должен получать на вход размерность матрицы, и замыкание преобразующее координаты элемента в значение. Например, номер колонки умноженный на два минус номер строки.

* Реализовать перечисление кодов состояния http (10 любых) с исходным значением кода ошибки и хранимым значением описания ошибки
* Реализовать в программе логику проведения футбольного (или любого другого) турнира в соответствии со следующими требованиями:
    - Генерируются 12 случайных команд. Команда имеет название и позицию в рейтинге.
    - Программа генерирует расписание турнира так, чтобы каждая команда сыграла со всеми другими дважды. Расписание представляет собой список строк, вида "(команда 1) vs. (команда 2): (очки первой команды)-(очки второй команды). День: (номер дня)."
    - Расписание должно соответствовать следующим требованиям:
        - в один день не может быть более двух матчей;
        - одна и та же команда не может играть два дня подряд;
        - результаты матчей определяются случайно (очки команды в диапазоне [0, 7]). 
    - Должна быть возможность запросить рейтинговую таблицу команд на любой из матчевых дней, вывести расписание всех сыгранных матчей вплоть до определенного дня
    - Программа должна отдельно выводить тройку призеров и их счет на последний день турнира. Если на момент окончания турнира на первых местах команды с одинаковым числом очков, то их порядок определяется по алфавиту (по названию команды).

## Материалы лекции

* [Классы и структуры](https://swiftbook.ru/content/languageguide/classes-and-structures/)
* [Свойства](https://swiftbook.ru/content/languageguide/properties/)
* [Методы](https://swiftbook.ru/content/languageguide/methods/)
* [Сабскрипты](https://swiftbook.ru/content/languageguide/subscripts/)
* [Наследование](https://swiftbook.ru/content/languageguide/inheritance/)
* [Инкапсуляция](https://swiftbook.ru/content/languageguide/access-control/)
* [Инициализация](https://swiftbook.ru/content/languageguide/initialization/)
* [Деинициализация](https://swiftbook.ru/content/languageguide/deinitialization/)
* [Расширения](https://swiftbook.ru/content/languageguide/extensions/)
* [Протоколы](https://swiftbook.ru/content/languageguide/protocols/)
* [Перечисления](https://swiftbook.ru/content/languageguide/enumerations/)
* [DRY, KISS, YAGNI](https://www.youtube.com/watch?v=dz6ZsIcxoo0)
* [SOLID](https://medium.com/webbdev/solid-4ffc018077da)
