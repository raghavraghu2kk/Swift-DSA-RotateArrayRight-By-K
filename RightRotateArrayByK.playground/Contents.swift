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

func rotate(_ nums: inout [Int], _ k: Int) {
        let N : Int = nums.count
        let K : Int = k % N
        reverse(&nums,0,N-K-1)
        reverse(&nums,(N-K),(N-1))
        reverse(&nums,0,(N-1))
    }

    private func reverse(_ nums: inout [Int], _ startIdx: Int, _ endIdx: Int) {
        var startIdx = startIdx
        var endIdx = endIdx
        while startIdx < endIdx {
            (nums[startIdx], nums[endIdx]) = (nums[endIdx], nums[startIdx])
            startIdx += 1
            endIdx -= 1
        }
    }

var nums = [1,2,3,4,5,6,7,8]

print(rotate(&nums, 5))
print(nums)
