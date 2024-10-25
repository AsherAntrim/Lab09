//
//  ContentView.swift
//  Lab09
//
//  Created by Asher Antrim on 10/25/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var targetX: CGFloat = 0
    @State private var ballX: CGFloat = 0
    @State private var ballY: CGFloat = 0
    @State private var size: CGSize = .zero
    
    
    private func randomX(for size: CGSize) -> CGFloat {
        CGFloat(Double.random(in: 0..<Double(size.width)))
    }
    
    private func ResetGame() {
        targetX = randomX(for: size)
    }
    
    
    
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: 60, height: 60)
                    .position(x: targetX, y: 15)
                Circle()
                    .foregroundColor(.black)
                    .frame(width: 20, height: 20)
                    .position(x: 200, y: 750)
                VStack {
                    Spacer()
                    HStack {
                        Button(action: {// angle ball x degrees to left
                        }) {
                            Image(systemName: "arrow.left")
                                .font(.title)
                                .foregroundColor(.blue)
                        }
                        Spacer()
                        Button("Reset") {
                            ResetGame()
                        }
                        .foregroundColor(.blue)
                        
                        Spacer()
                        
                        Button("Shoot!") {
                            // Shoot the ball
                        }
                        .foregroundColor(.blue)
                        
                        Spacer()
                        Button(action: { // angle ball x degrees to right
                        }) {
                            Image(systemName: "arrow.right")
                                .font(.title)
                                .foregroundColor(.blue)
                        }
                    }
                    .padding()
                }
            }
            .foregroundColor(.white)
        }
    }
}




#Preview {
    ContentView()
}
