//
//  SineShape.swift
//  LEDTesty
//
//  Created by Lukas Tenbrink on 25.07.21.
//

import Foundation

struct SineShape: MoodyEffect {
	var leds: [RGB]
	
	func update(time: Double) {
		leds.enumerated().forEach { i, led in
			led.r = sin(Double(i) / Double(leds.count) * 2 * .pi + time)
			led.g = -led.r
			led.b = 0
		}
	}
}
