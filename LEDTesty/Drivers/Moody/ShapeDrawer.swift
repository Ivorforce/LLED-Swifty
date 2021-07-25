//
//  MoodyShapeDrawer.swift
//  LEDTesty
//
//  Created by Lukas Tenbrink on 25.07.21.
//

import Foundation

struct ShapeDrawer: MoodyEffect {
	var leds: [RGB]

	var shape: MoodyShape
	var shapeEffects: [MoodyShape] = []
		
	func update(time: Double) {
		leds.enumerated().forEach { i, led in
			let x = (Double(i) / Double(leds.count) - 1) * 2 + time
			var value = shape.sample(at: x)
			for shape in shapeEffects {
				value = shape.sample(at: value)
			}
			
			led.r = value
			led.g = -value
			led.b = 0
		}
	}
}
