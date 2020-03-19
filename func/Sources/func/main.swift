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

