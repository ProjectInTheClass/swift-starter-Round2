//
//  Week2Step2.swift
//  CodeStarterCamp_Week2
//
//  Created by mingmac on 2022/04/26.
//

import Foundation

func createRandomLottoSet() -> Set<Int> {
    var setOfLottoNumber: Set<Int> = Set<Int>()
    while setOfLottoNumber.count < 6 {
        let lottoNumber: Int = Int.random(in: 1...45)
        setOfLottoNumber.insert(lottoNumber)
    }
    print("\(setOfLottoNumber)")
    return setOfLottoNumber
}
