import UIKit

var str = "Hello, playground"
let a = "ab"
var b = "aabbccd"
var count = 0
for _ in b{
    for el in a {
        if ( b.contains(el)){
            count+=1
            b.remove(at: b.index(of: el)!)
    }}
}
print(count)


var arr = [5,1,1,1,0,1]
var maxi = 0
var maxis : Array<Int> = []
for el in arr{
    if el == 1{
        maxi += 1
    }
    else{
        maxis.append(maxi)
        maxi = 0
    }
}
print(maxis.max())
print(Set(arr))

var fir = "qpdui"
var sec = "idqu"
if fir.count != sec.count{
    print("0")
}
else{
    for f in fir{
        if sec.contains(f){
            sec.remove(at: sec.index(of: f)!)
        }
    }
    print(sec.count==0 ? "1":"0")
//    if sec.count == 0{
//        print("1")
//    }
//    else{
//        print("0")
//    }
}

var myarr = [["name": "width", "val": 10],
["name": "height", "val": 20]
]
var keye = ""
var valu = 0
var mydict = [String:Int]()
for i in myarr{
    keye = i["name"] as! String
    valu = i["val"] as! Int
    mydict[keye] = valu
}
print(mydict)

var testdict = Dictionary<String , String>()
testdict["aisu"]="bekboss"
var tst = testdict
tst["aisu"]="rysbek"
print(testdict["aisu"])
print(tst["aisu"])

var arr1 = ["a","b","b","x","y","z"]
var arr2 = ["z","y","x","i","b","a"]
if arr1.elementsEqual(arr2.reversed()){
    print("true")
}
else{
    print("false")
}
//var arr2 = ["b","e","a","d","f","e","e","f","x","y","z"]
//var myindex = -100
//for k in arr2{
//    for a in arr1{
//        if k==a{
//            myindex = arr2.firstIndex(of: k)!
//        }
//    }
//}
enum CompassPoint {
    case north
    case south

}
var directionToHead = CompassPoint.north
switch directionToHead{
    case .north: print("king in the north")
    case .south: print("vesteros is here")
    
}
directionToHead = .south
print(directionToHead)

indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

enum ArithmeticExp {
    case number(Int)
    indirect case addition(ArithmeticExp, ArithmeticExp)
    indirect case multiplication(ArithmeticExp, ArithmeticExp)
}

var one = ArithmeticExpression.number(4)
var two = ArithmeticExpression.number(9)
var three = ArithmeticExpression.addition(one, two)

func eval(expression : ArithmeticExpression)->Int{
    switch expression{
    case .number(let val):
        return val
    case .addition(let f, let t):
        return eval(expression: f) + eval(expression: t)
    case .multiplication(let f, let t):
        return eval(expression: f) * eval(expression: t)
    }
}

eval(expression: three)
eval(expression: one)



struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}
var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
// диапазон чисел 0, 1, 2
rangeOfThreeItems.firstValue = 6
print(rangeOfThreeItems)
// сейчас диапазон чисел 6, 7, 8

struct Cub{
    var height = 0
    var width = 0
    var depth = 0
    var volume : Int {
        get{
            return height*width*depth
        }
        set{
            depth = 9
        }
    }
}

var myCub = Cub(height: 5, width: 7, depth: 2)
print(myCub.volume)
myCub.volume = 90
print(myCub.volume)

var names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
names = names.reversed()
print(names)
names = names.sorted()
print(names)
var reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})
print(reversedNames)

let arrrr = [1,2,3,4,5,6,7,8,9,10]
var sumedArr = arrrr.reduce(0,  + )    //0 eto nachal'noe znacheniye , + eto pattern dlya slozheniya
print(sumedArr)


// ('AAABbbbBcCCC') => 'A3Bb3BcC3'

let mystr = "AAABbbbBcCC"
var compstr = ""
var countt = 0
var main = Array(mystr)[0]
for i in Array(mystr){
    print(i)
    if i == main {
        countt+=1
    }
    else{
        if countt>1{
            compstr.append(main)
            compstr.append(String(countt))
            //compstr += main + count
            countt = 1
            main = i
        }
        else{
            compstr.append(main)
            countt = 1
            main = i
        }
    }
    if i == Array(mystr)[mystr.count-1]{
        compstr.append(main)
        compstr.append(String(countt))
       // countt = 0
    }
}
print(compstr)


//Worst Case Time Complexity [ Big-O ]: O(n2)
//Best Case Time Complexity [Big-omega]: O(n)

func bubble2(unsortarr: [Int]){
    var sortarr = unsortarr
    for _ in 0...sortarr.count{
        for i in 0..<sortarr.count-1{
            if sortarr[i] > sortarr[i+1]{
                var temp = sortarr[i]
                sortarr[i] = sortarr[i+1]
                sortarr[i+1] = temp
            }
        }
    }
    print(sortarr)
}

bubble2(unsortarr: [5,6,8,2,1,4,7])

//for i from 1 to N
//key = a[i]
//j = i - 1
//while j >= 0 and a[j] > key
//a[j+1] = a[j]
//j = j - 1
//a[j+1] = key

//func insertion(unsorted: [Int]){
//    var sorted = unsorted
//    var j = 0
//    var main = sorted[0]
//    for i in 0..<sorted.count{
//        main = sorted[1]
//        j = i-1
//        while sorted[i]>main , j>=0{
//            sorted[j+1] = sorted[j]
//            j = j-1
//            sorted[j+1] = main
//        }
//    }
//    print(sorted)
//}
//insertion(unsorted: [5,6,8,2,1,4,7])

func insertionSort(_ array: [Int]) -> [Int] {
    //proveryaet s sled elementom poka ne naidet svoe mesto
    //Best-Case Complexity: О(n) Worst-Case Complexity: О(n^2)
    var a = array             // 1
    for x in 1..<a.count {         // 2
        var y = x
        while y > 0 && a[y] < a[y - 1] { // 3
            a.swapAt(y - 1, y)
            y -= 1
        }
    }
    return a
}
print("insertion")
print(insertionSort([5,6,8,2,1,4,7]))

func selectionSort(_ array: [Int]) -> [Int] {
    //Best-Case Complexity: О(n^2) Worst-Case Complexity: О(n^2)
    //samiy malen'kii element stanovitsya pervym
    //guard array.count > 1 else { return array }
    if array.count == 0{
        return array
    }
    var arr = array
    for x in 0 ..< arr.count - 1 {
        var lowest = x
        for y in x + 1 ..< arr.count {
            if arr[y] < arr[lowest] {
                lowest = y
            }
        }
        if x != lowest {
            arr.swapAt(x, lowest)
//            let temp = arr[x]
//            arr[x] = arr[lowest]
//            arr[lowest] = temp
        }
    }
    return arr
}

