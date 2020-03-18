// This code contains basic swift implementations

// Declaring a variable using var 
var myname = "Benz"
var intvalue = 25
var doublevalue = 23.2222222


// Declaring the variable using Annotation 
var a: Int
var A: Int 

 a = 2
 A = 5 

// Printing the relevant values 
print("Value of \(a)", a)
print("Value of A", A)
print("Int value", intvalue)
print("Double value", doublevalue)
print("String Value", myname)


// Declaring optionals - They can say, a value is present and so is the value or the value is not present 

//Method 1 - Forced unwrapping
var valone: Int?
valone = 2

//Method 2 - Automatic unwrapping 
var valtwo: Int!
valtwo = 4


if (valone != nil) {
    print("Value of Valone is", valone!)  // You have to use exclamation mark to get the value of a varible
    // This is called as forced unwrapping
}
else {
    print("Valone doesn't have an value")
}

if (valtwo != nil ){
    print("Automatic Unwrapping", valtwo!)
}
else{
    print("Automatic UNwrapping varible doesnt have an value")
}



// Tuples
// Tuples can store any number of values, also values of different data types
// Declare using () parenthesis

var tupleone = (404, "Some error found")

print("Printing full tuple", tupleone)

// Access tuple elements by index starting at 0

print("Tuple First element : Error code", tupleone.0)
print("Tuple second element : Error Description", tupleone.1)

// You can also declare the varibles using an name when declaring the tuple 

var tupletwo = (Errorcode : 501, Description: "Some error")

// Access the tuple elements using the var names 

print("Tuple First element:", tupletwo.Errorcode)
print("Tuple Second Element: ", tupletwo.Description)




// Constants 
// initializing the constants doesnt allow the value of the varible to be modified in the run time 
// declare it using the let keyword 

let constA = 24
// Type annotation of constants 

let constB: Int = 20

print("Const A", constA)
print("Const B", constB)

// changing the value of an constant 
// constA = 21  - Throws an error - Change let to var to make it mutable

// We have all basic arithmetic operations as outlined in other languages


