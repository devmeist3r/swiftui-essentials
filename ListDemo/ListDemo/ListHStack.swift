import SwiftUI

struct ListHStack: View {
    var body: some View {
        List {
            HStack {
                Image(systemName: "trash.circle.fill")
                Text("Take out the trash")
            }
            HStack {
                Image(systemName: "person.2.fill")
                Text("Pick up the kids")
            }
            HStack {
                Image(systemName: "car.fill")
                Text("Wash the car")
            }
        }
    }
}

struct ListHStack_Previews: PreviewProvider {
    static var previews: some View {
        ListHStack()
    }
}
