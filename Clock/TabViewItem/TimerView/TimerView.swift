//
//  Timer.swift
//  Clock
//
//  Created by Swain Yun on 2023/03/08.
//

import SwiftUI

struct TimerView: View {
    @State private var timerModel = TimerModel()
    
    var body: some View {
        GeometryReader { geometry in
            HStack {
                TimePicker(title: "시간", range: timerModel.rangeOfHour, selection: $timerModel.selectionOfHours)
                
                TimePicker(title: "분", range: timerModel.rangeOfMinute, selection: $timerModel.selectionOfMinute)
                
                TimePicker(title: "초", range: timerModel.rangeOfSecond, selection: $timerModel.selectionOfSecond)
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.black)
            .foregroundColor(.white)
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
