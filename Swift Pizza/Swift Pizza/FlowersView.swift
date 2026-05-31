import SwiftUI


struct FlowersView: View {
    var body: some View {
        VStack {
            Image("flowers")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
            Spacer()
            Image("train")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
        }
    }
}

#Preview {
    FlowersView()
}
