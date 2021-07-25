//
//  MoodyPeriodic.swift
//  LEDTesty
//
//  Created by Lukas Tenbrink on 25.07.21.
//

import Foundation

protocol MoodyShape {
	func sample(at x: Double) -> Double
}
