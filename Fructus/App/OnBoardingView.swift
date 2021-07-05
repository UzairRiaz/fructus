import SwiftUI

struct OnBoardingView: View {
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        TabView{
            ForEach(fruits) { item in
                FruitCardView(fruit: item)
            }
        }
            .tabViewStyle(PageTabViewStyle())
            .padding(.vertical, 20)
        
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitsData)
            
    }
}
