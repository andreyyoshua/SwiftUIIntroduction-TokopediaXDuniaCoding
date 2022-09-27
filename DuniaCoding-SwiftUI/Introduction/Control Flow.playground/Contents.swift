import UIKit

// MARK: CONTROL FLOW
var total = 0
for i in 0..<4 {
    total += i
}
print(total)

let individualScores = [75, 43, 103, 87, 12]
for score in individualScores {
    if score > 50 {
        print("Your score \(score) is passed")
    } else {
        print("Your score \(score) is failed")
    }
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)

var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

