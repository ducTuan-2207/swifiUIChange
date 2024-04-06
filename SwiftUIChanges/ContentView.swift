import SwiftUI

class Light: BindableObject {
    let didChange = PassthroughSubject<Void, Never>()
    var isOn: Bool = false {
        didSet {
            didChange.send()
        }
    }
}

struct Room: View {
    @ObservedObject var light = Light()
    
    var body: some View {
        Toggle(isOn: $light.isOn) {
            EmptyView()
        }.fixedSize()
    }
}

struct BIndable_Previews: PreviewProvider {
    static var previews: some View {
        Room()
    }
}
