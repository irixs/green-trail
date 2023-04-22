import SwiftUI

public struct forestOneGameView: View {
    @Binding var step: Int
    
    @State var delay = false
    @State var introText = 1
    @State var counter = 0
    @State var state = 0
    @State var button1 = false
    @State var button2 = false
    @State var button3 = false
    @State var button4 = false
    @State var button5 = false
    @State var button6 = false
    
    var forestOneScreen = #imageLiteral(resourceName: "forestOneTrash.png")
    var conversationBox = #imageLiteral(resourceName: "conversationBox.png")
    var trashScreen = #imageLiteral(resourceName: "trashScreen.png")
    var gameBox = #imageLiteral(resourceName: "gamebox.png")
    var play = #imageLiteral(resourceName: "play.png")
    var agulha = #imageLiteral(resourceName: "agulha.png")
    var agulha2 = #imageLiteral(resourceName: "agulha2.png")
    var embalagem = #imageLiteral(resourceName: "embalagem.png")
    var embalagem2 = #imageLiteral(resourceName: "embalagem2.png")
    var lacre = #imageLiteral(resourceName: "lacre.png")
    var lacre2 = #imageLiteral(resourceName: "lacre2.png")
    var lata = #imageLiteral(resourceName: "lata.png")
    var lata2 = #imageLiteral(resourceName: "lata2.png")
    var roupa = #imageLiteral(resourceName: "roupa.png")
    var vidro = #imageLiteral(resourceName: "vidro.png")
    var vidro2 = #imageLiteral(resourceName: "vidro2.png")
    
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
                
