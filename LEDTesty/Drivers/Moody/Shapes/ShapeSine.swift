//
//  SineShape.swift
//  LEDTesty
//
//  Created by Lukas Tenbrink on 25.07.21.
//

import Foundation

struct ShapeSine: MoodyShape {
	func sample(at x: Double) -> Double {
		sin(Double(x) * 2 * .pi)
	}
}
