//
//  CircularLEDView.swift
//  LEDTesty
//
//  Created by Lukas Tenbrink on 25.07.21.
//

import SwiftUI

struct CircularLEDView: View {
	struct CircularLED: Identifiable {
		var id = UUID()

		var rgb: RGB
		var angle: Angle
	}
	
	@ObservedObject var screen: LEDScreen1D
	var leds: [CircularLED]
	var mirrors: Int
	var mirrorOpacity: CGFloat
	
	init(screen: LEDScreen1D, mirrors: Int = 0, mirrorOpacity: CGFloat = 0.8) {
		self.screen = screen
		self.mirrors = mirrors
		self.mirrorOpacity = mirrorOpacity
		
		let angles = Angle.linspace(from: .zero, to: .radians(.pi * 2), count: screen.leds.count)
		
		self.leds = zip(screen.leds, angles).map { (led, angle) in
			CircularLED(rgb: led, angle: angle)
		}
	}
	
    var body: some View {
		GeometryReader { geo in
			let outerRadius = min(geo.size.width, geo.size.height) / 2
			let ledRadius = geo.size.width / CGFloat(leds.count)
			
			ZStack {
				ForEach(leds) { led in
					ForEach(0 ..< (mirrors + 1)) { i in
						let opacity = pow(mirrorOpacity, CGFloat(i))
						let radius = outerRadius * opacity
						let size = ledRadius * opacity
						
						VStack {
							Circle().fill(led.rgb.asColor)
								.frame(width: size, height: size)
							
							Spacer().frame(height: radius * 2)
						}.opacity(Double(opacity))
					}
					.rotationEffect(led.angle, anchor: .center)
				}
			}.position(x: geo.size.width / 2, y: geo.size.height / 2)
		}.padding()
    }
}

struct CircularLEDView_Previews: PreviewProvider {
    static var previews: some View {
		CircularLEDView(screen: LEDScreen1D(ledCount: 50, driver: DriverSine()), mirrors: 3)
    }
}
