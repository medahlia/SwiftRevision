import Foundation


print(1, Thread.current)
DispatchQueue.main.async { // лише відправляємо на чергу, не чекаємо виконання
    print(2, Thread.current)
    
    DispatchQueue.main.async {
        print(3, Thread.current)
    }
}
Thread.sleep(forTimeInterval: 2)
print(4, Thread.current)
