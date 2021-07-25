//
//  ContentView.swift
//  LEDTesty
//
//  Created by Lukas Tenbrink on 25.07.21.
//

import SwiftUI

struct ContentView: View {
	let screen: LEDScreen1D
	
	init() {
		screen = LEDScreen1D(ledCount: 50, fps: 30)
		screen.driver = DriverMoody(leds: screen.leds)
	}
	
    var body: some View {
		CircularLEDView(screen: screen, mirrors: 10)
			.frame(minWidth: 200, minHeight: 200)
			.aspectRatio(contentMode: .fit)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
