//
//  SortViewController.swift
//  HelloSwift
//
//  Created by lixiaoyi on 2025/12/14.
//


class SortCase {

    static var nums = [5,2,3,1]
    

    
}


// 冒泡排序
extension SortCase {
    
    // 一、冒泡排序
    static func bubbleSort() {
        print("原始数组：\(nums)")
        let list = SortCase._bubbleSort(nums: nums)
        print("排序后数组：\(list)")
    }
    
    private static func _bubbleSort(nums: [Int]) -> [Int] {
        let n = nums.count
        var array = nums
        for i in 0 ..< n {
            for j in 0 ..< n - 1 - i {
                if array[j] > array[j + 1] {
                    array.swapAt(j, j+1)
                }
            }
        }
        return array
    }
    
    
    // 二、冒泡排序的进一步优化
    static func bubbleSort2() {
        print("原始数组：\(nums)")
        let list = SortCase._bubbleSort2(nums: nums)
        print("排序后数组：\(list)")
    }
    
    
    private static func _bubbleSort2(nums: [Int]) -> [Int] {
        let n = nums.count
        var array = nums
        
        for i in 0 ..< n {
            var isSwap = false
            for j in 0 ..< n - 1 - i {
                if array[j] > array[j + 1] {
                    array.swapAt(j, j+1)
                    isSwap = true
                }
            }
            
            // 如果一轮下来没有交换，说明已经有序
            if isSwap == false { break }
        }
        
        return array
    }
    
}
