//
//  ContentView.swift
//  LEDTesty
//
//  Created by Lukas Tenbrink on 25.07.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		CircularLEDView(screen: LEDScreen1D(ledCount: 50, fps: 30), mirrors: 10)
			.frame(minWidth: 200, minHeight: 200)
			.aspectRatio(contentMode: .fit)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
