//
//  Driver.swift
//  LEDTesty
//
//  Created by Lukas Tenbrink on 25.07.21.
//

import Foundation

protocol Driver {
	var screen: LEDScreen1D? { get set }
	
	func update(date: Date, delta: TimeInterval)
}
