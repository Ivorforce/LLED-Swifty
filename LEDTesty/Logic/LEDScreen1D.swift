//
//  LEDScreen1D.swift
//  LEDTesty
//
//  Created by Lukas Tenbrink on 25.07.21.
//

import Foundation

class LEDScreen1D: ObservableObject {
	let leds: [RGB]

	var timer: Timer?
	
	init(ledCount: Int, fps: Double? = nil) {
		leds = (0..<ledCount).map { _ in
			RGB.random()
		}
		
		if let fps = fps {
			timer = Timer.scheduledTimer(withTimeInterval: 1 / fps, repeats: true) { [weak self] timer in
				self?.update()
			}
			timer?.tolerance = 1 / fps * 0.1
		}
	}
	
	func update() {
		objectWillChange.send()
	
		let date = Date()
		
		leds.enumerated().forEach { i, led in
			led.r = sin(Double(i) / Double(leds.count) * 2 * .pi + date.timeIntervalSinceReferenceDate)
			led.g = -led.r
			led.b = 0
		}
	}
}
