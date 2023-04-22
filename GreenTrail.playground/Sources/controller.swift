import SwiftUI

public struct controller: View {
    @State var step = 1
    
    public init() {}
    
    public var body: some View {
        
        if(step == 1) {
            startView($step)
        }
        if(step == 2) {
            presentationView($step)
        }
        if(step == 3) {
            campOneView($step)
        }
        if(step == 4) {
            forestEntranceView($step)
        }
        if(step == 5) {
            forestOneView($step)
        }
        if(step == 6) {
            forestOneGameView($step)
        }
        if(step == 7) {
            forestTwoView($step)
        }
        if(step == 8) {
            campTwoView($step)
        }
    }
}
