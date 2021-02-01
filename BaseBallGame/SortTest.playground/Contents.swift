import UIKit
import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var arr = [Int]()
    for i in 0..<numbers.count {
        arr[i] = numbers[i] + numbers[i+1]
    }
    return arr
}

solution([1,3,2,5,1])
