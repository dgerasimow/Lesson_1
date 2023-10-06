# Практики по iOS.

**Прошли темы:**

1. Переменные (`var let`)
2. Опционалы (`Int?`)
3. Циклы и условия (`for if guard`)
4. Типы данных (`Array<Element>, Set<Element> и т.д.`)
5. Функции (`func doSomething()`)
6. Классы, структуры, enum (`class struct enum`)

## Домашка

### Задание 1.
Реализовать структуру, которая будет имплементировать протокол  HomeworkService.

``` swift
protocol HomeworkService {
    // Функция деления с остатком, должна вернуть в первой части результат деления, во второй части остаток.
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int)

    // Функция должна вернуть числа фибоначчи.
    func fibonacci(n: Int) -> [Int]

    // Функция должна выполнить сортировку пузырьком.
    func sort(rawArray: [Int]) -> [Int]

    // Функция должна преобразовать массив строк в массив первых символов строки.
    func firstLetter(strings: [String]) -> [Character]

    // Функция должна отфильтровать массив по условию, которое приходит в параметре `condition`. (Нельзя юзать `filter` у `Array`)
    func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int]
}
```

### Задание 2.
Реализовать ООП модель Национальной библиотеки Республики Татарстан. 

**Требования:**
1. Минимум 5 классов, 3 структуры, 2 протокола, 2 enum. 
2. Из части классов должна выстраиваться иерархия наследования с переопределением методов.
3. Необходимо использовать разные модификаторы доступа.
