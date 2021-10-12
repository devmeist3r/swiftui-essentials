import SwiftUI

struct FirstTabView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                print("onAppear triggered")
            }
            .onDisappear {
                print("onDisappeared triggered")
            }
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
    }
}
