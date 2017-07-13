import Darwin

func tossCoin() -> String{
    let random = arc4random_uniform(2)
    
    if random == 1{
        return "Heads"
    }
    else{
        return "Tails"
    }
}


func tossMultipleCoins(times: Int) -> Double{
    var headcount = 0
    var tailscount = 0
    
    for _ in 0...times{
        if tossCoin() == "Heads"{
            headcount += 1
        }
        else{
            tailscount += 1
        }
    }
    
    return Double(times) / Double(headcount)
}

tossMultipleCoins(times: 5)










