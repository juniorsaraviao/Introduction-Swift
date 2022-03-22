import UIKit

let names = ["Peru", "Chile", "Italy", "UK", "Argentina"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reverseName = names.sorted(by: backward)
/*
 { (params) -> return type in
    // Code...
 }
 */

reverseName = names.sorted(by: { s1, s2 in s1 > s2 })
print(reverseName)
// Other ways:
//reverseName = names.sorted(by: { $0 > $1})
//reverseName = names.sorted(by: >)
