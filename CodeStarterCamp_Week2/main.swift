//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 9, 3, 34, 20, 41]

for _ in 1...5 {
    let lottoNumbers = pickLotto()
    saveLotto(to: lottoNumbers)
}

checkLotto(to: 1)
