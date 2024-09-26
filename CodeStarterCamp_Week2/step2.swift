//
//  step1.swift
//  CodeStarterCamp_Week2
//
//  Created by jeseoyoung on 2024/09/20.
//

import Foundation

func pickLotto() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    
    while lottoNumbers.count < 6 {
        var randomNumber: Int = Int.random(in: 1..<46)
        lottoNumbers.insert(randomNumber)
    }
    
    return lottoNumbers
}

func compareLottos(from myNumbers: [Int], to winningLottos: Set<Int>) {
    var matchingNumbers: [Int] = [Int]()

    for myNumber in myNumbers {
        if winningLottos.contains(myNumber) {
            matchingNumbers.append(myNumber)
        }
    }
    
    if matchingNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let joinedNumbers = matchingNumbers.map { String($0) }.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(joinedNumbers)입니다!")
    }
}
