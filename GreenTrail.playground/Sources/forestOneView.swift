import SwiftUI

public struct forestOneView: View {
    @Binding var step: Int
    
    @State var delay = false
    @State var introText = 1
    
    var forestOneScreen = #imageLiteral(resourceName: "forestOneTrash.png")
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
                    Text("As they entered the forest, Anna was surprised by what she saw.")
                        .font(.custom("VT323", size: 32))
                        .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                        .frame(width: 640, height: 140, alignment: .topLeading)
                        .position(x: 350, y: 500)
                        .onAppear(perform: executeDelay)
                }
                if(introText == 2) {
                    Text("Anna: Oh no, look at all this trash! How did it get here? Why would someone leave all this here?")
                        .font(.custom("VT323", size: 32))
                        .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                        .frame(width: 640, height: 140, alignment: .topLeading)
                        .position(x: 350, y: 500)
                        .onAppear(perform: executeDelay)
                }
                if(introText == 3) {
                    Text("Her face fell as she realized the impact that this trash could have on the environment and the animals that called the forest their home. ")
                        .font(.custom("VT323", size: 32))
                        .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                        .frame(width: 640, height: 140, alignment: .topLeading)
                        .position(x: 350, y: 500)
                        .onAppear(perform: executeDelay)
                }
                if(introText == 4) {
                    Text("She felt sad and discouraged, wondering how such a beautiful place could be so mistreated.")
                        .font(.custom("VT323", size: 32))
                        .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                        .frame(width: 640, height: 140, alignment: .topLeading)
                        .position(x: 350, y: 500)
                        .onAppear(perform: executeDelay)
                }
            }
            if(introText == 5) {
                Text("Luna was deeply disturbed by the sight of the pile of garbage in the middle of the beautiful forest. Her heart sank as she realized how much damage humans can cause to nature.")
                    .font(.custom("VT323", size: 32))
                    .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                    .frame(width: 640, height: 140, alignment: .topLeading)
                    .position(x: 350, y: 500)
                    .onAppear(perform: executeDelay)
            }
            if(introText == 6) {
                Text("But she didn't want to let the children see her upset. She took a deep breath and decided to turn this into a teachable moment.")
                    .font(.custom("VT323", size: 32))
                    .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                    .frame(width: 640, height: 140, alignment: .topLeading)
                    .position(x: 350, y: 500)
                    .onAppear(perform: executeDelay)
            }
            if(introText == 7) {
                Text("She knew she had to do something to not only clean up the mess but also educate the children about the importance of taking care of the environment.")
                    .font(.custom("VT323", size: 32))
                    .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                    .frame(width: 640, height: 140, alignment: .topLeading)
                    .position(x: 350, y: 500)
                    .onAppear(perform: executeDelay)
            }
            if(introText == 8) {
                Text("Luna: Hey, don't be sad. Look at it this way: we have a fun mission now! Let's pick up all this trash and make this forest beautiful again!")
                    .font(.custom("VT323", size: 32))
                    .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                    .frame(width: 640, height: 140, alignment: .topLeading)
                    .position(x: 350, y: 500)
                    .onAppear(perform: executeDelay)
            }
            if(introText == 9) {
                Text("With those few words, Luna was able to lift the spirits of the children and Anna once again. ")
                    .font(.custom("VT323", size: 32))
                    .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                    .frame(width: 640, height: 140, alignment: .topLeading)
                    .position(x: 350, y: 500)
                    .onAppear(perform: executeDelay)
            }
            if(introText == 10) {
                Text("Anna: Yes, let's clean up the forest and make it beautiful again! I want to help!")
                    .font(.custom("VT323", size: 32))
                    .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                    .frame(width: 640, height: 140, alignment: .topLeading)
                    .position(x: 350, y: 500)
                    .onAppear(perform: executeDelay)
            }
            if delay {
                Button {
                    if introText >= 10 {
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
