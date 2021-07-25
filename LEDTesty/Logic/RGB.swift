//
//  RGB.swift
//  LEDTesty
//
//  Created by Lukas Tenbrink on 25.07.21.
//

import Foundation

class RGB {
	var r: Double
	var g: Double
	var b: Double
	
	init(r: Double, g: Double, b: Double) {
		self.r = r
		self.g = g
		self.b = b
	}
	
	func copyFrom(_ other: RGB) {
		self.r = other.r
		self.g = other.g
		self.b = other.b
	}
	
	static func random() -> RGB {
		RGB(
			r: Double.random(in: 0...1),
			g: Double.random(in: 0...1),
			b: Double.random(in: 0...1)
		)
	}
}
