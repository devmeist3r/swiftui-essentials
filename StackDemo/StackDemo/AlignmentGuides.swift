import SwiftUI

struct AlignmentGuides: View {
    var body: some View {
        VStack(alignment: .leading) {
            Rectangle()
                .foregroundColor(Color.green)
                .frame(width: 120, height: 50)
            Rectangle()
                .foregroundColor(Color.red)
                .alignmentGuide(.leading, computeValue: { d in d.width / 3 })
                .frame(width: 200, height: 50)
            Rectangle()
                .foregroundColor(Color.blue)
                .alignmentGuide(.leading, computeValue: { d in d[HorizontalAlignment.trailing] + 20 })
                .frame(width: 180, height: 50)
        }
    }
}

struct AlignmentGuides_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentGuides()
    }
}
