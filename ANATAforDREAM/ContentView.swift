//
//  ContentView.swift
//  ANATAforDREAM
//
//  Created by MacBook Pro on 2021/02/28.
//

import SwiftUI

struct ContentView: View {
    @State var isStart2Presented = false
    var body: some View {
        ZStack {
            StartView(isPresented: $isStart2Presented)
            
            if isStart2Presented {
                Start2View()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
