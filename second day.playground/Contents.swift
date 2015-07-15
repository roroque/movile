//: Playground - noun: a place where people can play

import UIKit




//1
func impar(x : Int) -> Bool
{
    
    if(x%2 == 0)
    {
        return false
    }
    
    return true
}


//2
func fat(x : Int) -> Int
{
    
    var result = 1
    for var i = 1 ; i < x ; i++
    {
        result *= i
    }
    
    return result
    
}

//3
func minMax(x : [Int]?) -> (Int? ,Int?)
{
    if let vet = x {
        if vet.count > 0
        {
            var min = vet[0]
            var max = vet[0]
            

            for i in vet
            {
                if (i < min)
                {
                  min = i
                }
                if(i > max)
                {
                    max = i
                }
                
            }
            return (min , max)
        }
    }
    return (nil,nil)
}


minMax([])          // nil
minMax([2,0,-1])

//4
func busca(x : [Int] , y : Int) -> Int?
{
    
    for var i = 0; i < x.count ; i++
    {
        if(x[i] == y)
        {
            return i
        }
    }
    
    return nil
}

busca([1, 0, 5, 10, 5], 8) // nil
busca([1, 0, 5, 10, 5], 5) // 2

//5
func palindromo(palavra : String) ->Bool
{

    var x = palavra.startIndex
    var y = palavra.endIndex.predecessor()
    while x != y
    {
        if(palavra[x] != palavra[y])
        {
            return false
        }
   
        x = x.successor()
        y = y.predecessor()
    }
    
    
    return true
}

palindromo("arara") // true
palindromo("sabiá") // false

//6
func impares(vetor : [Int]?) -> [Int]
{
    var resp : [Int] = []
    
    if let vet = vetor
    {
        for var i = 0; i < vet.count; i++
        {
            if vet[i] % 2 == 1
            {
                resp.append(vet[i])
            }
        }
        return resp
    }
    
    return resp
   
    
}

impares([])
impares([0, 2, 4])
impares([1, 2, 3, 5])
impares([1, 2, 1, 5])



//7
enum jogadas
{
    case Pedra
    case Papel
    case Tesoura

}

enum resultado
{
    case Vitoria
    case Derrota
    case Empate
    
    
}

func jokenpo(jogador1 : jogadas , jogador2 : jogadas) -> resultado
{

    if jogador1 == jogador2
    {
        return resultado.Empate
    }
    
    if jogador1 == jogadas.Papel && jogador2 == jogadas.Pedra
    {
        return resultado.Vitoria
    }
    
    if jogador1 == jogadas.Pedra && jogador2 == jogadas.Tesoura
    {
        return resultado.Vitoria
    }
    
    if jogador1 == jogadas.Tesoura && jogador2 == jogadas.Papel
    {
        return resultado.Vitoria
    }

    return resultado.Derrota
}




jokenpo(.Tesoura, .Tesoura) // .Empate
jokenpo(.Pedra, .Papel)     // .Derrota
jokenpo(.Pedra, .Tesoura)   // .Vitoria

//8
func frequencia(vet : [Int]) -> NSDictionary
{
    var dict  = [Int :  Int]()
    for i in vet
    {
        if let x = dict[i]
        {
            dict[i] = x + 1
        }
        else
        {
            dict[i] = 1
        }
    }
    
    return dict
    
}

frequencia([1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2])



//9
protocol Shape
{
    
    func area() -> Double
    func perimeter() -> Double
    
}


struct Square :Shape {


    var side : Double!
    func area() -> Double {
        return side * side
    }
    
    func perimeter() -> Double {
        return 4 * side
    }

}


struct Rectangle : Shape {
    
    var base : Double!
    var height: Double!
    func area() -> Double {
        return base * height
        
    }
    
    func perimeter() -> Double {
        return 2 * base + 2 * height
        
    }
}


struct Circle :Shape {
    
    var radius : Double!
    
    func area() -> Double {
        return radius * radius * M_1_PI
    }
    
    func perimeter() -> Double {
        return 2 * M_1_PI * radius
    }
    
    
}














