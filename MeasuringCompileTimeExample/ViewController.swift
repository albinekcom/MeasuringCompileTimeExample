import UIKit

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func method1() {
        let sum = [1, 2, 3].map { String($0) }.compactMap { Int($0) }.reduce(0, +)
        
        print(sum)
    }
    
    private func method2() {
        let sum = [1, 2, 3].map { (num: Int) -> String in String(num) }.compactMap { (str: String) -> Int? in Int(str) }.reduce(0, +)
        
        print(sum)
    }
    
}
