import SwiftUI

public struct presentationView: View {
    @Binding var step: Int
    
    @State var delay = false
    @State var introText = 1
    
    var presentationScreen = #imageLiteral(resourceName: "presentationScreen.png")
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
                Text("Hi, I'm Anna! Guess what? Today is my first day of summer vacation!")
                    .font(.custom("VT323", size: 32))
                    .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                    .frame(width: 640, height: 140, alignment: .topLeading)
                    .position(x: 350, y: 500)
                    .onAppear(perform: executeDelay)
            }
            if(introText == 2) {
                Text("I'm so excited because I'm going to a summer camp for the very first time!")
                    .font(.custom("VT323", size: 32))
                    .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                    .frame(width: 640, height: 140, alignment: .topLeading)
                    .position(x: 350, y: 500)
                    .onAppear(perform: executeDelay)
            }
            if(introText == 3) {
                Text("Come with me to the summer camp! We'll have so much fun together!!")
                    .font(.custom("VT323", size: 32))
                    .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                    .frame(width: 640, height: 140, alignment: .topLeading)
                    .position(x: 350, y: 500)
                    .onAppear(perform: executeDelay)
            }
            if delay {
                Button {
                    if introText >= 3 {
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