print(selectionSort([5,6,8,1,3,5,2,4]))

func quickSort(array: [Int]) -> [Int] {
    if array.isEmpty { return [] } // 1
    let first = array.first! // 2
    let smallerOrEqual = array.dropFirst().filter { $0 <= first } // 3
    let larger         = array.dropFirst().filter { $0 > first } // 4
    return quickSort(array: smallerOrEqual) + [first] + quickSort(array: larger) // 5
}
quickSort(array: [5,6,8,2,1,4,7])



//map return only names from an array
//let names = peopleArray.map({ $0.name })
//print(names)
// Result: ["Santosh", "John", "Amit"]


// flatMap removes unnesessary objects, such as nil in array
//let flatCars = peopleArray.flatMap({ $0.cars })
//print("Flatmap: \(flatCars)")

struct Person {
    let name: String
    let address: String
    let age: Int
    let income: Double
    let cars: [String]
}

let peopleArray = [ Person(name:"Santosh", address: "Pune, India", age:34, income: 100000.0, cars:["i20","Swift VXI"]),
                    Person(name: "John", address:"New York, US", age: 23, income: 150000.0, cars:["Crita", "Swift VXI"]),
                    Person(name:"Amit", address:"Nagpure, India", age:17, income: 200000.0, cars:Array())]

let aPersonArray = peopleArray.flatMap { $0.cars }.flatMap { $0 }
print(aPersonArray)

let filteredNames = peopleArray.filter( {$0.age > 18 }).map({ return $0.name })
print(filteredNames)
// Result: ["Santosh", "John"]
let flatmapArray2 = peopleArray.map({$0.cars}).reduce([], +)
print("flatmapArray2 : \(flatmapArray2)")












let mymap = peopleArray.map({$0.address})
print(mymap)

let mymap2 = peopleArray.filter({$0.income > 100000}).map({$0.name})
print(mymap2)

let testarr = [5,5,5,5,5]
let maparr = Set(testarr).reduce(0, +)
print(maparr)


let sectestarr = "5 5 5 5 5"

let yyy = Set(sectestarr.split(separator: " "))
let secmaparr = Array(yyy).flatMap({Int($0)}).reduce(0, +)
print(secmaparr)

//extension Int{
//    enum rank{
//        case isEven
//    }
//    var kind : rank{
//        switch self{
//        case isEven:
//            return self % 2 == 0
//
//        }
//    }
//func isEven(_ num: Int) -> Bool {
//    if num % 2 == 0{
//        return true
//    }
//    else{
//        return false
//    }
//}
//}
//func perestav(_ array:[Int]) -> [Int]{
//    var myarr = array
//    for i in 1..<myarr.count{
//        if myarr[i] % 2==0 && myarr[i+1] % 2 == 0 {
//
//        }
//    }
//}

//1 3 5 2 2 2

// n=1 ()
// n=2 ()() (())
//n=3 ()()() ()(()) (())() ((())) (()())

func generate(cur:String, open : Int, closed: Int, n: Int){
    var f=cur
    if f.count == 2*n{
        print(cur)}
    if open<n{
        f.append("(")
        generate(cur: f, open: open+1, closed: closed, n: n)
    }
    if closed<open{
        f.append(")")
        generate(cur: f, open: open, closed: closed+1, n: n)

        }
    
}
func par(n:Int){
    generate(cur: "", open: 0, closed: 0, n: n)
}

//print(par(n:2))
//print(par(n:3))



//print(par(n:6))
//
//    func lengthOfLongestSubstring(_ s: String) -> Int {
//       // var arr = [Int]()
//       var substringChars: [Character] = []
//
//        //var mystr = ""
//        var longest = 0
//
//        for c in s{
////                if !mystr.contains(c){
////                    mystr.append(c)
////                }
////                else{
////                   // arr.append(mystr.count)
////                   // print(mystr)
////                    longest = max(longest, mystr.count)
////                    mystr = ""
////                    mystr.append(c)
////                }
//            if !substringChars.contains(c) {
//                            substringChars.append(c)
//                        } else {
//                            longest = max(longest, substringChars.count)
//                            substringChars = [c]
//                        }
//
//            }
//       // print(arr)
//       // longest = max(longest, mystr.count)
//        longest = max(longest, substringChars.count)
//
//        return longest
//    }


//func lengthOfLongestSubstring(s: String) -> Int {
//    var substringChars: [Character] = []
//    var longest = 0
//
//    for c in s {
//        if !substringChars.contains(c) {
//            substringChars.append(c)
//        } else {
//            longest = max(longest, substringChars.count)
//            substringChars = [c]
//        }
//    }
//    longest = max(longest, substringChars.count)
//    return longest
//}
//lengthOfLongestSubstring(s: "dvedfg")

//dvedfg


func lengthOfLongestSubstring2(_ s: String) -> Int {
    
    var characterDict = [Character:Int]()
    var maxLength = 0
    var lastRepeatPos = -1
    var i = 0
    
    for c in s {
        if (characterDict[c] != nil) && (characterDict[c]! > lastRepeatPos) {
            lastRepeatPos = characterDict[c]!
        }
        
        maxLength = max(i - lastRepeatPos, maxLength)
        characterDict[c] = i
        print(characterDict)
        i += 1
    }
    
    return maxLength
}
lengthOfLongestSubstring2("mymylovemy")

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    var nums = (nums1 + nums2).sorted()
    print(nums)
    let cou = nums.count / 2
    if nums.count % 2 == 0{
        return Double((nums[cou-1]+nums[cou]))/2.0
    }
    else{
        let cd = Int(cou)
        return Double(nums[cd])
    }
}
print(findMedianSortedArrays([1,5,2,2,5], [8,1,3,5,]))
//
//func longestPalindrome(_ s: String) -> String {
//    var nac = Array(s)[0]
//    var subs = ""
//    subs.append(nac)
//    var co = 0
//    var res = ""
//    res.su
//    var longest = [String:Int]()
//    for c in 1..<s.count{
//        while Array(s)[c] != nac{
//            subs.append(Array(s)[c])
//        }
//        if subs.elementsEqual(subs.reversed()) {
//            longest[subs] = subs.count
//        }
//    }
//    for (k,v) in longest{
//        if v > co{
//            co = v
//            res = k
//        }
//    }
//    return res
//}


