// Arrays 

var a = "dog"
var b = "cat"
var c = "bird"

a = "my" + a 
var d = ["dog", "cat", "bird"]  // starts with index 0 
print(d[0]) // accessing the array element by the index number 

var e = [String]() // Declaring an empty array which specifies that it will store string data


// printing the elements in an array
//Method 1
for i in 0...2{
    print("my" + d[i])
}

d += ["Owl"]
// you cant use d -= ... 

// Method 2
for i in d{
    print("Method 2 - My " + i)
}

d.remove(at: 3)  // Removes a value from am array at a specifies index number 

for i in d{
    print("Method 2 - My " + i)
}

print("Array length", d.count)




// Dictionaries 

var carDB = Dictionary<String, String>()  // BOth key and value is a string 
var cardDB2 = [String?:String?]() // BOth are similar - ceates an dictionary 
// var cardb2 = [String]() // This is an arrray - so lookout when creating it 

cardDB2["Number"] =  "TN-11-U-1234"
cardDB2["Model"] = "Brezza"
cardDB2["Color"] = "Yellow with white "
// Assign nil to remove 


for (license, car) in cardDB2 {
    print(license!, car!)
}