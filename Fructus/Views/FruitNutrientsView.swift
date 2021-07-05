//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Umair Riaz on 28/06/2021.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    var fruit: Fruit
    
    let nutrient: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrient.count, id: \.self) { item in
                    Divider()
                    HStack {
                        Group{
                            Image(systemName: "info.circle")
                            Text(nutrient[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer()
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }//: GrtoupBox
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