//babad    bab
//ababa   ababa
//""        ""
//a        a
//agadadop  ada dad aga
func longestPalindrome(_ s: String) -> String {
    if(s.count == 0){return ""}
    //if(s.count == 1){return s}
    var start = 0 , end = start , myarr = Array(s), max = 0
    for i in 0..<s.count{
        var left = i, right = s.count-1,  tstart = left, tend = right
        //tstart i tend nuzhny dlya togo chtoby kontrolirovat' palindromy. Tstart nachalo palindroma a tend konec.
        while left<right{
            if myarr[left] == myarr[right]{
                if((right-left) > max){
                    max = (right-left)
                    tstart = left
                    tend = right
                }
                left += 1
                right -= 1
            }
            else{
                left = i
                right = tend - 1
                tend = right
                tstart = left
                max = 0
                
            }
        }
        if (tend - tstart) > (end-start){
            end = tend
            start = tstart
        }
    }
    return (String(myarr[start...end]).count > 1 ? String(myarr[start...end]) : String(myarr[0]))
}
print(longestPalindrome(""))


//zigzag
//class Solution(object):
//def convert(self, s, numRows):
//if numRows == 1:
//return s
//n = len(s)
//cycle = 2*numRows - 2
//strlist = []
//for i in range(numRows):
//for j in range(i, n, cycle):
//strlist.append(s[j])
//if i != numRows-1 and i != 0 and j+cycle-2*i < n:
//strlist.append(s[j+cycle-2*i])
//newstr = ''.join(strlist)
//return newstr

//reverse the integer
func reverse(_ x: Int)  -> Int {
    var mys = 0
    var y = x
    while(y != 0){
        mys = mys * 10 + y % 10
        print("mys \(mys)")
        y = y / 10
        print("y \(y)")
    }
    if (mys < Int.min || mys > Int.max){
        return 0
    }
    else{
        return Int(mys)
    }
}
reverse(-120)


func myAtoi(_ str: String) -> Int{
    var res = ""
    var iss = false
    var muss = Array(str)
    var digits = "1234567890"
    var visit = false
    for i in 0..<str.count{
        //if(res.count != 0){
            if digits.contains(muss[i]){
                let s = muss[i]
                visit = true
                res.append(s)
                if i != 0{
                    if(muss[i - 1] == "-"){
                        iss = true
                        }
                    
                }
            }
        if !digits.contains(muss[i]) && visit{
            if iss{
                return Int(res)!*(-1) as Int
            }
            else{
                return Int(res) as! Int
            }
        }
    }
    if iss{ //bez etogo missing return owibka budet
        return Int(res)!*(-1) as Int
    }
    else{
        return Int(res) as! Int
    }
}
myAtoi("    -47 odododo 66 ")
myAtoi("489")

func isPalindrome(_ x: Int) -> Bool {
    var l = Array(String(x))
    var i = 0
    var j = l.count - 1
    while i < j{
        if l[i] != l[j]{
            return false
        }
        i += 1
        j -= 1
    }
    return true
}

isPalindrome(145415)

func isPalindrome2(_ x: Int) -> Bool {
    if x < 0 || x % 10 == 0 {
        return x == 0
    }
    var x = x
    var halfReversedX = 0
    while x > halfReversedX {
        halfReversedX = halfReversedX * 10 + x % 10
        x /= 10
    }
    // even num of digits situation || odd num of digits situaition
    return x == halfReversedX || x == halfReversedX / 10
}
isPalindrome2(145321)

let romanValues = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
for (k,v) in romanValues.enumerated(){
    print(k)
    print(v)
}


func intToRoman(_ num: Int) -> String {
    let romanValues = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
    let arabicValues = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    
    var romanValue = ""
    var startingValue = num
    
    for (index, romanChar) in romanValues.enumerated() {
        var arabicValue = arabicValues[index]
        
        var div = startingValue / arabicValue
        
        if (div > 0)
        {
            for _ in 0..<div
            {
                //println("Should add \(romanChar) to string")
                romanValue += romanChar
            }
            
            startingValue -= arabicValue * div
        }
    }
    
    return romanValue
}
print(intToRoman(49))

func longestCommonPrefix(_ strs: [String]) -> String {
    var pref = ""
    var count = 0
    if strs.count == 0{
        return ""
    }
    var main = Array(strs[0])
    var min = 100
    for p in strs{
        if p.count < min{
            min = p.count
        }
    }
    if min != 0{
        for i in 0..<min{
            for j in strs{
                if Array(j)[i] == main[i]{
                    count += 1
                    if(count == strs.count){
                        pref.append(Array(main)[i])
                    }
                }
                else{
                    return pref
                }
            }
            count = 0
        }
        return pref
    }
    else{
        return ""
    }
}

longestCommonPrefix(["caregergesd","a", "car"])


//func letterCombinations(_ digits: String) -> [String] {
//    var mydict = [
//        "",
//        "",
//        "abc",
//        "def",
//        "ghi",
//        "jkl",
//        "mno",
//        "pqrs",
//        "tuv",
//        "wxyz"
//    ]
//    var out : [String] = []
//    var i = 0
//    var j = digits.count - 1
//    var combi = ""
//    for com in combi{
//        for digit in digits{
//            for letter in mydict[Int(String(digit))!]{
//                out.append(combi + String(letter))
//            }
//        }
//
//    }
//    return out
//    }
//
//letterCombinations("23")

let DIGIT_TO_LETTERS = [
    "",    // 0
    "",    // 1
    "abc", // 2
    "def", // 3
    "ghi", // 4
    "jkl", // 5
    "mno", // 6
    "pqrs",// 7
    "tuv", // 8
    "wxyz" // 9
]

func letterCombinations(_ digits: String) -> [String] {

    if digits == "" {
        return []
    }

    // apppend the every corresponding letters of the digit to the result array
    var possibleCombinations = [""]
    for digit in digits {

        // make sure digits only contains [0-9]
//        guard let num = Int(String(digit)) else {
//            break
//        }
//
        let num = Int(String(digit))
        var newCombinations: [String] = []
        for combination in possibleCombinations {
            for letter in DIGIT_TO_LETTERS[num!] {
                //print(letter)
                newCombinations.append(combination + String(letter))
            }
            //print(combination)
        }
        possibleCombinations = newCombinations
    }

    return possibleCombinations
}

letterCombinations("23")

//def isValid(self, s):
//while "()" in s or "{}" in s or '[]' in s:
//s = s.replace("()", "").replace('{}', "").replace('[]', "")
//return s == ''

func isValid(_ s: String) -> Bool {
    var si = s
    while si.contains("[]") || si.contains("()") || si.contains("{}"){
        //for i in 0...(si.count/2){
        if(si.contains("[]")){
            si = si.replacingOccurrences(of: "[]", with: "" )
        }
        if(si.contains("{}")){
            si = si.replacingOccurrences(of: "{}", with: "" )
        }
        if (si.contains("()")){
            si = si.replacingOccurrences(of: "()", with: "" )
        }
        else{
            return si == ""
            }
    }
    return si==""
}

