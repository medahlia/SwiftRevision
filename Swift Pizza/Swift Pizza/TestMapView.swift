import SwiftUI
import MapKit


struct TestMapView: View {
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.75773, longitude: -73.985708), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    var body: some View {
        VStack {
            Text("Some text")
                .font(.largeTitle)
                .bold()
            Image(systemName: "figure.walk.suitcase.rolling.circle.fill").resizable()
                .frame(width: 40, height: 40)
            Image(systemName: "location.north.circle.fill").resizable()
                .frame(width: 40, height: 40)
            Map(coordinateRegion: $region)
                .edgesIgnoringSafeArea(.all)
            Image(systemName: "figure.wave.circle.fill").resizable()
                .frame(width: 40, height: 40)
            Button(action: {}) {
                Text("Boom")
                    .foregroundStyle(.white)
                    .bold()
            }.frame(width: 350, height: 60)
                .background(Color(UIColor.systemTeal))
                .opacity(0.8)
                .cornerRadius(12)
            
            
        }
    }
}

#Preview {
    TestMapView()
}
