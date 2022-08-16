


func fractionToDecimal(_ numerator: Int, _ denominator: Int) -> String {
    if numerator == 0 {
        return "0"
    }
    var result = ""
    if numerator < 0 && denominator > 0 || numerator > 0 && denominator < 0 {
        result.append("-")
    }
    let numerator = abs(numerator), denominator = abs(denominator)
    var remainder = numerator % denominator
    
    // get number before "."
    result.append(String(numerator / denominator))
    
    // if have no remainder, divisable
    if remainder == 0 {
        return result
    }
   
    // no divisable
    result.append(".")
    var res = Array(result)
    
    var dict = [Int: Int]()
    while remainder != 0 {
        // if recursion appeared
        if dict[remainder] != nil {
            res.insert("(", at: dict[remainder]!)
            res.append(")")
            break
        }
        dict[remainder] = res.count
        //if not the we will not get integer
        remainder *= 10
        
        let tmp = String(remainder / denominator)

        res.append(contentsOf: Array(tmp))

        remainder %= denominator
        
    }
    return String(res)
}

print(fractionToDecimal(4, 333))
