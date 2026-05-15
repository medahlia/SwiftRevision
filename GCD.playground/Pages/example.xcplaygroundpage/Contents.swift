import Foundation


//print(Thread.current) // <_NSMainThread: 0x600003144000>{number = 1, name = main}

/*
let concurrent = DispatchQueue.global(qos: .utility)
print(1)
concurrent.async { // відправте print(2) на concurrent queu
    //Thread.sleep(forTimeInterval: 2)
    print(2)
}
print(3) // !!! не завжди буде порядо "1 2 3", може бути і "1 3 2"
*/

/*
let concurrent = DispatchQueue.global(qos: .utility)

print(1, Thread.current)

concurrent.async {
    print(2, Thread.current)
}
concurrent.sync {
    print(3, Thread.current) // {number = 1, name = main}, бо визивається з головного потоку
}
*/
