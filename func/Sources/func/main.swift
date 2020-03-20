// Functions in swift 
/*
func funcname () -> datatype (arg label varname:Type,...)
{
code chunk 
}

*/

func addTwoNumbers() -> Int {
    let a = 1
    let b = 1
    let c = a + b
    print("Inside function", c)
    return a + b
}
var getval:Int
getval = addTwoNumbers()
print("Outside function", getval)


// use _ instead of arg....     When calling addThreeNumbers(1,2,3)You don't need to specify argument name 
func addThreeNumbers(arg1 a:Int, arg2 b:Int, arg3 c:Int) -> Int{
    var sum = 0
    sum = a + b + c
    return sum 
}


let getvaltwo:Int 
getvaltwo = addThreeNumbers(arg1: 2, arg2: 5, arg3: 6)
print("Sum of Three numbers", getvaltwo)




//Classes

var title = "Hello, PLayground"
var body = "Body post"

class Demo {
    var title = ""  //Called as a property 
    var body = ""
    var comments = 0
    func comment() -> Int
    {
        comments += 1
        return comments
    }

}

let objone = Demo()   // Creating object one 
objone.title = "Inside title class"
objone.body = "Inside body class"
objone.comments = 5
var value = objone.comment()
print("value returned from comment func - Objone", value)

let objtwo = Demo()
objtwo.title = "Title class - Obj Two"
objtwo.body = "Inside body class - Obj Two"
print("Value of comments var - objTwo", objtwo.comments)


print(objone.title)
print(objtwo.title)

// There are two objects and changing the value of any of thr properties wrt to one obj doesnt change the vale of that property to other objects

// Inheritance 

class car {
    var speed = 200
    func drive(){
        print("Driving at \(speed) kmph")
    }
}

class fastcar : car{    //You inherit by using the : operator ....     class class2 : parentclass
    override func drive (){   //Use override to redefine the methods in parent class and do the cutom functionality 
        print("Driving at \(speed + 50 )")
    // Declaring super 
    super.drive()
    // Super refers to the base class and it invokes the method in the base class
    
    }

    func fly (){
        print("Flying")
    }
}


let ride = car()
print(ride.drive())

let newride = fastcar()
print(newride.drive())


// Initializers for classes 
// Method 1 

class person{
    var age = 0
    var name = ""
    init (){     // () after class name when creatign the object calls this iniializer
    // set up your object 
    name = "Chris"
    age = 23
    }
}

var po = person()   // () after person by defualt calls the initializers 
// po is an instance to the class person 
// the above syntax creates it and aslo calls the init fucntion 
//init function assigns the values to the variables 
print(po.age)


/// Method 2  - Initializing with parameters 
// similar to parameterised constructors 

class dog{
    var breed = ""
    var color = ""

    init (){

    }
    init (dogbreed name: String, dogcolor color:String) // you can have multiple initializers
    {
        breed = name
        self.color = color  // Argument name is color and the variavle name is color 
        // This is ambigious 
        // Hence you will use self.varname = argument 
        // self. refers to the class variable  
    }
}

var dogobjone = dog(dogbreed: "Labrador", dogcolor: "Golden") // This calls the secidn initializer 
print(dogobjone.color, dogobjone.breed)
var dogobjtwo = dog() // This calls the first initializer 

// Optionals 



class Blog {
    var title: String?   // title datatype is string and It could be nil or it could actually contain the sting 
    var body: String?   
    var number: Int? 
}

let post = Blog()
// Optional binding
// post.title = "Hello"   ---- Uncomment this to excute the code inside the if loop 
if let actualtitle = post.title{
    print(actualtitle) // Doesn't print it because it doesn have any value 
}
post.title = "ford vs ferrari"  // Commenting these lines will result in an error - you cant unwrap an nil
print(post.title!) // Forced unwrapping  - this is saying to xcode that "I know there is a value in here and i dont need to check it  so go ahead and print it"

if post.title != nil{
    print(post.title!)
}
if post.title == nil {
    // Optional contains no value 
}








// Initializers part 2


class Per{
    var name = "Ram Yoogesh"
}
class Blogpost{
    var title:String?
    var author:Per
    var newvaribale: Int // It will show an error if you are gonna let it as such 
    // You need an initializer to initialize the class properties 

    init (){
        newvaribale = 10
        author = Per()
    }
    convenience init (title: String){   // Called as the convenience initializer. It initiazles both the designated initializer and the value that we wanted to implement 
        self.init()
        self.title = title 
    }
}   

let objo = Blogpost(title: "Monk who sold his ferrari")
//objo.title = "Monk who sold his ferrari"

// Method 1
if let checkval = objo.title{
    print(checkval)
    print(objo.author)
}

// Method 2
if objo.title != nil {
    print(objo.newvaribale)   // DO some operation . it doesnt necessarily need to be this 
}

