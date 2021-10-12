import SwiftUI

struct ContentView: View {
    
    var myString: String = "Welcome to SwiftUI"
    
    var body: some View {
        VStack {
            Text("Sample Text")
                .font(.custom("Copperplate", size: 40))
                .border(Color.black)
                .padding()
            VStack {
                Text("My variable: \(myString)")
                Text("Hello, ") + Text("how ") + Text("are you?")
                VStack {
                    Text("Text 1")
                        .modifier(StandardTitle())
                    Text("Text 2")
                        .modifier(StandardTitle())
                    MyHStackView()
                }
                Text("Text 5")
                MyCarView()
                Button(action: buttonPressed, label: {
                    Text("Click Me")
                })
            }
        }
    }
    
    func buttonPressed() {
        print("it was pressed")
    }
}

// Criando estilos padroes
struct StandardTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .background(Color.white)
            .border(Color.gray, width: 0.2)
            .shadow(color: Color.black, radius: 5, x: 0, y: 5)
    }
}

// Separando Componentes
struct MyHStackView: View {
    var body: some View {
        HStack {
            Text("Text 3")
            Text("Text 4")
        }
    }
}

struct MyCarView: View {
    var body: some View {
        VStack {
            Text("Main Title")
                .font(.largeTitle)
            HStack {
                Text("Car Image")
                Image(systemName: "car.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
            }
            Label("Welcome to SwiftUI", systemImage: "car.fill")
            Label(
                title: {
                    Text("Welcome to SwiftUI")
                        .font(.largeTitle)
                },
                icon: {
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 25, height: 25)
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
