import UIKit

//1.Поиграть с константами, переменными разных типов. Создать несколько и сделать красивый вывод в консоль (с пояснениями, конкатенацией через строки). Изучить разные типы данных, вывести диапазоны (максимальную и минимальную границу) разных типов.

var str = "Hello"
let constanta = "I am cat"

print("Переменная: \(str)")
print("Константа: \(constanta)")

print("Int max:\(Int.min) max:\(Int.max)")
print("Int8 max:\(Int8.min) max:\(Int8.max)")
print("Int16 max:\(Int16.min) max:\(Int16.max)")
print("Int32 max:\(Int32.min) max:\(Int32.max)")
print("Int64 max:\(Int64.min) max:\(Int64.max)")

print("Unsigned Int max:\(UInt.min) max:\(UInt.max)")
print("Unsigned Int8 max:\(UInt8.min) max:\(UInt8.max)")
print("Unsigned Int16 max:\(UInt16.min) max:\(UInt16.max)")
print("Unsigned Int32 max:\(UInt32.min) max:\(UInt32.max)")
print("Unsigned Int64 max:\(UInt64.min) max:\(UInt64.max)")

//2. Создать три переменные типа Int, Double, String. Произвести с ними арифметические операции.
var int:Int = 12
var double:Double = 1.1236544444
var string:String = "Miu Miu "

int = int % 7
int += 11

double -= 0.24588

string += "OY OY"

//3. Создать опциональный кортеж (Int, Double, String)? и (Int?, Double?, String?). Попробовать вывести значения, разобраться, в чем разница.

var tuple1: (Int, Double, String)? = (47, 12.256, "dvdv")

var tuple2: (Int?, Double?, String?) = (nil, 12.256, "sss")

tuple1?.1 = 11
tuple1!.1 = 11.2564
//tuple1!.0 = nil нельзя

tuple2.0 = 11
tuple2.1 = 15.265

//4. Произвести арифметические и битовые операции с кортежами из предыдущего задания. Задать несколько значений в nil. Использовать несколько видов развертывания опционалов.

tuple1!.0 = tuple1!.0 % 7
tuple1!.1 += 77.2164

tuple2.2! += " ss"

//"force unwrapping"
if tuple1?.0 != nil{
    print("not nil")
}
if tuple1?.2 != nil{
    print("not nil")
}

if tuple2.0 != nil{
    print("not nil")
    tuple2.0! /= 5
}
if tuple2.1 != nil{
    print("not nil")
}

//"optional binding".
tuple2.2 = nil

if let opt = tuple1?.1 {
    print("opt is \(opt)")
} else {
    print("opt is nill")
}

if let opt = tuple2.2 {
    print("opt is \(opt)")
} else {
    print("opt is nill")
}

//5. Посчитать количество секунд от текущей даты до своего дня рождения.

let date = NSDate()

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "dd.mm.yyyy"
let birthday = dateFormatter.date(from: "02.07.1996")

print ("Сколько секунд я живу: \(date.timeIntervalSince(birthday!))")

//6. Создать строку. Прибавить к ней другую строку и Character разными способами.

var stroka:String = "bla bla"
stroka += " lol lol"
var ch:Character = "p"
stroka += String(ch)
stroka += [ch]
stroka += "\(ch)"


//7.8. Вывести в консоль английсикй алфавит.

var a:Character = "\u{0041}"
var sl:String = ""
//U+007A
while (a != "\u{005B}"){ //заглавные
    print(a,terminator: "")
    sl += [a]
    //5B - 60
    let scalars = String(a).unicodeScalars
    let val = scalars[scalars.startIndex].value
    a = Character(UnicodeScalar(val + 1)!)
}
a = "\u{0061}"
while (a != "\u{007B}"){ //строчные
    print(a,terminator: "")
    sl += [a]
    let scalars = String(a).unicodeScalars
    let val = scalars[scalars.startIndex].value
    a = Character(UnicodeScalar(val + 1)!)
}

var b:String = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz"
print()
print(b)

for character in sl {
    if (character == "C"){
        print("find C")
    }
}

//*For fun: найти забавные символы и декораторы для символов.

let enclosedEAcute: Character = "\u{E9}\u{20DD}"
let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"
let s = "Hello 😃." //Hello \ud83d\ude03.
let sparklingHeart = "💖"
let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"
let sparklingHeart1 = "\u{1F496}"
