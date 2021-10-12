import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 15) {
            Text("Financial Results")
                .font(.title)
            HStack(alignment: .top) {
                Text("Q1 Sales")
                    .font(.headline)
                Spacer()
                VStack(alignment: .leading) {
                    Text("January")
                    Text("February")
                    Text("March")
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("$1000")
                    Text("$200")
                    Text("$3000")
                }
                .padding(5)
            }
            .padding(5)
            GeometryReader { geometry in
                VStack {
                    Text("Hello World, how are you?")
                        .font(.largeTitle)
                        .frame(width: geometry.size.width / 2, height: ( geometry.size.height / 4) * 3)
                    Text("Goodbye World!")
                        .font(.largeTitle)
                        .frame(width: geometry.size.width / 3, height: geometry.size.height / 4)
                }
            }
        }
        .padding(5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
