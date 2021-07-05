import SwiftUI

struct FruitCardView: View {
    
    var fruit: Fruit
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20, content: {
                // Fruit Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.5), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                //Fruit Title
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                //Fruit Heading
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 15)
                    .frame(maxWidth: 480)
                //Button
                StartButtonView()
            })
        }
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20.0)
        .padding(.horizontal, 20)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
