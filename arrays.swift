// init
var threeDoubles = [1.1, 2.2, 3.3]
var anotherThreeDoubles = Array(repeating: 0.0, count: 3)   // [0.0, 0.0, 0.0]
var sixDoubles = threeDoubles + anotherThreeDoubles		    // [1.1, 2.2, 3.3, 0.0, 0.0, 0.0]
let array = Array(string)			                        // init [Character] from String

// iteration
for item in array { ... }
for (index, value) in array.enumerated() { ... }

// ranges
let array = ["a", "b", "c", "d", "e", "f"]
let subarray1 = array[2...3]		// ["c", "d"]
let subarray2 = array[2..<3]		// ["c"]
array[3...5] = ["x", "y"]		    // ["a", "b", "c", "x", "y"] – replace 3 items by 2 items

// filter(includeElement: (T) -> Bool) -> [T]
let bigNumbers = [2, 150, 40, 17, 39, 7].filter({ $0 > 20 })	// [150, 40, 39]

// map(transform: (T) -> U) -> [U]
let stringified: [String] = [1,2,3].map { String($0) }		// ["1","2","3"]

// reduce(initial: U, combine: (U,T) -> U) -> U
let sum: Int = [1,2,3].reduce(0) { $0 + $1 }			// 0+1+2+3=6


// joined() array of any type
anyArray.map({"\($0)"}).joined()    // or map({String($0)})

