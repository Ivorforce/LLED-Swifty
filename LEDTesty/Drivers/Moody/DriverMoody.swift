//
//  DriverMood.swift
//  LEDTesty
//
//  Created by Lukas Tenbrink on 25.07.21.
//

import Foundation

class DriverMoody: Driver {
	var leds: [RGB]
	var baseShape: MoodyEffect!
	
	init(leds: [RGB]) {
		self.leds = leds
		self.baseShape = MoodyEffectsWizard.shape(for: self)
	}
	
	func update(date: Date, delta: TimeInterval) {
		baseShape.update(time: date.timeIntervalSinceReferenceDate)
	}
}
