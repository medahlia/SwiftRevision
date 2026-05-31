import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Welcome to")
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .foregroundStyle(.primary)
            Text("Swift Pizza")
                .font(.system(size: 50)).fontWeight(.heavy)
                .foregroundStyle(Color(UIColor.systemBlue))
                .opacity(0.8)
            
            Spacer()
            VStack (alignment: .leading, spacing: 24) {
                HStack (alignment: .top, spacing: 20) {
                    Image(systemName: "bag").resizable()
                        .frame(width: 40, height: 40)
                        .foregroundStyle(Color(UIColor.systemBlue))
                        .opacity(0.8)
                    VStack (alignment: .leading, spacing: 4) {
                        Text("Order Everything")
                            .font(.headline)
                            .bold()
                        Text("Our whole menu is available in the app.")
                            .font(.subheadline)
                    }
                }
                HStack (alignment: .top, spacing: 20) {
                    Image(systemName: "giftcard").resizable()
                        .frame(width: 40, height: 40)
                        .foregroundStyle(Color(UIColor.systemBlue))
                        .opacity(0.8)
                    VStack (alignment: .leading, spacing: 4) {
                        Text("Buy Gift Cards")
                            .font(.headline)
                            .bold()
                        Text("Buy a gift card, check card balance, and more.")
                            .font(.subheadline)
                    }
                }
                HStack (alignment: .top, spacing: 20) {
                    Image(systemName: "fork.knife").resizable()
                        .frame(width: 40, height: 40)
                        .foregroundStyle(Color(UIColor.systemBlue))
                        .opacity(0.8)
                    VStack (alignment: .leading, spacing: 4) {
                        Text("Customize Pizzas")
                            .font(.headline)
                            .bold()
                        Text("Easily View Stock Options, Quotes, Charts etc.")
                            .font(.subheadline)
                    }
                }
            }
            
            Spacer()
            
            Button(action: {}) {
                Text("Welcome")
                    .foregroundStyle(.white)
                    .bold()
            }.frame(width: 350, height: 60)
                .background(Color(UIColor.systemBlue))
                .opacity(0.8)
                .cornerRadius(12)
        }
        .padding(.all, 40)
    }
}

#Preview {
    ContentView()
}
