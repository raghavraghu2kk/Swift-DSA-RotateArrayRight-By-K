import UIKit

func rightRotateByK(_ arr: [Int], _ d: Int) -> [Int]{
    let N = arr.count
    let K = d % N
    
    var temp1 : [Int] = []
    for i in N-K..<N {
        temp1.append(arr[i])
    }
    
    var temp2 : [Int] = []
    for i in 0..<N-K {
        temp2.append(arr[i])
    }
    
    for i in 0..<N-K {
        temp1.append(temp2[i])
    }
        
    return temp1
}

print(rightRotateByK([1,2,3,4,5], 2))
