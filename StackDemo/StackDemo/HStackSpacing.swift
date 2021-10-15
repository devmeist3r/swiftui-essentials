import SwiftUI

struct HStackSpacing: View {
    var body: some View {
        HStack(alignment: .lastTextBaseline, spacing: 20) {
            Text("This is some text")
                .font(.largeTitle)
            Text("This some much longer text")
                .font(.body)
            Text("This short")
                .font(.headline)
        }
    }
}

struct HStackSpacing_Previews: PreviewProvider {
    static var previews: some View {
        HStackSpacing()
    }
}
