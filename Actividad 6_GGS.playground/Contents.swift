import UIKit


//OPERADOR 
infix operator ^^: AdditionPrecedence

func ^^ (base: Int, power: Int) -> Double {
    
    return pow(Double(base), Double(power))
    
}

print(5 ^^ 2 + 3)



var coleccion = [2,5,3,4]
prefix operator |>

prefix func |>(coleccion:Array<Int>) -> Array<Int> {
    
    return coleccion.sorted()
}

|>coleccion

print(|>coleccion)



//SUBSCRIPT

let cantidades = [2,3,4,5]

class Cantidad
{
    var valores:[Int]
    init(v:[Int])
    {
        self.valores = v
    }

    subscript(idx:Int) -> Int
    {
        get
        {
            return valores[idx]
        }

        set (nuevoValor)
        {
            valores[idx] = nuevoValor
        }
    }
}

let v1 = Cantidad(v: cantidades)

v1[2]
v1[3] = 7

cantidades
v1.valores

public enum OldSettings {
    private static var values = [String: String]()

    static func get(name: String) -> String? {
        return values[name]
    }

    static func set(name:String, to newValue: String?) {
        print("Enemigo: \(name). Nivel: \(newValue ?? "nil")")
        values[name] = newValue
    }
}

OldSettings.set(name: "Ganon", to: "100")
print(OldSettings.get(name: "Enemigo") ?? "Tipo: Legendario.")



//CONTROL DE ERROR
import Foundation

let dictError = [1:"A", 2:"B",3:"C"]

func Existe(idx:Int)
{
    guard let existe = dictError[idx] else {
        print ("No existe")
        return
    }
    print("Existe \(existe)")
}

Existe(idx:5)
dictError[5]
