//
//  Mode.swift
//  MainApp
//
//  Created by wanghui on 2022/9/26.
//

import Foundation

func customeSum(_ value: Int ...) -> Int {
    return value.reduce(0, { $0 + $1 })
}
