import SwiftUI

public struct startView: View {
    @Binding var step: Int
    var startScreen = #imageLiteral(resourceName: "startScreen.png")
    var startButton = #imageLiteral(resourceName: "startButton.png")
    
    public init( _ step: Binding<Int>) {
        self._step = step
    }
    
    public var body: some View {
        ZStack{
            Image(nsImage: startScreen)
                .resizable()
                .frame(width: 700, height: 600)
            
                Button { step = step + 1
                } label: {
                    Image(nsImage: startButton)
                        .resizable()
                        .frame(width: 340, height: 100)
                }
                .buttonStyle(.borderless)
                .position(x: 350, y: 450)
        }
        .frame(width: 700, height: 600)
    }
}
