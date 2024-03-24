//
//  PrideTheme.swift
//  WristPipe2 Watch App
//
//  Created by David Freeman on 2/26/24.
//

import SwiftUI

struct PrideTheme: Theme {
    var id: Int = 100
    
    func getBackground() -> any View {
        return AnyView(Spacer())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center))
    }

    var selectorColor: Color = .white
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [.red, .orange, .yellow, .green, .blue, .purple, .red, .orange, .yellow, .green, .blue, .purple]

    var pitchBackgroundUnselectedColor: [Color] = [.red, .orange, .yellow, .green, .blue, .purple, .red, .orange, .yellow, .green, .blue, .purple]
    //var pitchBackgroundUnselectedColor: [Color] = [.purple, .purple, .red, .red, .orange, .orange, .yellow, .yellow, .green, .green, .blue, .blue]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1.0

    var pitchBackgroundSelectedColor: [Color] = [.white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white]
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 1.0
    
    var logo: Image? = nil
    var logoXScale: Double = 0
    var logoYScale: Double = 0
}

#Preview() {
    PitchPipe(theme: PrideTheme())
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(PrideTheme().getBackground())
}
