import SwiftUI

public struct campOneView: View {
    @Binding var step: Int
    
    @State var delay = false
    @State var introText = 1
    
    var presentationScreen = #imageLiteral(resourceName: "campOne.png")
    var conversationBox = #imageLiteral(resourceName: "conversationBox.png")
    var play = #imageLiteral(resourceName: "play.png")
    
    public init( _ step: Binding<Int>) {
        self._step = step
    }
    
    public var body: some View {
        ZStack{
            Image(nsImage: presentationScreen)
                .resizable()
                .frame(width: 700, height: 600)
            
            Image(nsImage: conversationBox)
                .resizable()
                .frame(width: 682, height: 178.33)
                .position(x: 350, y: 500)
            
            if(introText == 1) {
                Text("Anna: Wow, look at this place! It's so cool! I'm super excited to explore everything and see what adventures I can find!")
                    .font(.custom("VT323", size: 32))
                    .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                    .frame(width: 640, height: 140, alignment: .topLeading)
                    .position(x: 350, y: 500)
                    .onAppear(perform: executeDelay)
            }
            if(introText == 2) {
                Text("Luna: Hey there! My name is Luna and I'm one of the camp counselors. I'm here to help you have fun and stay safe. ")
                    .font(.custom("VT323", size: 32))
                    .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                    .frame(width: 640, height: 140, alignment: .topLeading)
                    .position(x: 350, y: 500)
                    .onAppear(perform: executeDelay)
            }
            if(introText == 3) {
                Text("Anna: Hi Luna! My name is Anna. I'm so excited to be here at the camp! This is my first time at a summer camp, and I can't wait to explore everything.")
                    .font(.custom("VT323", size: 32))
                    .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                    .frame(width: 640, height: 140, alignment: .topLeading)
                    .position(x: 350, y: 500)
                    .onAppear(perform: executeDelay)
            }
            if(introText == 4) {
                Text("Luna: Yay, let's not waste any time! We're gonna put away your stuff and go on our first hike in the forest! It's gonna be so much fun!!")
                    .font(.custom("VT323", size: 32))
                    .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                    .frame(width: 640, height: 140, alignment: .topLeading)
                    .position(x: 350, y: 500)
                    .onAppear(perform: executeDelay)
            }
            if(introText == 5) {
                Text("Anna: I can't wait to see all the cool things we'll find!")
                    .font(.custom("VT323", size: 32))
                    .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                    .frame(width: 640, height: 140, alignment: .topLeading)
                    .position(x: 350, y: 500)
                    .onAppear(perform: executeDelay)
            }
            if delay {
                Button {
                    if introText >= 5 {
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
