//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func picLottoNum() -> Int {
    return Int.random(in: 1...45)
}

func showLottoNum() -> Set<Int> {
    var lottoNums : Set<Int> = Set()

    while lottoNums.count < 6 {
        lottoNums.insert(picLottoNum())
    }
    
    return lottoNums
}

var myLottoNumbers : Set<Int> = [1,2,3,4,5,6]

func checkCommonNums(nums : Set<Int>) {
    let choosenNums = showLottoNum()
    if nums.intersection(choosenNums).isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    else {
        print("축하합니다! 겹치는 번호는 \(choosenNums.intersection(nums))입니다!")

    }
}

checkCommonNums(nums: myLottoNumbers)
