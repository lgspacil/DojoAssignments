//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    var species = "H. Sapiens"
    var name: String
    init(name: String) {   // Note this function doesn't get called explicitly. It is called
        // when creating an instance using initialization syntax -- "Person()".
        self.name = name     // Note use of "self" here to refer to the name property.
    }
    func speak() {
        print("Hello! I am a \(self.species) and my name is \(self.name)")
        // Note how we refer to the properties using "self".
    }
}
var myPerson: Person = Person(name: "Jay")   // Now we have to pass a param to Person initialization.
myPerson.speak()


