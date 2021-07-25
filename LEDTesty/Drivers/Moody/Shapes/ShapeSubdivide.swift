//
//  ShapeSubdivide.swift
//  LEDTesty
//
//  Created by Lukas Tenbrink on 25.07.21.
//

import Foundation

struct ShapeSubdivide: MoodyShape {
	let divisions: Double
	
	func sample(at x: Double) -> Double {
		(x.truncatingRemainder(dividingBy: divisions)) * divisions
	}
}
