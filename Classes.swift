//  Copyright 2024 Michael Deller
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
//  https://docs.swift.org/swift-book/documentation/the-swift-programming-language/classesandstructures/
//  https://docs.swift.org/swift-book/documentation/the-swift-programming-language/inheritance
//  https://docs.swift.org/swift-book/documentation/the-swift-programming-language/initialization
//  https://www.hackingwithswift.com/quick-start/beginners/checkpoint-7

//  Define Animal Class

class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

// Subclass Dog inherits Animal Class

class Dog: Animal {
    override init(legs: Int) {
        super.init(legs: legs)
    }

    // add a function
    func speak() {
        print ("Ruff Ruff Ruff!")
    }
}

class Corgi: Dog {
    // most dogs have 4 legs, so we default to that
    override init(legs: Int = 4) {
        super.init(legs: legs)
    }
    
    override func speak() {
        print ("Yip Yip Yip!")
    }
}

var fluffy = Corgi(legs: 3) // specify an override number of legs
fluffy.speak()
print("fluffy has \(fluffy.legs) legs")

// Yap Yap Yap!
// fluffy has 3 legs

var radar = Corgi() // inherit the default number of legs
radar.speak()
print("radar has \(radar.legs) legs")

// Yip Yip Yip!
// radar has 4 legs
