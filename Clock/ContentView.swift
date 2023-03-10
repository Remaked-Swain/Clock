//
//  ContentView.swift
//  Clock
//
//  Created by Swain Yun on 2023/03/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            WorldTimeView()
                .tabItem {
                    Label("세계 시계", systemImage: "globe")
                }
            
            AlarmView()
                .tabItem {
                    Label("알람", systemImage: "alarm.fill")
                }
            
            StopwatchView()
                .tabItem {
                    Label("스톱워치", systemImage: "stopwatch.fill")
                }
            
            TimerView()
                .tabItem {
                    Label("타이머", systemImage: "timer")
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
