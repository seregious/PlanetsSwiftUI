//
//  Background.swift
//  Planets
//
//  Created by Сергей Иванчихин on 10.05.2022.
//

import SwiftUI

struct BackgroundAnimation: View {
    
    let colors = [.black ,Color("darkPurple"), .black]
    let colorsRadial = [.black, Color("darkBlue"), Color("darkMint")]
    @State var animate = false
    
    var body: some View {
        ZStack {
            
            RadialGradient(colors: colorsRadial, center: animate ? .topLeading : .bottomTrailing, startRadius: 100, endRadius: UIScreen.main.bounds.height)
            
            LinearGradient(colors: colors, startPoint: animate ? .topLeading : .bottomLeading, endPoint: animate ?  .bottomTrailing : .topTrailing)
                .opacity(0.5)
        }
                .ignoresSafeArea()
                .onAppear {
                        withAnimation(.linear(duration: 20.0).repeatForever(autoreverses: true)) {
                            animate.toggle()
                        }
            }
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAnimation()
    }
}
