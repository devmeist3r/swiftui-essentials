import SwiftUI

struct ContentView: View {
    
    @State private var wifiEnabled = true
    @State private var userName = ""
    
    var body: some View {
        VStack {
            TextField("Enter user name", text: $userName)
            Text(userName)
            WifiImageView(wifiEnabled: $wifiEnabled)
        }
    }
}

struct WifiImageView: View {
    @Binding var wifiEnabled: Bool
    
    var body: some View {
        Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
