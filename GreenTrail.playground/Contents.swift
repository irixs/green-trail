import SwiftUI
import PlaygroundSupport

let fontUrl = Bundle.main.url(forResource: "VT323-Regular", withExtension: "ttf")! as CFURL

CTFontManagerRegisterFontsForURL(fontUrl, CTFontManagerScope.process, nil)

struct greenTrail: View {
    var body: some View {
        controller()
    }
}

PlaygroundPage.current.setLiveView(greenTrail())
