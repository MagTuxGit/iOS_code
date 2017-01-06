// from 0 to 6 fraction digits
let formatter = NumberFormatter()
formatter.minimumFractionDigits = 0
formatter.maximumFractionDigits = 6
string = formatter.string(from: NSNumber(value: value))