isValid("[()]")

var nums = [0,0,1,1,1,2,2,3,3,4]
print((Set(nums).count))


func removeElement(_ nums: [Int], _ val: Int) -> Int {
    var numss = nums
    print(numss)
    count = 0
    while !numss.isEmpty{
        if numss[count] == val{
            numss.remove(at: count)
        }
        count += 1
    }
    return numss.count
}
//removeElement([3,2,2,3], 3)

//Return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

func strStr(_ haystack: String, _ needle: String) -> Int {
    var needl = Array(needle)
    var coun = needl.count
    if haystack == needle{
        return 0
    }
    if (haystack.count < needle.count){
        return -1
    }
    if(needle == ""){
        return 0
    }
    for i in 0...haystack.count-coun{
        if Array(haystack)[i] == needl[0]{
            if Array(Array(haystack)[i...i+coun-1]) == needl{
                return i
            }
        }
    }
    return -1
}


func divide(_ dividend: Int, _ divisor: Int) -> Int {
    var sign = 1
    var divi = abs(dividend)
    var divis = abs(divisor)
    var res = 0
    if(dividend < 0 || divisor < 0){
        sign = -1
    }
    if(dividend == divisor){
        return 1
    }
    while divi >= divis{
        divi -= divis
        res += 1
    }
    res = res * sign
    return res
}

var words = ["foo","barr", nil]
print(words.compactMap({$0}))
print(words.compactMap({$0}).filter({$0 != nil && $0.count > 3}))
//print(words.reduce("", +))


// Find First and Last Position of Element in Sorted Array
//Input: nums = [5,7,7,8,8,10], target = 8
//Output: [3,4]
func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    var myarr = [Int]()
    for i in 0..<nums.count{
        if(nums[i] == target){
            if(myarr.count < 2){
                myarr.append(i)
            }
            if(myarr.count == 2){
                myarr[1] = i
            }
        }
    }
    if (myarr.count == 1){
        myarr.append(myarr[0])
    }
    return myarr.count == 0 ? [-1,-1] : myarr
}

//search insert position for a value. Find it as a target in array, if there is no targt, then find an insert position
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    //var insertpos = -1
    var mytarget = -1
    var mynums = nums
    for i in 0..<nums.count {
        if(nums[i] == target){
            mytarget = i
        }
    }
    if (mytarget == -1){
        mynums.append(target)
        mynums = mynums.sorted(by: {$0 < $1})
        for i in 0..<mynums.count {
            if(mynums[i] == target){
                mytarget = i
            }
        }
    }
    return mytarget
    
}

//combination sum

//Input: candidates = [2,3,6,7], target = 7,
//A solution set is:
//[
//[7],
//[2,2,3]
//]


//private static func recurse(list: [Int], target: Int, candidates: [Int], index: Int, result: inout [[Int]]) {
//    if target == 0 {
//        result.append(list)
//        return
//    }
//    for i in index ..< candidates.count {
//        let newTarget: Int = target - candidates[i]
//        if newTarget >= 0 {
//            var copy: [Int] = Array<Int>(list)
//            copy.append(candidates[i])
//            recurse(list: copy, target: newTarget, candidates: candidates, index: i, result: &result)
//        } else {
//            break
//        }
//    }
//}
//static func combinationSum(candidates cdts: [Int], target: Int) -> [[Int]] {
//    var candidates = cdts
//    var result: [[Int]] = []
//    candidates.sort {$0 < $1}
//    recurse(list: [Int](), target: target, candidates: candidates, index: 0, result: &result)
//    return result
//}


//check if the word matches the pattern
//public boolean isMatch(String s, String p) {
//    int m = p.length();
//    int n = s.length();
//    boolean[][] dp = new boolean[m+1][n+1];
//
//    dp[0][0] = true;
//
//    for(int i = 0; i < m; i++) {
//        for(int j = 0; j <= n; j++) {
//            if(dp[i][j]) {
//                if(p.charAt(i) == '*') {
//                    dp[i+1][j] = true;
//                    while(j < n) {
//                        dp[i+1][j+1] = true;
//                        j++;
//                    }
//                    break;
//                }else if(j < n && (p.charAt(i) == '?' || p.charAt(i) == s.charAt(j)) ) {
//                    dp[i+1][j+1] = true;
//                }
//            }
//        }
//    }
//
//    return dp[m][n];
//}
//}



    func isMatch(_ s: String, _ p: String) -> Bool {
        var mybool = false
        var i = 0
        var j = 0
        var ss = s
        var pp = p
        while(i < ss.count){
            if Array(p)[j] == Array(ss)[i]{
                mybool = true
                //ss.remove(at: ss.indexOf(Array(ss)[i]))
                i += 1
                j += 1
                
            }
            else if Array(p)[j] == "?"{
                mybool = true
                //ss.remove(at: i)
                i += 1
                j += 1
            }
            else if Array(p)[j] == "*"{
                var main = Array(ss)[i]
                while(Array(ss)[i] == main){
                    //ss.remove(at: i)
                    i = i+1
                }
                j += 1
                mybool = true
            }
            else{
                return false
                // i += 1
                // j += 1
            }
            
        }
        return mybool
        
        
        
    }


//permutations of an array
//def per(self,nums,n):
//if(len(nums)==1):
//return [nums]
//else:
//c = []
//for i in range(len(nums)):
//a = [nums[i]]
//b = self.per(nums[:i]+nums[i+1:],n-1)
//b = [b[i]+a for i in range(len(b))]
//c += b
//
//return c
//def permute(self, nums):
//"""
//:type nums: List[int]
//:rtype: List[List[int]]
//"""
//
//return self.per(nums,len(nums))
//





//func groupAnagrams(_ strs: [String]) -> [[String]] {
//    var overall = [[String]]()
//    var uni = [String]()
//    var empties = [String]()
//    var st = strs
//    for i in st{
//        if(i.isEmpty){
//            empties.append(i)
//            st.remove(at : st.index(of: i)!)
//        }
//        for j in st{
//            if(isanagram(i,j)){
//                uni.append(j)
//                st.remove(at : st.index(of: j)!)
//            }
//        }
//        overall.append(uni)
//        uni = []
//
//    }
//    if(empties.count != 0){
//        overall.append(empties)
//    }
//    return overall.compactMap({$0}).filter({$0.count != 0})
//}
//func isanagram(_ word1 : String, _ word2 : String) -> Bool{
//    var w2 = word2
//    if(word1 == word2){
//        return true
//    }
//    for i in word1{
//        if(w2.contains(i)){
//            w2.remove(at : w2.index(of: i)!)
//        }
//    }
//    if(w2.count == 0){
//        return true
//    }
//    return false
//
//}
//
//groupAnagrams(["bag","gab", "piki", "", ""])
//working code is belooow

