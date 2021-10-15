import SwiftUI

struct AlignmentTypes: View {
    var body: some View {
        HStack(alignment: .center) {
            Rectangle()
                .foregroundColor(Color.green)
//                .alignmentGuide(.oneThird, computeValue: { d in d[VerticalAlignment.bottom] })
                .frame(width: 50, height: 200)
            Rectangle()
                .foregroundColor(Color.red)
//                .alignmentGuide(.oneThird, computeValue: { d in d[VerticalAlignment.top] })
                .frame(width: 50, height: 200)
            Rectangle()
                .foregroundColor(Color.blue)
//                .alignmentGuide(.oneThird, computeValue: { d in d[VerticalAlignment.bottom] })
                .frame(width: 50, height: 200)
            Rectangle()
                .foregroundColor(Color.orange)
//                .alignmentGuide(.oneThird, computeValue: { d in d[VerticalAlignment.top] })
                .frame(width: 50, height: 200)
        }
    }
}

struct AlignmentTypes_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentTypes()
    }
}

//extension VerticalAlignment {
//    private enum OneThird: AlignmentID {
//        static func defaultValue(in d: ViewDimensions) -> CGFloat {
//            return d.height / 3
//        }
//    }
//    
//    static let oneThird = VerticalAlignment(OneThird.self)
//}
