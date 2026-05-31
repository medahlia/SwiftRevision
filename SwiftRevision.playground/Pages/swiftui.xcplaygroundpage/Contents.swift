import SwiftUI
import PlaygroundSupport

/*
struct CounterView: View {
    @State private var countCoffee = 0
    @State private var countCocktail = 0
    @State private var countTea = 0
    
    var body: some View {
        VStack {
            Button("☕️ Coffee: \(countCoffee)", action: {
                countCoffee += 1
            })
            Button("🍹 Cocktail: \(countCocktail)", action: {
                countCocktail += 1
            })
            Button("🫖 Tea: \(countTea)", action: {
                countTea += 1
            })
        }
    }
}

PlaygroundPage.current.setLiveView(CounterView())
*/

/*
struct SliderView: View {
    @State private var valueInches = 0.0
    var body: some View {
        VStack {
            Slider(value: $valueInches, in: 0...100, step: 0.1)
            Text("\(valueInches, specifier: "%.2f") inches is \(valueInches * 2.54, specifier: "%.2f") centimeters")
        }
    }
}
PlaygroundPage.current.setLiveView(SliderView())
*/

/*
struct ContentView: View {
    var body: some View {
        Text("Big Red Text")
            .font(.headline)
            .foregroundStyle(.red)
            .background(Color.green)
            .padding()
            .background(Color.blue)
    }
}
PlaygroundPage.current.setLiveView(ContentView())
*/

struct ShapeView: View {
    var body: some View {
        Triangle()
            .stroke(Color.green, :)
    }
}
