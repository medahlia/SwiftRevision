import Foundation


// MARK: task 1
//print("1", Thread.current)
//
//DispatchQueue.global().async {
//    print("2", Thread.isMainThread, Thread.current)
//
//    DispatchQueue.main.async {
//        print("3", Thread.isMainThread, Thread.current)
//    }
//
//    print("4", Thread.current)
//}
//
//print("5", Thread.current)


// MARK: task 2
//print("A", Thread.current)
//
//DispatchQueue.main.async {
//    print("B", Thread.current)
//
//    DispatchQueue.global().sync { // !!!! виконай блок і ПОВЕРНИСЬ тільки після завершення. main thread: зупиняється і чекає завершення global.sync
//        print("C", Thread.current)
//    }
//
//    print("D", Thread.current)
//}
//
//print("E", Thread.current)


// MARK: task 3
//DispatchQueue.global().async {
//    print("1")
//
//    DispatchQueue.main.sync {
//        print("2")
//    }
//
//    print("3")
//}
//
//print("4")


// MARK: task 4
//DispatchQueue.main.async {
//    print("1")
//
//    DispatchQueue.main.sync {
//        print("2")
//    }
//
//    print("3")
//}
//
//print("4")


// MARK: task 5
//print("Start")
//
//DispatchQueue.global().async {
//    print("A")
//
//    DispatchQueue.global().sync {
//        print("B")
//    }
//
//    print("C")
//}
//
//print("End")


// MARK: task 6
//print("1")
//
//DispatchQueue.main.async {
//    print("2")
//
//    DispatchQueue.global().async {
//        print("3")
//
//        DispatchQueue.main.async {
//            print("4")
//        }
//
//        print("5")
//    }
//
//    print("6")
//}
//
//print("7")


// MARK: task 7
//DispatchQueue.global().async {
//    print("A")
//
//    DispatchQueue.main.async {
//        print("B")
//
//        DispatchQueue.global().async {
//            print("C")
//        }
//
//        print("D")
//    }
//
//    print("E")
//}


// MARK: task 8
//print(Thread.isMainThread)
//
//DispatchQueue.global().async {
//    print(Thread.isMainThread)
//
//    DispatchQueue.main.async {
//        print(Thread.isMainThread)
//    }
//}


// MARK: task 9
//DispatchQueue.global().async {
//    print("1")
//
//    DispatchQueue.main.async {
//        print("2")
//    }
//
//    Thread.sleep(forTimeInterval: 1)
//
//    print("3")
//}
//
//print("4")


// MARK: task 10
let queue = DispatchQueue(label: "test")

queue.async {
    print("1")

    queue.async {
        print("2")
    }

    print("3")
}

print("4")
