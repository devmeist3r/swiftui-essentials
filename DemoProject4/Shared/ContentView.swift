import SwiftUI

struct ContentView: View {
    
    @ObservedObject var demoData: DemoData = DemoData()
    @StateObject var demoData1: DemoData = DemoData()
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(demoData.currentUser), you are user number \(demoData.userCount)")
            Text("\(demoData1.currentUser), you are user number \(demoData1.userCount)")
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
