//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by jeseoyoung on 2024/09/22.
//

import Foundation

var history: Dictionary = [String?: Set<Int>]()
var times: Int = 1

func saveLotto(to lottoNumbers: Set<Int>) {
    history["\(times)회차"] = lottoNumbers
    times += 1
}

func checkLotto(to round: Int) {
    if let lottoNumbers = history["\(round)회차"] {
        let sortedNumbers: [Int] = lottoNumbers.sorted()
        let numbersInRound = sortedNumbers.map { String($0) }.joined(separator: ", ")
               print("\(round)회차의 로또 당첨 번호는 \(numbersInRound)입니다.")
    } else {
        print("해당 회차의 정보가 존재하지 않습니다.")
    }
}
