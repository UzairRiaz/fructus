//
//  StartButtonView.swift
//  Fructus
//
//  Created by Umair Riaz on 20/06/2021.
//

import SwiftUI

struct StartButtonView: View {
    
    @AppStorage("isOnboarding") var isOnboading: Bool?
    
    var body: some View {
        Button(action: {
            isOnboading = false
        }, label: {
            HStack {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(Color.white, lineWidth: 1.25)
            )
        })
        .accentColor(Color.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
