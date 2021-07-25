//
//  DriverSine.swift
//  LEDTesty
//
//  Created by Lukas Tenbrink on 25.07.21.
//

import Foundation

class DriverSine: Driver {
	weak var screen: LEDScreen1D? = nil

	func update(date: Date, delta: TimeInterval) {
		guard let screen = screen else { return }
		
		screen.leds.enumerated().forEach { i, led in
			led.r = sin(Double(i) / Double(screen.leds.count) * 2 * .pi + date.timeIntervalSinceReferenceDate)
			led.g = -led.r
			led.b = 0
		}
	}
}
