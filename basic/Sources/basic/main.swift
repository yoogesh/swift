// This code involves basic swift programming

// Declaring a variable using var 
var myname = "Benz"
var intvalue = 25
var doublevalue = 23.2222222

// Declaring the variable using Annotation 
var a: Int
var A: Int 

 a = 2
 A = 5 


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






// Printing the relevant values 

print("Value of \(a)", a)
print("Value of A", A)
print("Int value", intvalue)
print("Double value", doublevalue)
print("String Value", myname)
