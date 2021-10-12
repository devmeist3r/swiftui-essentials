import SwiftUI

struct ContentView: View {
    
    @StateObject var timerData: TimerData = TimerData()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Timer count = \(timerData.timeCount)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Button(action: resetCount) {
                    Text("Reset Count")
                }
                NavigationLink {
                    SecondView()
                } label: {
                    Text("Next Screen")
                }.padding()
            }.navigationTitle("Home")
        }.environmentObject(timerData)
    }
    
    func resetCount() {
        timerData.resetCount()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
