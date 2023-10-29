//
//  ContentView.swift
//  Animating Circles
//
//  Created by python on 29/10/23.
//

import SwiftUI

struct ContentView: View {
    //MARK: Properties
    
    @State private var scaleInOut = false
    @State private var rotateInOut = false
    @State private var moveInOut = false
    
    //MARK: BODY
    var body: some View {
        ZStack{
            Rectangle()
                .edgesIgnoringSafeArea(.all)
            ZStack{
                
                //MARK: Circleset 1
                ZStack{
                    Circle()
                        .fill(LinearGradient(colors: [.green, .white], startPoint: .top, endPoint:  .bottom))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? -60 : 0)
                    
                    Circle()
                        .fill(LinearGradient(colors: [.green, .white], startPoint: .top, endPoint:  .bottom))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? 60 : 0)
                }.opacity(0.5)
                
                //MARK: Circleset 2
                ZStack{
                    Circle()
                        .fill(LinearGradient(colors: [.green, .white], startPoint: .top, endPoint:  .bottom))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? -60 : 0)
                    
                    Circle()
                        .fill(LinearGradient(colors: [.green, .white], startPoint: .top, endPoint:  .bottom))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? 60 : 0)
                }.opacity(0.5)
                    .rotationEffect(.degrees(60))
                
                //MARK: Circleset 3
                ZStack{
                    Circle()
                        .fill(LinearGradient(colors: [.green, .white], startPoint: .top, endPoint:  .bottom))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? -60 : 0)
                    
                    Circle()
                        .fill(LinearGradient(colors: [.green, .white], startPoint: .top, endPoint:  .bottom))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? 60 : 0)
                }.opacity(0.5)
                    .rotationEffect(.degrees(120))
                
                
            }.rotationEffect(.degrees(rotateInOut ? 90 : 0))
                .scaleEffect(scaleInOut ? 1 : 1/4)
                .animation(Animation
                    .easeInOut
                    .repeatForever(autoreverses: true).speed(1/8 ))
                .onAppear{
                    moveInOut.toggle()
                    scaleInOut.toggle()
                    rotateInOut.toggle()
                }
        }//:BODY
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