                Group {
                    //latinhas
                    Button {
                        introText = 2
                        counter = counter + 1
                    } label: {
                        Rectangle()
                            .fill(.red)
                            .opacity(0)
                            .frame(width: 60, height: 40)
                    }
                    .buttonStyle(.borderless)
                    .position(x: 310, y: 390)
                    .disabled(button1)
                    
                    //vidro
                    Button {
                        introText = 3
                        counter = counter + 1
                    } label: {
                        Rectangle()
                            .fill(.blue)
                            .opacity(0)
                            .frame(width: 60, height: 40)
                    }
                    .buttonStyle(.borderless)
                    .position(x: 380, y: 390)
                    .disabled(button2)
                    
                    //embalagem
                    Button {
                        introText = 4
                        counter = counter + 1
                    } label: {
                        Rectangle()
                            .fill(.orange)
                            .opacity(0)
                            .frame(width: 40, height: 34)
                    }
                    .buttonStyle(.borderless)
                    .position(x: 452, y: 393)
                    .disabled(button3)
                    
                    //roupas
                    Button {
                        introText = 5
                        counter = counter + 1
                    } label: {
                        Rectangle()
                            .fill(.pink)
                            .opacity(0)
                            .frame(width: 60, height: 60)
                    }
                    .buttonStyle(.borderless)
                    .position(x: 504, y: 380)
                    .disabled(button4)
                    
                    //agulhas
                    Button {
                        introText = 6
                        counter = counter + 1
                    } label: {
                        Rectangle()
                            .fill(.purple)
                            .opacity(0)
                            .frame(width: 40, height: 34)
                    }
                    .buttonStyle(.borderless)
                    .position(x: 430, y: 357)
                    .disabled(button5)
                    
                    //lacres
                    Button {
                        introText = 7
                        counter = counter + 1
                    } label: {
                        Rectangle()
                            .fill(.white)
                            .opacity(0)
                            .frame(width: 40, height: 34)
                    }
                    .buttonStyle(.borderless)
                    .position(x: 374, y: 352)
                    .disabled(button6)
                }
            }
            
            if(introText == 1) {
                
                Image(nsImage: gameBox)
                    .resizable()
                    .frame(width: 682, height: 381)
                    .position(x: 350, y: 210)
                
                Image(nsImage: trashScreen)
                    .resizable()
                    .frame(width: 576.31, height: 318.82)
                    .position(x: 350, y: 215)
                
                Text("Let's help Anna collect this trash and learn about the proper way to dispose of it.")
                    .font(.custom("VT323", size: 32))
                    .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                    .frame(width: 640, height: 140, alignment: .topLeading)
                    .position(x: 350, y: 500)
                    .onAppear(perform: executeDelay)
                
                if delay {
                    Button {
                        introText = 0
                    } label: {
                        Image(nsImage: play)
                    }
                    .buttonStyle(.borderless)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .bottomTrailing)
                    .padding(.bottom, 40)
                    .padding(.trailing, 30)
                }
            }
            
            //latinhas
            if(introText == 2) {
                Group {
                    if state == 0 {
                        Image(nsImage: lata)
                            .resizable()
                            .frame(width: 682, height: 381)
                            .position(x: 350, y: 210)
                    }
                    else {
                        Image(nsImage: lata2)
                            .resizable()
                            .frame(width: 682, height: 381)
                            .position(x: 350, y: 210)
                    }
                    
                    
                    Text("Before discarding soda or beer cans, it's important to crush them so that animals don't get trapped inside.")
                        .font(.custom("VT323", size: 32))
                        .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                        .frame(width: 640, height: 140, alignment: .topLeading)
                        .position(x: 350, y: 500)
                        .onAppear(perform: executeDelay)
                    
                    if delay {
                        Button {
                            if state == 0 {
                                state = 1
                            }
                            else {
                                introText = 0
                                state = 0
                                button1 = true
                            }
                            if counter == 6 {
                                step = step + 1
                            }
                        } label: {
                            Image(nsImage: play)
                        }
                        .buttonStyle(.borderless)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .bottomTrailing)
                        .padding(.bottom, 40)
                        .padding(.trailing, 30)
                    }
                }
            }
            
            //vidro
            if(introText == 3) {
                Group {
                    if state == 0 {
                        Image(nsImage: vidro)
                            .resizable()
                            .frame(width: 682, height: 381)
                            .position(x: 350, y: 210)
                    }
                    else {
                        Image(nsImage: vidro2)
                            .resizable()
                            .frame(width: 682, height: 381)
                            .position(x: 350, y: 210)
                    }
                    
                    
                    Text("Broken glass and mirrors should be wrapped in newspaper or paper to avoid accidents and injured animals.")
                        .font(.custom("VT323", size: 32))
                        .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                        .frame(width: 640, height: 140, alignment: .topLeading)
                        .position(x: 350, y: 500)
                        .onAppear(perform: executeDelay)
                    
                    if delay {
                        Button {
                            if state == 0 {
                                state = 1
                            }
                            else {
                                introText = 0
                                state = 0
                                button2 = true
                            }
                            if counter == 6 {
                                step = step + 1
                            }
                        } label: {
                            Image(nsImage: play)
                        }
                        .buttonStyle(.borderless)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .bottomTrailing)
                        .padding(.bottom, 40)
                        .padding(.trailing, 30)
                    }
                }
            }
            
            //embalagem
            if(introText == 4) {
                Group {
                    if state == 0 {
                        Image(nsImage: embalagem)
                            .resizable()
                            .frame(width: 682, height: 381)
                            .position(x: 350, y: 210)
                    }
                    else {
                        Image(nsImage: embalagem2)
                            .resizable()
                            .frame(width: 682, height: 381)
                            .position(x: 350, y: 210)
                    }
                    
                    Text("Food packaging can be difficult for animals to open. To prevent them from getting stuck cut into smaller pieces, so that they are not dangerous to animals looking for food.")
                        .font(.custom("VT323", size: 32))
                        .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                        .frame(width: 640, height: 140, alignment: .topLeading)
                        .position(x: 350, y: 500)
                        .onAppear(perform: executeDelay)
                    
                    if delay {
                        Button {
                            if state == 0 {
                                state = 1
                            }
                            else {
                                introText = 0
                                state = 0
                                button3 = true
                            }
                            if counter == 6 {
                                step = step + 1
                            }
                        } label: {
                            Image(nsImage: play)
                        }
                        .buttonStyle(.borderless)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .bottomTrailing)
                        .padding(.bottom, 40)
                        .padding(.trailing, 30)
                    }
                }
            }
            
            //roupas
            if(introText == 5) {
                Group {
                    Image(nsImage: roupa)
                        .resizable()
                        .frame(width: 682, height: 381)
                        .position(x: 350, y: 210)
                    
                    Text("Wow, these clothes were thrown away in good condition. Let's take them back to the campsite and sort them for donation.")
                        .font(.custom("VT323", size: 32))
                        .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                        .frame(width: 640, height: 140, alignment: .topLeading)
                        .position(x: 350, y: 500)
                        .onAppear(perform: executeDelay)
                    
                    if delay {
                        Button {
                            introText = 0
                            button4 = true
                            if counter == 6 {
                                step = step + 1
                            }
                        } label: {
                            Image(nsImage: play)
                        }
                        .buttonStyle(.borderless)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .bottomTrailing)
                        .padding(.bottom, 40)
                        .padding(.trailing, 30)
                    }
                }
            }
            
            //agulhas
            if(introText == 6) {
                Group {
                    if state == 0 {
                        Image(nsImage: agulha)
                            .resizable()
                            .frame(width: 682, height: 381)
                            .position(x: 350, y: 210)
                    }
                    else {
                        Image(nsImage: agulha2)
                            .resizable()
                            .frame(width: 682, height: 381)
                            .position(x: 350, y: 210)
                    }
                    
                    Text("Sharp objects, such as needles and blades, should be wrapped in paper or placed in a sealed container before being thrown away, to prevent animals from getting hurt.")
                        .font(.custom("VT323", size: 32))
                        .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                        .frame(width: 640, height: 140, alignment: .topLeading)
                        .position(x: 350, y: 500)
                        .onAppear(perform: executeDelay)
                    
                    if delay {
                        Button {
                            if state == 0 {
                                state = 1
                            }
                            else {
                                introText = 0
                                state = 0
                                button5 = true
                            }
                            if counter == 6 {
                                step = step + 1
                            }
                        } label: {
                            Image(nsImage: play)
                        }
                        .buttonStyle(.borderless)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .bottomTrailing)
                        .padding(.bottom, 40)
                        .padding(.trailing, 30)
                    }
                }
            }
            
            //lacres
            if(introText == 7) {
                Group {
                    if state == 0 {
                        Image(nsImage: lacre)
                            .resizable()
                            .frame(width: 682, height: 381)
                            .position(x: 350, y: 210)
                    }
                    else {
                        Image(nsImage: lacre2)
                            .resizable()
                            .frame(width: 682, height: 381)
                            .position(x: 350, y: 210)
                    }
                    
                    Text("Cutting plastic rings from bottles can prevent animals, such as birds and fish, from getting trapped in them.")
                        .font(.custom("VT323", size: 32))
                        .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)))
                        .frame(width: 640, height: 140, alignment: .topLeading)
                        .position(x: 350, y: 500)
                        .onAppear(perform: executeDelay)
                    
                    if delay {
                        Button {
                            if state == 0 {
                                state = 1
                            }
                            else {
                                introText = 0
                                state = 0
                                button6 = true
                            }
                            if counter == 6 {
                                step = step + 1
                            }
                        } label: {
                            Image(nsImage: play)
                        }
                        .buttonStyle(.borderless)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .bottomTrailing)
                        .padding(.bottom, 40)
                        .padding(.trailing, 30)
                    }
                }
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
