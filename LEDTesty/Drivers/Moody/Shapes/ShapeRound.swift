//
//  ShapeRound.swift
//  LEDTesty
//
//  Created by Lukas Tenbrink on 25.07.21.
//

import Foundation

struct ShapeRound: MoodyShape {
	func sample(at x: Double) -> Double {
		round(x)
	}
}
