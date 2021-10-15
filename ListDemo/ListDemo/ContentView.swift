import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Text("Wash the car!")
            Text("Vacuum house")
            Text("Pick up kids from school bus @ 3pm")
            Text("Auction the kids on eBay")
            Text("Order Pizza for dinner")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
