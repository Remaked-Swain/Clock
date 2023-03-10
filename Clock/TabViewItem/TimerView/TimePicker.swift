//
//  TimePicker.swift
//  Clock
//
//  Created by Swain Yun on 2023/03/08.
//

import SwiftUI

struct TimePicker: View {
    let title: String
    let range: ClosedRange<Int>
    let selection: Binding<Int>
    
    var body: some View {
        HStack(spacing: -4) {
            Picker(title, selection: selection) {
                ForEach(range, id: \.self) { time in
                    Text("\(time)")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.trailing)
                }
            }
            .pickerStyle(.wheel)
            .labelsHidden()
            
            Text(title)
                .fontWeight(.bold)
        }
    }
}

//struct TimePicker_Previews: PreviewProvider {
//    static var previews: some View {
//        TimePicker(title: "분", range: 0...59, selection: .constant(10), frame: ())
//    }
//}
