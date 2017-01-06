// UInt32
let randomNumber = arc4random_uniform(upper - lower) + lower
let randomNumber = arc4random_uniform(100)  // range is 0 to 99

// convert the UInt32 to some other  types
let randomTime:TimeInterval = TimeInterval(randomNum)
let someInt:Int = Int(randomNum)
let someString:String = String(randomNum)

// Double
Double(arc4random()) / Double(UINT32_MAX)
Double(arc4random()) / 0xFFFFFFFF
Double(arc4random()) / 0xFFFFFFFF * (max - min) + min

// Sign
(arc4random_uniform(2) == 0) ? 1.0 : -1.0

// other
drand48() ?
rand() generates same number every time