import SwiftUI

class Light: ObservableObject {
    @Published var isOn: Bool = false
}

struct Room: View {
    @ObservedObject var light: Light
    
    var body: some View {
        Toggle(isOn: $light.isOn) {
            EmptyView()
        }.fixedSize()
    }
}

struct BIndable: View {
    @StateObject private var light = Light()
    
    var body: some View {
        VStack {
            Room(light: light)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(light.isOn ? Color.yellow : Color.black)
    }
}

struct BIndable_Previews: PreviewProvider {
    static var previews: some View {
        BIndable() // Sử dụng BIndable để xem trước giao diện người dùng của nó
    }
}
