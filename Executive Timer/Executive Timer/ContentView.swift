import SwiftUI
import Combine


struct ContentView: View {
    var body: some View {
        TabView {
            TimerView()
                .padding()
                .tabItem({
                    Label("Timer", systemImage: "timer")
                })
                .tag("Timer")
            
            TimerSettingsView()
                .padding()
                .tabItem({
                    Label("Settings", systemImage: "gear")
                })
                .tag("Settings")
        }
    }
}


#Preview {
    ContentView()
}
