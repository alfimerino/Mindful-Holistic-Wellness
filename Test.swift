import SwiftUI

struct Conten22tView: View {
    let data = (1...10).map { $0 } // Sample data

    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(), GridItem()]) {
                ForEach(data, id: \.self) { item in
                    // Your grid item content here
                    VStack {
                        Text("Item \(item)")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()
                }
            }
            .padding()
        }
    }
}

struct Conten22tView_Previews: PreviewProvider {
    static var previews: some View {
        Conten22tView()
    }
}
