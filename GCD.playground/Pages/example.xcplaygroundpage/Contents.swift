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


/*
let serial = DispatchQueue(label: "serial", qos: .userInteractive)
print(1, Thread.current)
serial.async {
    print(2, Thread.current)
}
serial.async {
    Thread.sleep(forTimeInterval: 5)
    print(3, Thread.current)
}
serial.async {
    print(4, Thread.current)
}
*/


/*
let serial = DispatchQueue(label: "serial", qos: .userInteractive)
print(1)
serial.async {
    print(2)
    
    serial.sync { // ДЕДЛОК !!!!!!!!!
        print(3)
    }
}
*/


/*
let main = DispatchQueue.main
let serial = DispatchQueue(label: "serial", qos: .userInteractive)
print(1)
main.sync { // ДЕДЛОК !!!!!!!!!
    print(2)
}
print(3)
*/


/*
let main = DispatchQueue.main
let serial = DispatchQueue(label: "serial", qos: .userInteractive)
serial.async {
    print(Thread.current)
    main.sync {
        print("fds", Thread.current)
    }
}
//<NSThread: 0x600001f71780>{number = 5, name = (null)}
//fds <_NSMainThread: 0x600001f78200>{number = 1, name = main} // запустилось на мейн, бо для мейн виключення
*/


/*
let main = DispatchQueue.main
let serial = DispatchQueue(label: "serial", qos: .userInteractive)
serial.async {
    print(1, Thread.current)
}
serial.async {
    print(2, Thread.current)
}
serial.async {
    print(3, Thread.current)
}
DispatchQueue.global(qos: .background).async {
    serial.sync {
        print(4, Thread.current)
    }
}
*/


/*
let serial = DispatchQueue(label: "serial")
print(Thread.current.qualityOfService.rawValue) // 33

serial.async {
    print(Thread.current.qualityOfService.rawValue) // 25
}

DispatchQueue.global(qos: .utility).async { // .background = 9
    serial.async {
        print(Thread.current.qualityOfService.rawValue) // 17
    }
}
*/


let concurrent = DispatchQueue(label: "concurrent", attributes: .concurrent)

concurrent.async {
    print(1, Thread.current)
    concurrent.async {
        for i in 0...10 {
            print("⚡️", i, Thread.current)
            Thread.sleep(forTimeInterval: 1)
        }
    }
    concurrent.sync {
        for i in 0...10 {
            print("🧠", i, Thread.current)
            Thread.sleep(forTimeInterval: 1)
        }
    }
    concurrent.async {
        for i in 0...10 {
            print("🔗", i, Thread.current)
            Thread.sleep(forTimeInterval: 1)
        }
    }
}
