//
//  FruitHeader.swift
//  Fructus
//
//  Created by Umair Riaz on 28/06/2021.
//

import SwiftUI

struct FruitHeader: View {
    
    var fruit: Fruit
    
    @State private var isAnimatingImage: Bool = false
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }//: ZStack
        .frame(height: 440)
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

struct FruitHeader_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeader(fruit: fruitsData[0])
    }
}
