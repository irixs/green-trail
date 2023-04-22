import SwiftUI

public struct forestTwoView: View {
    @Binding var step: Int
    
    @State var delay = false
    @State var introText = 1
    
    var forestOneScreen = #imageLiteral(resourceName: "forest.png")
    var conversationBox = #imageLiteral(resourceName: "conversationBox.png")
    var play = #imageLiteral(resourceName: "play.png")
    
    public init( _ step: Binding<Int>) {
        self._step = step
    }
    
    public var body: some View {
        ZStack{
            Group {
                Image(nsImage: forestOneScreen)
                    .resizable()
                    .frame(width: 700, height: 600)
                
                Image(nsImage: conversationBox)
                    .resizable()
                    .frame(width: 682, height: 178.33)
                    .position(x: 350, y: 500)
            }
            Group {
                if(introText == 1) {
                    Text("Luna: We did it! Now the forest is clean and safe for the animals. You made a big difference today and can be proud of yourselves.")
                        .font(.custom("VT323", size: 32))
                        .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                        .frame(width: 640, height: 140, alignment: .topLeading)
                        .position(x: 350, y: 500)
                        .onAppear(perform: executeDelay)
                }
                if(introText == 2) {
                    Text("Luna: You must all be very tired. Let's go back to the campsite and rest.")
                        .font(.custom("VT323", size: 32))
                        .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                        .frame(width: 640, height: 140, alignment: .topLeading)
                        .position(x: 350, y: 500)
                        .onAppear(perform: executeDelay)
                }
            }
            if delay {
                Button {
                    if introText >= 2 {
                        step = step + 1
                    }
                    else {
                        introText = introText + 1
                    }
                    delay = false
                } label: {
                    Image(nsImage: play)
                }
                .buttonStyle(.borderless)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .bottomTrailing)
                .padding(.bottom, 40)
                .padding(.trailing, 30)
            }
        }
        .frame(width: 700, height: 600)
    }
    private func executeDelay() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
            delay = true
        }
    }
}
