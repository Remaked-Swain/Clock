//
//  TimerModel.swift
//  Clock
//
//  Created by Swain Yun on 2023/03/08.
//

import Foundation

class TimerModel: ObservableObject {
    @Published var selectionOfHours = 0
    @Published var selectionOfMinute = 0
    @Published var selectionOfSecond = 0
    
    let rangeOfHour = 0...23
    let rangeOfMinute = 0...59
    let rangeOfSecond = 0...59
}