func groupAnagrams(_ strs: [String]) -> [[String]] {
    var dictMap = [String:[String]]();
    for str in strs {
//        let characters = str.sorted { (s1, s2) -> Bool in
//            return s1 < s2
//        }
        let characters = str.sorted { $0 < $1 }
        let key = String(characters)

        if dictMap[key] != nil {
            dictMap[key]?.append(str)
        }
        else {
            dictMap[key] = [str]
        }
    }
    print(dictMap)
    return dictMap.map({ (key,value) -> [String] in
        return value
    })
}


groupAnagrams(["bag","gab", "piki", "", ""])

//power function
func myPow(_ x: Double, _ n: Int) -> Double {
    var mypow = 1.0
    for i in 0..<abs(n){
        mypow = mypow * x
    }
    return n > 0 ? mypow : 1/mypow
    
}

//java jump game
/*
Example 1:

Input: [2,3,1,1,4]
Output: true
Explanation: Jump 1 step from index 0 to 1, then 3 steps to the last index.
Example 2:

Input: [3,2,1,0,4]
Output: false
Explanation: You will always arrive at index 3 no matter what. Its maximum
jump length is 0, which makes it impossible to reach the last index.
 */

func canJump(_ nums: [Int]) -> Bool {
    var current_max = nums[0]
    var max_jump = nums[0]
    var i = 1
    while(i < nums.count && i <= max_jump){
        current_max = max(i + nums[i] , current_max)
        if (i == max_jump){
            max_jump = current_max
        }
        i = i+1
    }
    if (i == nums.count){
        return true
    }
    return false
}


//merge intervals
func merge(_ intervals: [[Int]]) -> [[Int]] {
    var intervals = intervals
    if intervals.count <= 1 {
        return intervals
    }
    intervals.sort { (elm1, elm2) -> Bool in
        var e1 = elm1
        var e2 = elm2
        return e1[0] <= e2[0]
    }
    print(intervals)
    var res = [[Int]]()
    var start = intervals[0][0]
    var end = intervals[0][1]
    
    for i in intervals {
        if i[0] <= end {
            end = max(end, i[1])
        } else {
            res.append([start, end])
            start = i[0]
            end = i[1]
        }
    }
    
    res.append([start, end])
    return res
}
merge([[1,3],[8,10],[2,6],[15,18]])


func lengthOfLastWord(_ s: String) -> Int {
    var count = 0
    for i in stride(from: s.count - 1, to: -1, by: -1){
        if Array(s)[i] != " "{
            count += 1
        }
        else{
            if count > 0{
                return count}
        }
    }
    return count


}
//The set [1,2,3,...,n] contains a total of n! unique permutations.
//
//By listing and labeling all of the permutations in order, we get the following sequence for n = 3:
//
//    "123"
//    "132"
//    "213"
//    "231"
//    "312"
//    "321"
//
//Input: n = 3, k = 3
//Output: "213"

    
//def getPermutation(self, n: int, k: int) -> str:
    //k-=1
    //nl = list(range(1,n+1))
    //out = ''
    //while n>0:
        //temp = math.factorial(n-1)
        //out+=str(nl.pop(k//temp))
        //k = k % temp
        //n -= 1
    //return out


//
//Input:
//[
//[1,3,1],
//[1,5,1],
//[4,2,1]
//]
//Output: 7
//Explanation: Because the path 1→3→1→1→1 minimizes the sum.

    
    
    

    
//    Input:
//    [
//    [1,3,1],
//    [1,5,1],
//    [4,2,1]
//    ]
//    Output: 7
//    Explanation: Because the path 1→3→1→1→1 minimizes the sum.
    
func minPathSum(_ grid: [[Int]]) -> Int {
    guard grid.count != 0 && grid[0].count != 0 else{
        return 0
    }
    let columncount = grid.count, rowcount = grid[0].count
    var dp = Array(repeating: Array(repeating: 0, count: rowcount), count: columncount)
//    let fiveZs = Array(repeating: "Z", count: 5)
//    print(fiveZs)
    // Prints "["Z", "Z", "Z", "Z", "Z"]"
    
    for column in 0..<columncount {
        for row in 0..<rowcount {
            if column == 0 && row == 0{    //esli v nachal'noi pozicii
                dp[column][row] = grid[column][row]   //prosto zapolni ego chislom dannogo massiva
            } else if column == 0 { //esli column nulevoi a row net, to vozmi value s verhnei row + grid
                dp[column][row] = dp[column][row - 1] + grid[column][row]
            } else if row == 0 { //esli row nulevoi, to voz'mi value s prediduwego columna + grid
                dp[column][row] = dp[column - 1][row] + grid[column][row]
            } else {  //v drugom sluchae, mi berem minimum ot verhney yacheiki ili s prediduwei + grid
                dp[column][row] = min(dp[column][row - 1], dp[column - 1][row]) + grid[column][row]
            }
            //print(dp)
        }
    }
    
    return dp[columncount - 1][rowcount - 1]
}

minPathSum([[1,3,1],[1,5,1],[4,2,1]])

//let n: String? = readLine()
//let arr: String? = readLine()
//let result = Set(arr!.split(separator: " ")).compactMap( { Int($0) } ).reduce(0, +)
//print(result)
//

//check if a string is a number

//def isNumber(self, s: str) -> bool:
//    try:
//    float(s)
//    return True
//    except:
//    return False


func plusOne(_ digits: [Int]) -> [Int] {
    var digits = digits
    var index = digits.count - 1
    
    while index >= 0 {
        if digits[index] < 9 {
            digits[index] += 1
            return digits
        }
        
        digits[index] = 0
        index -= 1
    }
    
    digits.insert(1, at: 0)
    return digits
}


func addBinary(a:String, b:String) -> String {
    func toInt(binaryString: String) -> Int {
        return strtol(binaryString, nil, 2)
    }
    
    let _a = toInt(binaryString: a)
    let _b = toInt(binaryString: b)
    
    return String(_a + _b, radix: 2)
}

//let result = addBinary(a:"11", b:"1")
addBinary(a: "11", b: "010")

//def addBinary(self, a: str, b: str) -> str:
//    a = int(a, base = 2)
//    b = int(b, base = 2)
//    output = a + b
//    return bin(output)[2:]    #output is like 0b100 as it is of basement 2

//Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
//Input: 2
//Output: 2
//Explanation: There are two ways to climb to the top.
//1. 1 step + 1 step
//2. 2 steps
//def climbStairs(self, n: int) -> int:
//    l=[1,2]
//    if n <=2:
//        return n
//    else:
//        for i in range(2,n):
//            l.append(l[i-1]+l[i-2])
//    return l[n-1]


