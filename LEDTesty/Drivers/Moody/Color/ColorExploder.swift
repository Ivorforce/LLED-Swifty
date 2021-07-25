//
//  ColorExploder.swift
//  LEDTesty
//
//  Created by Lukas Tenbrink on 25.07.21.
//

import Foundation

struct ColorExploderRedGreen {
	var leds: [RGB]

	func explode(_ values: [Double]) {
		zip(values, leds).forEach { (value, led) in
			led.r = value
			led.g = -value
			led.b = 0
		}
	}
}
