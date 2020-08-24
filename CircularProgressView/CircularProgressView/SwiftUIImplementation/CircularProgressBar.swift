//
//  CircularProgressBar.swift
//  CircularProgressView
//
//  Created by Gagan  Vishal on 8/24/20.
//  Copyright © 2020 Gagan  Vishal. All rights reserved.
//

/*
 
 Please add this code in SWift UI app
 */

import SwiftUI

struct ContentView: View {
    @State private var completionAmount: CGFloat = 1.0
    let timer = Timer.publish(every: (1/90)*60, on: .main, in: .default).autoconnect()
    
    var body: some View {
        ZStack {
            //1.
            Circle()
                .trim(from: 0.0, to: completionAmount)
                .stroke(Color.red, lineWidth: 20)
                .rotationEffect(.degrees(-90))
                .onReceive(timer, perform: { _ in
                    withAnimation {
                        guard completionAmount >= 0.0 else {return}
                        completionAmount -= 0.01
                    }
                })
                .padding()
            //2.
            Text("\(String(format: "%02d", Int(completionAmount*100)))")
        }
    }
}
        
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11 Pro")
    }
}
