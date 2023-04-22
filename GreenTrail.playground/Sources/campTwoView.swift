import SwiftUI

public struct campTwoView: View {
    @Binding var step: Int
    
    @State var delay = false
    @State var introText = 1
    
    var campTwoScreen = #imageLiteral(resourceName: "campTwo.png")
    var conversationBox = #imageLiteral(resourceName: "conversationBox.png")
    var play = #imageLiteral(resourceName: "play.png")
    
    public init( _ step: Binding<Int>) {
        self._step = step
    }
    
    public var body: some View {
        ZStack{
            Group {
                Image(nsImage: campTwoScreen)
                    .resizable()
                    .frame(width: 700, height: 600)
                
                Image(nsImage: conversationBox)
                    .resizable()
                    .frame(width: 682, height: 178.33)
                    .position(x: 350, y: 500)
            }
            Group {
                if(introText == 1) {
                    Text("Anna sat down on the grass and looked around. The forest was more beautiful than ever, and she felt fulfilled. ")
                        .font(.custom("VT323", size: 32))
                        .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                        .frame(width: 640, height: 140, alignment: .topLeading)
                        .position(x: 350, y: 500)
                        .onAppear(perform: executeDelay)
                }
                if(introText == 2) {
                    Text("It was a long day, but it was worth every minute spent cleaning up the area and taking care of the animals. She was proud of herself and the other campers who came together to make a big difference.")
                        .font(.custom("VT323", size: 32))
                        .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                        .frame(width: 640, height: 140, alignment: .topLeading)
                        .position(x: 350, y: 500)
                        .onAppear(perform: executeDelay)
                }
                if(introText == 3) {
                    Text("As she thought about the day, Anna realized that she could hardly wait for the next adventures that awaited her at summer camp. ")
                        .font(.custom("VT323", size: 32))
                        .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                        .frame(width: 640, height: 140, alignment: .topLeading)
                        .position(x: 350, y: 500)
                        .onAppear(perform: executeDelay)
                }
                if(introText == 4) {
                    Text("She was excited to learn more about nature and how to care for the environment. She knew there would be many opportunities to explore and help, and she was ready for it all.")
                        .font(.custom("VT323", size: 32))
                        .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                        .frame(width: 640, height: 140, alignment: .topLeading)
                        .position(x: 350, y: 500)
                        .onAppear(perform: executeDelay)
                }
                if(introText == 5) {
                    Text("Anna: This was an amazing day. I had so much fun and learned a lot. I can't wait for what's next.  I'm so happy to be here and be a part of it.")
                        .font(.custom("VT323", size: 32))
                        .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                        .frame(width: 640, height: 140, alignment: .topLeading)
                        .position(x: 350, y: 500)
                        .onAppear(perform: executeDelay)
                }
                if(introText == 6) {
                    Text("The End.")
                        .font(.custom("VT323", size: 32))
                        .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                        .frame(width: 640, height: 140, alignment: .topLeading)
                        .position(x: 350, y: 500)
                        .onAppear(perform: executeDelay)
                }
            }
            if delay {
                Button {
                    if introText >= 6 {
                        step = 1
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
