//
//  Untitled.swift
//  CodeStarterCamp_Week2
//
//  Created by 최범수 on 2024-09-30.
//

import Foundation

var lottoRoundAndNumbers = [Int:Set<Int>]()

func pickLottoNumber() -> Int {
    return Int.random(in: 1...45)
}

func createLottoNumbers() {
    var lottoNumbers : Set<Int> = Set()

    while lottoNumbers.count < 6 {
        lottoNumbers.insert(pickLottoNumber())
    }
    
    lottoRoundAndNumbers[lottoRoundAndNumbers.count + 1] = lottoNumbers
}

func findLottoNumbers(roundFrom round : Int) {
    if let numbers : Set<Int> = lottoRoundAndNumbers[round] {
        print("\(round)회차의 로또 당첨 번호는 \(numbers.sorted().map{ String($0) }.joined(separator: ", ")) 입니다.")
    } else {
        print("회차가 아직 진행되지 않았습니다.")
    }
}
