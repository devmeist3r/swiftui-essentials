import Combine
import Foundation

class DemoData: ObservableObject {
    @Published var userCount = 12
    @Published var currentUser = "Lucas"
    
    init() {
        // Code here to initialize data
        updateData()
    }
    
    func updateData() {
        // Code here to keep data up to date
    }
}

