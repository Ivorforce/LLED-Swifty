//
//  MoodyShapeDrawer.swift
//  LEDTesty
//
//  Created by Lukas Tenbrink on 25.07.21.
//

import Foundation

struct ShapeDrawer: MoodyEffect {
	var shape: MoodyShape
	
	var leds: [RGB]
	
	func update(time: Double) {
		leds.enumerated().forEach { i, led in
			let x = Double(i) / Double(leds.count) + time
			let value = shape.sample(at: x)
			
			led.r = value
			led.g = -value
			led.b = 0
		}
	}
}