//on delaet path pravil'nym
func simplifyPath(_ path: String) -> String {
    let arr = path.split{ $0=="/" }.map(String.init) //kazhdiy iz elementov budet string-om
    print(arr)
    var stack = [String]()
    for s in arr {
        if s == "" || s == "." { continue }
        if s == ".." { _ = stack.popLast(); continue; }
        stack.append(s)
    }
    return stack.isEmpty ? "/" : "/" + stack.joined(separator:"/")
}
simplifyPath("/thisi.////.home/")

//Given two words word1 and word2, find the minimum number of operations required to convert word1 to word2.
func minDistance(_ word1: String, _ word2: String) -> Int {
    guard word1 != word2 else { return 0 }
    let w1 = Array(word1)
    let w2 = Array(word2)
    var dp = Array(repeating: Array(repeating: Int.max, count: w2.count+1), count: w1.count+1)
    
    //i, j DO NOT MEANS Character at i or j
    //i, j MEANS the first i or j characters
    
    // init dp value
    for i in 0..<w1.count+1 { dp[i][0] = i}
    
    for j in 0..<w2.count+1 { dp[0][j] = j
    }
    
    for i in 1..<w1.count+1 {
        for j in 1..<w2.count+1 {
            if w1[i-1] == w2[j-1]  {
                // we do nothing extra here
                dp[i][j] = dp[i-1][j-1]
            } else {
                dp[i][j] = min(
                    dp[i][j-1] + 1,  //insert
                    dp[i-1][j] + 1,  //delete
                    dp[i-1][j-1] + 1 //replace
                )
            }
        }
    }
    return dp[w1.count][w2.count]
}
minDistance("hello", "hell")
//Given a m x n matrix, if an element is 0, set its entire row and column to 0. Do it in-place.

func setZeroes(matrix: inout [[Int]]) {
    var zeroRows = [Bool](repeating: false, count: matrix.count)
    var zeroColumns = [Bool](repeating: false, count: matrix[0].count)
    
    // detect zero rows and columns
    for rowIndex in 0..<matrix.count {
        for columnIndex in 0..<matrix[rowIndex].count {
            if matrix[rowIndex][columnIndex] == 0 {
                zeroRows[rowIndex] = true
                zeroColumns[columnIndex] = true
            }
        }
    }
    
    // set zeroRows' items to zero
    for rowIndex in 0..<zeroRows.count {
        if zeroRows[rowIndex] {
            makeRowZero(matrix: &matrix, rowIndex: rowIndex)
        }
    }
    
    // set zeroColumns' items to zero
    for columnIndex in 0..<zeroColumns.count {
        if zeroColumns[columnIndex] {
            makeColumnZero(matrix: &matrix, columnIndex: columnIndex)
        }
    }
}

func makeRowZero(matrix: inout [[Int]], rowIndex: Int) {
    for columnIndex in 0..<matrix[0].count {
        matrix[rowIndex][columnIndex] = 0
    }
}

func makeColumnZero(matrix: inout [[Int]], columnIndex: Int) {
    for rowIndex in 0..<matrix.count {
        matrix[rowIndex][columnIndex] = 0
    }
}




extension Array {
    var powerset: [[Element]] {
        guard count > 0 else {
            return [[]]
        }
        
        // tail contains the whole array BUT the first element
        let tail = Array(self[1..<endIndex])
        
        // head contains only the first element
        let head = self[0]
        
        // computing the tail's powerset
        let withoutHead = tail.powerset
        
        // mergin the head with the tail's powerset
        let withHead = withoutHead.map { $0 + [head] }
        
        // returning the tail's powerset and the just computed withHead array
        return withHead + withoutHead
    }
}

let myArray = ["A", "B", "C", "D"]
print(myArray.powerset) // -> [["D", "C", "B", "A"], ["C", "B", "A"], ["D", "B", "A"], ["B", "A"], ["D", "C", "A"], ["C", "A"], ["D", "A"], ["A"], ["D", "C", "B"], ["C", "B"], ["D", "B"], ["B"], ["D", "C"], ["C"], ["D"], []]

// joining the subsets
//let myResult = myArray.powerset.map{ $0.sort().joinWithSeparator("") }
//print(myResult) // -> ["A", "AB", "ABC", "ABCD", "ABD", "AC", "ACD", "AD", "B", "BC", "BCD", "BD", "C", "CD", "D", ""]

//
//Input: [1,2,2]
//Output:
//[
//[2],
//[1],
//[1,2,2],
//[2,2],
//[1,2],
//[]
//]
//
//def subsetsWithDup(self, nums: List[int]) -> List[List[int]]:
//subsets = [()]
//for num in sorted(nums):
//for subset in subsets[:len(subsets)]:
//subsets.append(subset + (num,))
//dici = {}
//for j in subsets:
//if j not in dici:
//dici[j] = 1
//else:
//subsets.remove(j)
//return subsets





//IMPLEMENT THE HASHSET FUNCTION

//class MyHashSet:
//def __init__(self):
//"""
//Initialize your data structure here.
//"""
//self.bucket = [[] for _ in range(20)]
//
//def hashFunction(self, key):
//return key % 5
//
//def add(self, key: int) -> None:
//if key not in self.bucket[self.hashFunction(key)]:
//self.bucket[self.hashFunction(key)].append(key)
//#print(self.bucket)
//
//def remove(self, key: int) -> None:
//    if key in self.bucket[self.hashFunction(key)]:
//self.bucket[self.hashFunction(key)].remove(key)
//#print(self.bucket)
//
//def contains(self, key: int) -> bool:
//return key in self.bucket[self.hashFunction(key)]
//
//
//# Your MyHashSet object will be instantiated and called as such:
//# obj = MyHashSet()
//# obj.add(key)
//# obj.remove(key)
//# param_3 = obj.contains(key)
//


func toLowerCase(_ str: String) -> String {
    return str.lowercased()
}



//Input: nums = [10, 5, 2, 6], k = 100
//Output: 8
//Explanation: The 8 subarrays that have product less than 100 are: [10], [5], [2], [6], [10, 5], [5, 2], [2, 6], [5, 2, 6].
//Note that [10, 5, 2] is not included as the product of 100 is not strictly less than k.

//def numSubarrayProductLessThanK(self, nums: List[int], k: int) -> int:
//res, p, i, j = 0, 1, 0, 0
//while i < len(nums):
//    p *= nums[i]
//    while p >= k and j <= i:
//        p /= nums[j]
//        j += 1
//    res += i - j + 1
//    i += 1
//return res


