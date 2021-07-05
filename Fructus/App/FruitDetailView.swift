//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Umair Riaz on 28/06/2021.
//

import SwiftUI

struct FruitDetailView: View {
    
    var fruit: Fruit
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(alignment: .center, spacing: 20, content: {
                    
                    //Header
                    FruitHeader(fruit:fruit)
                    VStack (alignment: .leading, spacing: 20){
                        //Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .foregroundColor(fruit.gradientColors[1])
                            .fontWeight(.heavy)
                        //Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        //Nutrients
                        FruitNutrientsView(fruit: fruit)
                        //Subheadlines
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        //Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //Link
                        SourceLinkView()
                    }//: VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640)
                })//: VStack
            })//: ScrollView
            .navigationBarTitle(fruit.title, displayMode: .inline)
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.top)
        }//: NavigationView
    }//: View
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
