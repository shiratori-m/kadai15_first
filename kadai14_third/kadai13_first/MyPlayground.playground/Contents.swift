import UIKit

var str = "Hello, playground"

struct Fruit {
    var named:String
    var isChecked:Bool
}

var p = Fruit(named: "りんご", isChecked: true)
p
p.named
p.isChecked

var q = [Fruit(named: "りんご", isChecked: true),Fruit(named: "みかん", isChecked: false)]
q
q[0].named
q[0].isChecked
q[1].named
q[1].isChecked


q[1].isChecked.toggle()