func sortArrayByParityII(_ A: [Int]) -> [Int] {
    var result = Array(repeating: 0 , count: A.count)
    print(result)
    var next_odd_idx = 1
    var next_even_idx = 0
    for a in A{
        if a % 2 == 0{
            result[next_even_idx] = a
            next_even_idx = min(next_even_idx + 2 , A.count - 1)
        }
        else{
            result[next_odd_idx] = a
            next_odd_idx = min(next_odd_idx + 2 , A.count - 1)
        }}
    return result
}

sortArrayByParityII([4,2,5,7])


//def minAddToMakeValid(self, S: str) -> int:
//tut pravil'nyi otver
//my_stack = []
//for i in S:
//if my_stack and my_stack[-1]=='(' and i==')':
//my_stack.pop()
//else:
//my_stack.append(i)
//return len(my_stack)
//

//def isLongPressedName(self, name: str, typed: str) -> bool:

//THIS CODE HAS PASSED 61 from 71 TEST CASES
    //berilgen = {}
    //taken = {}
    //for i in name:
        //if i not in berilgen:
            //berilgen[i] = 1
        //else:
            //berilgen[i] += 1
    //for j in typed:
        //if j not in taken:
            //taken[j] = 1
        //else:
            //taken[j] += 1
    //for j in taken:
        //if j in berilgen:
            //if berilgen[j] <= taken[j]:
                //taken[j] = berilgen[j]
            //else:
                //return false
    //return berilgen == taken

//ACCEPTED CODE
//def isLongPressedName(self, name: str, typed: str) -> bool:
    //N = len(name)
    //T = len(typed)
    //if name == typed:
        //return True
    //i, j = 0, 0
    //while i < N and j < T:
        //if name[i] == typed[j]:
            //i += 1
            //j += 1
        //elif i >= 0 and name[i-1] == typed[j]:
            //j += 1
        //else:
            //return False
    //if i == N: return True
    //return False


//Input: "00110"
//Output: 1
//Explanation: We flip the last digit to get 00111.

//def minFlipsMonoIncr(self, S: str) -> int:
    //dp = [0,0]
    //for i in range(len(S)):
        //if S[i]=='0':
            //dp = [dp[0], min(dp)+1]
        //else:
            //dp = [dp[0]+1, min(dp)]
    //return min(dp)


func numUniqueEmails(_ emails: [String]) -> Int {
    var emi = emails
    for i in 0..<emails.count{
        //print(emails[i])
        var fir = emi[i].split(separator: "@")[0]
        let sec = emi[i].split(separator: "@")[1]
        var h = ""
        if fir.contains("."){
            h = String(fir).replacingOccurrences(of: "." , with: "")
            
        }
        if h == ""{
            h += fir
        }
        if h.contains("+"){
            var o = h.split(separator: "+")
            let ii = o[0] + "@" + sec
            emi[i] = String(ii)
        }
    }
    print(emi)
    return (Set(emi)).count

}

numUniqueEmails(["test.email+alex@leetcode.com", "test.email@leetcode.com"])

//def numUniqueEmails(self, emails):
//mailSet = set()
//for email in emails:
//mail, domain = email.split("@")
//mail = mail.replace(".","")
//if "+" in mail:
//indx = mail.index("+")
//mailSet.add(mail[:indx]+"@"+domain)
//else:
//mailSet.add(mail+"@"+domain)
//return len(mailSet)


//#den' rozhdeniya
//def den(n):
//if n==1:
//return 0
//elif n==2:
//return 1
//else:
//return (n-1)*(den(n-1)+den(n-2))

//func getYes(){
//    let n: Int? = Int(readLine())
//    var mydict = [String : String]()
//    for i in 0..<Int(n!){
//        let m: String? = readLine()
//        m = m.split(separator: " ")
//        mydict[m[0]] = m[1]
//    }
//}


func reverseWords(_ s: String) -> String {
    if s.isEmpty {
        return s
    }
    var li = s.split(separator: " ")
    var res = ""
    for i in stride(from: li.count - 1 , to: -1, by: -1){
        if li[i] != " "{
            if i != 0{
                res += li[i] + " "
            }
            else {
                res += li[i]
            }
            
        }
    }
    return res
}

reverseWords("  hello world!  ")

//Input: [2,3,-2,4]
//Output: 6
//Explanation: [2,3] has the largest product 6.
func maxProduct(_ nums: [Int]) -> Int {
    if nums.isEmpty {
        return 0
    }
    if nums.count == 1{
        return nums[0]
    }
    var res = nums.max()!
    var i = 0
    var prevres = 1  //dlya podcheta rezul'tata dlya kazhdogo podmassiva
    for j in 0..<nums.count{
        i = j   //oznachaet nachalo podmassiva, for example, snachala s i=0 do nums.count-1 , potom i=1 do nums.count-1, potom i=2 ...
        while i + 1 < nums.count  {
            if prevres == 1{  //esli eto perviy podchet, to dobavlyai nachal'nuyu cifru
                prevres = nums[i] * nums[i+1]
            }
            else{
                prevres *= nums[i+1] //esli eto NE perviy podchet, to NE dobavlyai nachal'nuyu cifru
            }
            print(prevres)
            if prevres > res {
                res = prevres
            }
            i += 1
        }
        prevres = 1
    }
    return res
    
}

class MinStack {
    var mystack = [Int]()
    init() {
        mystack = [Int]()
    }
    
    func push(_ x: Int) {
        mystack.append(x)
    }
    
    func pop() {
        if mystack.count != 0{
            mystack.remove(at: mystack.endIndex - 1)
        }
    }
    
    func top() -> Int {
        if mystack.count != 0 {
            return mystack[mystack.count - 1]
        }
        else{
            return mystack[0]
        }
    }
    
    func getMin() -> Int {
        return mystack.min()!
    }
}



//A peak element is an element that is greater than its neighbors.
//this is binary search using python!!!

//def findPeakElement(self, nums: List[int]) -> int:
    //l, r = 0, len(nums) - 1
    //while l < r:
        //mid = (l + r) // 2
        //if nums[mid] < nums[mid + 1]:
            //l = mid + 1
        //else:
            //r = mid
    //return l

func findPeakElement(_ nums: [Int]) -> Int {
    return nums.index(of: nums.max()!)!
}


func maximumGap(_ nums: [Int]) -> Int {
    var nums2 = nums.sorted{ $0 < $1}
    var resu = -1000
    if nums2.count < 2{
        return 0
    }
    for k in stride(from: nums2.count - 1, to: 0, by: -1){
        if nums2[k] - nums2[k-1] > resu{
            resu = nums2[k] - nums2[k-1]
        }
    }
    return resu
}


