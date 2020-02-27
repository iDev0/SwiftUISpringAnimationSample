//
//  ContentView.swift
//  SpringAnimationSample
//
//  Created by iDev0 on 2020/02/28.
//  Copyright © 2020 Ju Young Jung. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var rotatingAngle: Double = 0
    
    var body: some View {
        
        Button(action : {
            self.rotatingAngle += 90
        }) {
            Rectangle()
                .fill(Color.green)
                .frame(width: 200, height: 200)
                .rotationEffect(.degrees(rotatingAngle))
                .animation(.interpolatingSpring(mass: 1, stiffness: 1, damping: 0.5, initialVelocity: 1))
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
