//
//  ContentView.swift
//  ParallaxEffect
//
//  Created by Alexander Römer on 20.08.20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rotatieIn3D = false
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text("Monday")
                    
                Text("30°")
                    .font(.system(size: 44))
                    .fontWeight(.bold)
                
                Spacer()
                
                Image(systemName: "sun.max.fill")
                    .foregroundColor(.yellow)

                
                Text("Sunny")
                    .frame(width: 150, height: 20, alignment: .leading)
                
                Text("H:30° L:07°")
            }
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color(.systemGray6)]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(22)
            .foregroundColor(.white)
        }
        .frame(width: 170, height: 170, alignment: .leading)
        .rotation3DEffect(.degrees(rotatieIn3D ? 12 : -12), axis: (x: rotatieIn3D ? 90 : -45, y: rotatieIn3D ? -45 : -90, z:0))
        .animation(Animation.easeInOut(duration: 3).repeatForever(autoreverses: true))
        .onAppear() {
            rotatieIn3D.toggle()
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