//Compare two version numbers version1 and version2.
//If version1 > version2 return 1; if version1 < version2 return -1;otherwise return 0.
//Input: version1 = "0.1", version2 = "1.1"
//Output: -1
func compareVersion(_ version1: String, _ version2: String) -> Int {
    // var first = version1.split(separator: ".")
    // var second = version2.split(separator: ".")
    // var i = 0
    // var j = 0
    // if !version1.contains(".") && !version2.contains("."){
    //     if Int(version1) == Int(version2){
    //         return 0
    //     }
    //     else if Int(version1)! > Int(version2)!{
    //         return 1
    //     }
    //     else{
    //         return -1
    //     }
    // }
    // if(first == second){
    //     return 0
    // }
    // while i < first.count && j < second.count {
    //     if(first[i] > second[j]){
    //         return 1
    //     }
    //     else if(first[i] < second[j]){
    //         return -1
    //     }
    //     else{
    //         i += 1
    //         j += 1}
    // }
    // return 1
    let splitV1 = version1.split(separator: ".")
    let splitV2 = version2.split(separator: ".")
    
    let len = max(splitV1.count, splitV2.count)
    
    for i in 0..<len {
        let sv2 = i < splitV2.count ? String(splitV2[i]) : "0"
        let sv1 = i < splitV1.count ? String(splitV1[i]) : "0"
        
        if let v1 = Int(sv1), let v2 = Int(sv2) {
            if v2 > v1 {
                return -1
            }
            
            if v1 > v2 {
                return 1
            }
        }
    }
    
    return 0
    
}







//Input: numerator = 1, denominator = 2
//Output: "0.5"
//Example 2:
//
//Input: numerator = 2, denominator = 1
//Output: "2"
//Example 3:
//
//Input: numerator = 2, denominator = 3
//Output: "0.(6)"
func fractionToDecimal(_ numerator: Int, _ denominator: Int) -> String {
    var negative = false
    if( (numerator > 0 && denominator < 0) || (numerator < 0 && denominator > 0)){
        negative = true
    }
    var numer = abs(numerator)
    var deno = abs(denominator)
    var res = "\(numer / deno)"
    if negative{
        res = "-" + res
    }
    var remain = numer % deno
    if remain == 0{
        return res
    }
    var map = [Int: Int]()
    res += "."
    
    while(remain != 0){
        if map[remain] != nil{
            var index = map[remain]!
            var firstIndex = res.index(res.startIndex, offsetBy: index)
            var resStr = res[..<firstIndex] + "(" + res[firstIndex...] + ")"
            return resStr
        }else{
            map[remain] = res.count
        }
        remain = remain * 10
        res = res + "\(remain/deno)"
        remain = remain % deno
        
        
        
    }
    return res
}
//

//eto moi kod, on rabotaet na polovinu!!!
//func fractionToDecimal(_ numerator: Int, _ denominator: Int) -> String {
//    var mystr = Double(numerator)/Double(denominator) == Double(numerator/denominator) ? String(numerator/denominator) : String(Double(numerator)/Double(denominator))
//    var arr = [String.SubSequence]()
//    var res = ""
//    //  print(mystr)
//    if mystr.contains("."){
//        arr = mystr.split(separator: ".")
//        // print(arr)
//    }
//    else{
//        return mystr
//    }
//    if arr[1].count < 2 {
//        return mystr
//    }
//    else{
//        var repeated = Array(arr[1])[0]
//        var coun = 1
//        for j in 1..<arr[1].count{
//            //print(res)
//            // print(Array(arr[1])[j])
//            if Array(arr[1])[j] == repeated{
//                coun += 1
//            }
//            else{
//                if(coun>1){
//                    // print("count is bigger")
//                    res.append("(" + String(repeated) + ")")
//                    print(res)
//                }
//                else{
//                    res += String(repeated)
//                    if j+1 < arr[1].count{
//                        repeated = Array(arr[1])[j+1]
//                        coun = 0
//                    }
//                }
//            }
//        }
//        if(coun>1){
//            //print("count is bigger")
//            res.append("(" + String(repeated) + ")")
//            print(res)
//        }
//    }
//    return arr[0]+"."+res
//
//}




//Input: numbers = [2,7,11,15], target = 9
//Output: [1,2]
//Explanation: The sum of 2 and 7 is 9. Therefore index1 = 1, index2 = 2.


//def twoSum(self, numbers: List[int], target: int) -> List[int]:
//left, right = 0, len(numbers) - 1
//while left <= right:
//if numbers[left] + numbers[right] == target:
//return [left+1, right+1]
//elif numbers[left] + numbers[right] < target:
//left += 1
//elif numbers[left] + numbers[right] > target:
//right -= 1
//return [0, 0]


//Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.
//def majorityElement(self, nums):
    //for num in set(nums):
        //if nums.count(num) > len(nums)/2:
            //return num



//# Definition for a binary tree node.
//# class TreeNode:
//#     def __init__(self, x):
//#         self.val = x
//#         self.left = None
//#         self.right = None
//class BSTIterator:
//def __init__(self, root):
//self.stack = []
//while root:
//self.stack.append(root)
//root = root.left
//
//# @return a boolean, whether we have a next smallest number
//def hasNext(self):
//return len(self.stack) > 0
//
//# @return an integer, the next smallest number
//def next(self):
//node = self.stack.pop()
//x = node.right
//while x:
//self.stack.append(x)
//x = x.left
//return node.val
//
//
//
//# Your BSTIterator object will be instantiated and called as such:
//# obj = BSTIterator(root)
//# param_1 = obj.next()
//# param_2 = obj.hasNext()


func ones(arr : [Int])  -> Int{
    var countones = -100
    var countzeroes = 0
    var i = 0
    var indexzero = -1
    var newcount = 0
    for i in 0..<arr.count{
        if arr[i]==0{
            countzeroes += 1
            indexzero = i
            if countones != -100{
                newcount = 0
            }
        }
        if arr[i]==1{
            if countzeroes == 1{
                var k=indexzero+1
                var o=indexzero-1
                if k<arr.count{
                    while arr[k] != 0{
                        if arr[k] == 1{
                            newcount += 1
                        }
                        if k+1 < arr.count{
                            k += 1}
                        else{
                            break
                        }
                    }
                }
                if o>=0{
                    while arr[o] != 0 {
                        if arr[o] == 1{
                            newcount += 1
                        }
                        if o-1 >= 0{
                            o -= 1}
                        else{
                            break
                        }
                    }}
                
            }
            countzeroes = 0
        }
        countones = max(countones, newcount)
    }
    newcount = 0
    if countones == 0{
        for i in 0..<arr.count{
            if arr[i] == 1{
                newcount += 1
            }
            else{
                countones = max(newcount, countones)
                newcount = 0
            }
        }
        if countones == 0{
            countones = newcount}
    }
    return countones
}

ones(arr: [1,1,1,0,1,1,0])
