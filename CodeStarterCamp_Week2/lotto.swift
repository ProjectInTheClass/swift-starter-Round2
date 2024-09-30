//
//  Untitled.swift
//  CodeStarterCamp_Week2
//
//  Created by 최범수 on 2024-09-30.
//

import Foundation

func pickLottoNum() -> Int {
    return Int.random(in: 1...45)
}

func showLottoNums() -> Set<Int> {
    var lottoNums : Set<Int> = Set()

    while lottoNums.count < 6 {
        lottoNums.insert(pickLottoNum())
    }
    
    return lottoNums
}

var myLottoNumbers : Set<Int> = [1,2,3,4,5,6]

func checkCommonNums(nums : Set<Int>) {
    let choosenNums = showLottoNums()
    
    if nums.intersection(choosenNums).isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    
    else {
        var stringLottoNums : Array<String> = []
        
        for num in nums.intersection(choosenNums) {
            stringLottoNums.append("\(num)")
        }
        
        print("축하합니다! 겹치는 번호는 " + stringLottoNums.sorted().joined(separator: ", ") + "입니다!")
    }
}
