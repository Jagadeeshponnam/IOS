//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

var catName = "Mikky"
catName = "Rex"
print(catName)


let a=16.0
print(a)

var price : Int = 100
price = price * 222
print(price)

var me = "This is Jagadeesh"
print(me)
print("me")

var frd1="Lavan"
var frd2="Pavan"
print(frd1,frd2)
print(frd1,"&",frd2)

var origin = (x : 0 , y : 0, z : -1)
var point = origin
print(point)
print("\(origin.x),\(origin.y),\(origin.z)")
//(0,0,-1)
print("(\(origin.x),\(origin.y),\(origin.z))")


var httpError  = (errorCode : 404  , errorMessage : "Page Not Found")
print(httpError)
print(httpError.errorCode , terminator : ": ")
print(httpError.errorMessage )

print("********")

var name = ("John","Smith")
var fName = name.0
var lName = name.1
print(fName , terminator : " , ")
print(lName)

print("********")

let city = (name : "Maryville" , population : 11,000)
let ( cityName ,cityPopulation ) = (city.0 , city.1)
print(cityName)
print(cityPopulation)
print("********")
let groceries = ("bread","onions")
print(groceries.0)
print(groceries.1)
print(type(of: groceries))

print("*********")

var fname = "Joe"
var lname = "Root"
(fname , lname) = (lname , fname)
print("First Name is \(fname) and Last Name is \(lname)")
print("*********")

print("********")
var cricketKit = ("handGloves" ,"helmet",("bat","ball"))
print(cricketKit.0)
print(cricketKit.1)
print(cricketKit.2.0)
print(cricketKit.2.1)

var x : Int  = 12;
var y : Int  = 7;
var z : Int  = 5;
var d : Bool = true;
var b : Bool = false;

print(x - z == y)
print(x * z > z * y || b)
print(x * z > z * y && d || b)
print(x * z > z * y && d || b)


var  firstNumber : Int = 10
var secondNumber : Int = 25
print(secondNumber / firstNumber)

var four = 4
var finalNumber = -four
print(finalNumber)


var number1 = (4,6)
var number2 = (4,5)
print(number1 <= number2)

