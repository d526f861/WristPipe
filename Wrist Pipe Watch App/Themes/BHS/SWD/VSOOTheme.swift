//
//  VSOOTheme.swift
//  Wrist Pipe
//
//  Created by David Freeman on 6/17/24.
//

import SwiftUI

struct VSOOTheme: Theme {
    var id: Int = 2603
    var name: String = "Vocal Sounds of Oklahoma"
    
    func getBackground() -> any View {
        return AnyView(Spacer())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.white)
    }
    
    var selectorColor: Color = .black
    var selectorTextColor: Color = .white
    var selectorBackgroundColor: [Color] = [
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black
    ]
    
    var pitchBackgroundUnselectedColor: [Color] = [
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black,
        .black
    ]
    var pitchTextUnselectedColor: Color = .white
    var pitchUnselectedOpacity: Double = 1.0

    var pitchBackgroundSelectedColor: [Color] = [
        .white,
        .white,
        .white,
        .white,
        .white,
        .white,
        .white,
        .white,
        .white,
        .white,
        .white,
        .white
    ]
    var pitchTextSelectedColor: Color = .black
    var pitchSelectedOpacity: Double = 1.0
    
    var logo: Image? = Image("vsoo_logo")
    var logoXScale: Double = 3
    var logoYScale: Double = 3
}

#Preview {
    PitchPipe(theme: VSOOTheme(), preview: true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(VSOOTheme().getBackground()))
}
