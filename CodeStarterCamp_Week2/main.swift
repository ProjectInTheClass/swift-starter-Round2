//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func createLottoNumber() -> Set<Int> {
	
	var randomLotto: Set<Int> = []
	
	while randomLotto.count < 6 {
		randomLotto.insert(Int.random(in: 1...45))
	}
	
	return randomLotto
}

func checkLottoNumbers(myLottoNumbers: [Int]) -> Void {
	var correctNumbers = Array<Int>()
	let lottoNumbers = createLottoNumber()
	var lottoString = ""

	for number in myLottoNumbers {
		if(lottoNumbers.contains(number)) {
			correctNumbers.append(number)
		}
	}

	if(correctNumbers.isEmpty) {
		print("아쉽지만 겹치는 번호가 없습니다.")
	} else {
		for number in correctNumbers {
			lottoString.append("\(number), ")
		}
		lottoString.removeLast()
		lottoString.removeLast()

		print("축하합니다! 겹치는 번호는 \(lottoString) 입니다!")
	}
}

checkLottoNumbers(myLottoNumbers: myLottoNumbers)
