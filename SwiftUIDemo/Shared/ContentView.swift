import SwiftUI

struct ContentView: View {
    var colors: [Color] = [.black, .red, .green, .blue]
    var colornames = ["Black", "Red", "Green", "Blue"]
    
    @State private var colorIndex = 0
    @State private var rotation: Double = 0
    @State private var text: String = "Welcome to SwiftUI"
    
    var body: some View {
        VStack {
            Spacer()
            Text("Hello, world!")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .rotationEffect(.degrees(rotation))
                .animation(.easeInOut(duration: 5))
                .foregroundColor(colors[colorIndex])
            Spacer()
            Divider()
            Slider(value: $rotation, in: 0 ... 360, step: 0.1)
            
            TextField("Enter text here", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Picker(selection: .constant(1)) {
                Text("1").tag(1)
                Text("2").tag(2)
            } label: {
                Text("Picker")
            }
            
            Picker(selection: $colorIndex) {
                ForEach(0 ..< colornames.count) {
                    Text(colornames[$0])
                        .foregroundColor(colors[$0])
                }
            } label: {
                Text("Color")
            }.pickerStyle(WheelPickerStyle())
        }
        .padding(16)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
