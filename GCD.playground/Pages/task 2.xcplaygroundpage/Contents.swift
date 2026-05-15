import Foundation


print("1")
DispatchQueue.main.async {
    print("2")
    
    DispatchQueue.main.async {
        Thread.sleep(forTimeInterval: 2)
        print("3")
        print("4")
    }
    print("5")
    
    DispatchQueue.global().sync {
        print("6", Thread.isMainThread)
        
        DispatchQueue.main.async {
            print("7")
            print("8")
        }
    }
}
print("9")
DispatchQueue.main.async {
    print("10")
    print("11")
}
