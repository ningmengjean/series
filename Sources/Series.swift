//Solution goes in Sources
import Foundation

struct Series {
    
    let input: [Int]
    
    init(_ input: String) {
        self.input = input.flatMap{ Int(String($0)) }
    }
    
    func slices(_ num: Int) -> [[Int]] {
        var arr = [[Int]]()
        for i in 0..<input.count {
            guard i+num <= input.count else {break}
            arr.append(Array(input[i..<i+num]))
        }
        return arr
    }
}
