//
//  Untitled.swift
//  CodeStarterCamp_Week2
//
//  Created by 최범수 on 2024-09-30.
//

import Foundation

var lottoRoundAndNumbers = [Int:Array<Int>]()

func pickLottoNumber() -> Int {
    return Int.random(in: 1...45)
}

func createLottoNumbers() {
    var lottoNumbers : Set<Int> = Set()

    while lottoNumbers.count < 6 {
        lottoNumbers.insert(pickLottoNumber())
    }
    
    lottoRoundAndNumbers[lottoRoundAndNumbers.count + 1] = Array(lottoNumbers).sorted()
}

func findLottoNumbers(_ round : Int) {
    if lottoRoundAndNumbers[round] != nil {
        print("\(round)회차의 로또 당첨 번호는 \(lottoRoundAndNumbers[round]!.map{ String($0) }.joined(separator: ", ")) 입니다.")
    } else {
        print("회차가 아직 진행되지 않았습니다.")
    }
}
