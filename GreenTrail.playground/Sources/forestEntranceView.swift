import SwiftUI

public struct forestEntranceView: View {
    @Binding var step: Int
    
    @State var delay = false
    @State var introText = 1
    
    var forestEntranceScreen = #imageLiteral(resourceName: "forestEntranceScreen.png")
    var conversationBox = #imageLiteral(resourceName: "conversationBox.png")
    var play = #imageLiteral(resourceName: "play.png")
    
    public init( _ step: Binding<Int>) {
        self._step = step
    }
    
    public var body: some View {
        ZStack{
            Image(nsImage: forestEntranceScreen)
                .resizable()
                .frame(width: 700, height: 600)
            
            Image(nsImage: conversationBox)
                .resizable()
                .frame(width: 682, height: 178.33)
                .position(x: 350, y: 500)
            
            if(introText == 1) {
                Text("After a long hike, they finally arrived at the entrance of the forest.")
                    .font(.custom("VT323", size: 32))
                    .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                    .frame(width: 640, height: 140, alignment: .topLeading)
                    .position(x: 350, y: 500)
                    .onAppear(perform: executeDelay)
            }
            if(introText == 2) {
                Text("Anna: Wow, the forest is right in front of us! I can't believe I'm actually going to explore it. I've never seen so many trees and plants before. This is going to be an adventure!")
                    .font(.custom("VT323", size: 32))
                    .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                    .frame(width: 640, height: 140, alignment: .topLeading)
                    .position(x: 350, y: 500)
                    .onAppear(perform: executeDelay)
            }
            if(introText == 3) {
                Text("Luna: We're going to have a great time exploring the forest. Are you ready to go in?")
                    .font(.custom("VT323", size: 32))
                    .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                    .frame(width: 640, height: 140, alignment: .topLeading)
                    .position(x: 350, y: 500)
                    .onAppear(perform: executeDelay)
            }
            if(introText == 4) {
                Text("Anna: Yay! Let's go! I can't wait to see all the cool things in the forest!")
                    .font(.custom("VT323", size: 32))
                    .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                    .frame(width: 640, height: 140, alignment: .topLeading)
                    .position(x: 350, y: 500)
                    .onAppear(perform: executeDelay)
            }
            if delay {
                Button {
                    if introText >= 4 {
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
