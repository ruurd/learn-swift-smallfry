import Foundation

func f() {
    var s: String { return "\(Date())" }
    print(s)
    sleep(2)
    print(s)
}

f()
