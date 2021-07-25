//
//  MotionBlur.swift
//  LEDTesty
//
//  Created by Lukas Tenbrink on 25.07.21.
//

import Foundation

struct MotionBlur: MoodyEffect {
	var leds: [RGB]
	var cache: [RGB]

	var factor: Double
	
	func update(time: Double) {
		let factor = self.factor
		let reverseFactor = 1 - factor
		
		zip(leds, cache).forEach { led, cache in
			led.r = cache.r * factor + led.r * reverseFactor
			led.g = cache.g * factor + led.g * reverseFactor
			led.b = cache.b * factor + led.b * reverseFactor

			cache.copyFrom(led)
		}
	}
}
