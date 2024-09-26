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

print("당첨 번호 : \(showLottoNum())")
