import SwiftUI

struct CrossStackAlignment: View {
    var body: some View {
        HStack(alignment: .crossAlignment, spacing: 20) {
            Circle()
                .foregroundColor(Color.purple)
                .alignmentGuide(.crossAlignment, computeValue: { d in
                    d[VerticalAlignment.center]
                })
                .frame(width: 100, height: 100)
            
            VStack(alignment: .center) {
                Rectangle()
                    .foregroundColor(Color.green)
                    .frame(width: 100, height: 100)
                Rectangle()
                    .foregroundColor(Color.red)
                    .frame(width: 100, height: 100)
                Rectangle()
                    .foregroundColor(Color.blue)
                    .alignmentGuide(.crossAlignment, computeValue: { d in
                        d[VerticalAlignment.center]
                    })
                    .frame(width: 100, height: 100)
                Rectangle()
                    .foregroundColor(Color.orange)
                    .frame(width: 100, height: 100)
            }
        }
    }
}

struct CrossStackAlignment_Previews: PreviewProvider {
    static var previews: some View {
        CrossStackAlignment()
    }
}

extension VerticalAlignment {
    private enum CrossAlignment: AlignmentID {
        public static func defaultValue(in d: ViewDimensions) -> CGFloat {
            return d[.bottom]
        }
    }
    
    static let crossAlignment = VerticalAlignment(CrossAlignment.self)
}
