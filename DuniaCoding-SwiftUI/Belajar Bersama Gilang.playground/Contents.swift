import UIKit

// PRINT
print("Hello World")

// VAR VS LET
var nama = "GIlang"
let nama2 = "Luthfi"

nama = "Anto"
//nama2 = "Badrun"

// Implicit VS Explicit
var implicitString = "implicit"
var explicitString: String = "explicit"
var bool: Bool = false

// String Interpolation
var buah = "Semangka"
var berapaBiji = 3
var text = "Aku punya \(buah) \(berapaBiji) biji"

// Multiple Lines
var multipeLines = """
alksjdalksjdalsdlkasjd
aslkdaklsdj
"""

// Array
var names = ["Luthi", "Gilang", "Andrey"]
names[1] = "Anto"
names.append("Julak")

// IF ELSE
var isHappy = true
if isHappy {
    
} else {
    
}

// FOR
for i in 0..<3 {
    print(i)
}

for name in names {
    print(name)
}

// While
var i = 0
while i < 3 {
    i += 1
}

// Optional
var namaPacar: String?
namaPacar = "joni"
namaPacar = nil
namaPacar = "Sudarmini"

var label = "Nama pacar aku \(namaPacar ?? "Joko")" // 1

if let namaPacar = namaPacar { // 2
    print("AKU PUNYA LOH \(namaPacar)")
} else {
    print("YAH SEDIH")
}

// Function
func menyapa(siapa: String) -> String {
    return "Halo \(siapa)"
}

menyapa(siapa: "Gilang")

func menyapa(_ siapa: String) -> String {
    return "Halo \(siapa)"
}

menyapa("Gilang")

func menyapa(siapa: String, cukupUmur: (Int) -> Bool)  {
    if cukupUmur(11) {
        print("Umurku lebih dari 10")
    }
}

func cekUmur(umur: Int) -> Bool {
    if umur > 10 {
        return true
    } else {
        return false
    }
}

menyapa(siapa: "gilang", cukupUmur: cekUmur)

// Map
var newNames = names.map { name -> String in
    var newName = name + " halo"
    return newName
}

// Class
class Shape {
    var sisi: Int = 0
    
    func tambahSisi() {
        sisi += 1
    }
}

var lingkaran = Shape()
print(lingkaran.sisi)
lingkaran.tambahSisi()
print(lingkaran.sisi)

// Class Initilizer
class Shape2 {
    var sisi: Int
    
    init(sisi: Int) {
        self.sisi = sisi
    }
    
    func tambahSisi() {
        sisi += 1
    }
}

var kotak = Shape2(sisi: 0)
print(kotak.sisi)

// Struct
struct StructShape {
    var sisi: Int = 0
    
    mutating func tambahSisi() {
        sisi += 1
    }
}

var persegi = StructShape()
print(persegi.sisi)

var a = kotak // class
var b = persegi // struct

kotak.sisi = 0
persegi.sisi = 0

a.sisi = 3
b.sisi = 3

print(kotak.sisi)
print(persegi.sisi)

print(a.sisi)
print(b.sisi)

// class inherit class
class Shape3: Shape {
    var warna: String = "Merah"
}

var merahPersegi = Shape3()
merahPersegi.sisi

// Enumaration
enum Warna {
    case merah
    case hijau
}

var warnaBaju: Warna = Warna.merah

switch warnaBaju {
case .hijau:
    print("Warna hijau")
default:
    print("Bukan warna")
}

enum Nama: String {
    case luthfi = "Luthfi"
    case gilang = "Gilang"
}

var gilang: Nama = .gilang
print(gilang.rawValue)

enum Response {
    case success(String)
    case failure(String)
}

var response: Response = .success("Ye berhasil")

switch response {
case let .success(value):
    print(value)
default:
    print("")
}

// Protocol
protocol Bernafas {
    func nafas()
}

class Person: Bernafas {
    func nafas() {
        print("Bernafass")
    }
    var nama = "Luthfi"
}

// Extension
extension Int: Bernafas {
    func nafas() {
        print("bernafas")
    }
}

var angka = 1
angka.nafas()

// Error Handling
enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return "Job sent"
}

do {
    let printerResponse = try send(job: 1040, toPrinter: "Never Has Toner")
    print(printerResponse)
} catch {
    print(error)
}


let printerResponse = try? send(job: 1040, toPrinter: "Never Has Toner")
print(printerResponse)



