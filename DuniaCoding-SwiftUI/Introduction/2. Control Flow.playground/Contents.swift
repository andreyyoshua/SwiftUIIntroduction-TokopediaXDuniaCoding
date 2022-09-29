import UIKit

// IF
var isHappy = true
if isHappy {
    print("I'am Happy")
} else {
    print("I'am not happy")
}

// FOR
var total = 0
for i in 0..<4 {
    total += i
}

// FOR - IF
let individualScores = [75, 43, 103, 87, 12]
for score in individualScores {
    if score > 50 {
        print("Your score \(score) is passed")
    } else {
        print("Your score \(score) is failed")
    }
}

// WHILE
var n = 2
while n < 100 {
    n *= 2
}

