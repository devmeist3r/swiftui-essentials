import SwiftUI

struct VStackAlignment: View {
    var body: some View {
        VStack(alignment: .trailing) {
            Text("This is some text")
            Text("This is some longer text")
            Text("This is short")
        }
    }
}

struct StackAlignment_Previews: PreviewProvider {
    static var previews: some View {
        VStackAlignment()
    }
}
