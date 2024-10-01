//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by jeseoyoung on 2024/09/22.
//

import Foundation

var history: Dictionary = [Int: Set<Int>]()
var round: Int = 1

func saveLotto(to lottoNumbers: Set<Int>) {
    history[round] = lottoNumbers
    round += 1
}

func checkLotto(to round: Int) {
    guard let lottoNumbers = history[round] else {
        print("해당 회차의 정보가 존재하지 않습니다.")
        return
    }
    let sortedNumbers = lottoNumbers.sorted()
        let numbersInRound = sortedNumbers.map { String($0) }.joined(separator: ", ")
        print("\(round)회차의 로또 당첨 번호는 \(numbersInRound)입니다.")
}
