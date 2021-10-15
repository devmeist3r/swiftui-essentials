import SwiftUI

struct SceneStorageView: View {
    
    @SceneStorage("mytexr") var editorText: String = "a"
    
    var body: some View {
        TextEditor(text: $editorText)
            .padding(30)
            .font(.largeTitle)
    }
}

struct SceneStorageView_Previews: PreviewProvider {
    static var previews: some View {
        SceneStorageView()
    }
}
