import Foundation

//Create user
class User {
    var name: String, age: Int, phoneNumber: Int, mail: String
    
    init(name: String, age: Int, phoneNumber: Int, mail: String){
        self.name = name
        self.age = age
        self.phoneNumber = phoneNumber
        self.mail = mail
        
    }
}


//Mathematical operations
class Calculator {
    func sum (number1: Double, number2: Double) -> Double{
       return number1 + number2
        
    }
    
    func subtract (number1: Double, number2: Double) -> Double{
       return number1 - number2
        
    }
    
    func multiply (number1: Double, number2: Double) -> Double{
       return number1 * number2
        
    }
    
    func divide (number1: Double, number2: Double) -> Double{
       return number1 / number2
        
    }
    
}


//User data entry
func create_User () -> (String, Int, Int, String){
    var state = true, nameUser = "", ageUser = 0, phoneNumberUser = 0, mailUser = ""
    
    print("INGRESE LOS SIGUIENTES DATOS")
    
    while state == true {
        print("\nNombre completo: ")
        
        if let name: String = readLine(){
            nameUser = name
            break
            
        } else {
            print("\n🚨 Digitó su nombre de manera incorrecta 🚨")
            state = true
            
        }
    }
        
    while state == true {
        print("\nEdad:")
        
        if let age: Int = Int(readLine()!){
            ageUser = age
             break
            
        } else {
            print("\n🚨 Digitó su edad de manera incorrecta 🚨")
            state = true
            
        }
    }
       
    while state == true {
        print("\nNúmero de teléfono (Si no tiene un número de teléfono, digite 0): ")
        
        if let phoneNumber: Int = Int(readLine()!){
            phoneNumberUser = phoneNumber
            break
            
        }else{
            print("\n🚨 Digitó su número de teléfono de manera incorrecta 🚨")
            state = true
            
        }
    }
      
    while state == true {
        print("\nCorreo electrónico: ")
        
        if let mail: String = readLine(){
            mailUser = mail
            break
            
        } else {
            print("\n🚨 Digitó su correo electrónico de manera incorrecta 🚨")
            state = true
            
        }
    }
        
    return (nameUser, ageUser, phoneNumberUser, mailUser)
    
}


//Insert numbers
func number() -> (Double, Double){
    var state = true, numberOne = 0.0, numberTwo = 0.0
    
    while state == true {
        print("\nDigite el primer número")
            
        if let number = Double(readLine()!) {
            numberOne = number
            break
            
        } else {
            print("\n🚨 Solo se pueden digitar números 🚨")
            state = true
            
        }
    }
    
    while state == true {
        print("\nDigite el segundo número")
            
        if let number = Double(readLine()!) {
            numberTwo = number
            break
            
        } else {
            print("\n🚨 Solo se pueden digitar números 🚨")
            state = true
            
        }
    }
    return (numberOne, numberTwo)
    
}


//Calculator menu
func calculator(){
    var operations = Calculator()
    
    var state = true

    while state == true{
        print("\nELIGA UNA OPCIÓN:\n")
        print("1. Sumar.\n2. Restar.\n3. Multiplicar.\n4. Dividir.\n5. Salir.")
        
        if let optionMenu: Int = Int(readLine()!){
            //Menu
            switch optionMenu {
                case 1:
                    print("\nSUMAR:")
                
                    var number = number()
                
                    var number1 = number.0
                    var number2 = number.1
                    
                    var result = operations.sum(number1: number1, number2: number2)
                
                    print("\n\(number1) + \(number2) = \(result).")
                
                case 2:
                    print("\nRESTAR:")
                
                    var number = number()
                
                    var number1 = number.0
                    var number2 = number.1
                    
                    var result = operations.subtract(number1: number1, number2: number2)
                
                    print("\n\(number1) - \(number2) = \(result).")
                
                case 3:
                    print("\nMULTIPLICAR:")
                    var number = number()
                
                    var number1 = number.0
                    var number2 = number.1
                    
                    var result = operations.multiply(number1: number1, number2: number2)
                
                    print("\n\(number1) * \(number2) = \(result).")
                
                case 4:
                    print("\nDIVIDIR:\n")
                
                    var number = number()
                
                    var number1 = number.0
                    var number2 = number.1
                    
                    var result = operations.divide(number1: number1, number2: number2)
                
                    print("\n\(number1) / \(number2) = \(result)")
                
                case 5:
                    print("\nAdiós 👋.")
                    state = false
                    
                default:
                    print("\n🚨 Opción no valida 🚨")
                
            }
        } else {
            print("\n🚨 Solo se pueden digitar números 🚨")
            
        }
    }
}

//Create a user
var user = create_User()

var nameUser = user.0
var ageUser = user.1
var phoneNumberUser = user.2
var mailUser = user.3

var user1 = User(name: nameUser, age: ageUser, phoneNumber: phoneNumberUser, mail: mailUser)

//Access to the calculator
calculator()
