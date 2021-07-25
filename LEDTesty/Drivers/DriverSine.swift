//
//  DriverSine.swift
//  LEDTesty
//
//  Created by Lukas Tenbrink on 25.07.21.
//

import Foundation

struct DriverSine: Driver {
	let leds: [RGB]

	func update(date: Date, delta: TimeInterval) {
		leds.enumerated().forEach { i, led in
			led.r = sin(Double(i) / Double(leds.count) * 2 * .pi + date.timeIntervalSinceReferenceDate)
			led.g = -led.r
			led.b = 0
		}
	}
}
