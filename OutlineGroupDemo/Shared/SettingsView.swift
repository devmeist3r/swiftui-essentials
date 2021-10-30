import SwiftUI
import UIKit

struct ColorControl: View {
    var color: Color
    var label: String
    
    var body: some View {
        HStack {
            Text(label)
            Spacer()
            Rectangle()
                .fill(color)
                .frame(width: 30, height: 30)
        }
        .scaledToFill()
    }
}

struct ToggleControl: View {
    var title: String
    
    @State var state: Bool
    
    var body: some View {
        Toggle(title, isOn: $state)
    }
}

struct SettingsView: View {
    
    @State private var hybridState: Bool = false
    @State private var eletricState: Bool = true
    @State private var fuelCellState: Bool = false
    @State private var inversionState: Bool = true
    @State private var filtersExpand: Bool = true
    
    var body: some View {
        Form {
            DisclosureGroup(isExpanded: $filtersExpand) {
                ToggleControl(title: "Hybrid Cars", state: hybridState)
                ToggleControl(title: "Eletric Cars", state: eletricState)
                ToggleControl(title: "Fuel Cell Cars", state: fuelCellState)
            } label: {
                Label("Categories Filters", systemImage: "car.2.fill")
            }
            
            DisclosureGroup {
                ColorControl(color: .red, label: "BackgroundColor")
                ColorControl(color: .blue, label: "ForegroundColor")
                ToggleControl(title: "Color Inversion", state: inversionState)
            } label: {
                Label("Categories Filters", systemImage: "scribble.variable")
            }
            
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
