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
	var effect: MoodyEffect!

	init(leds: [RGB]) {
		self.leds = leds
		
		self.baseShape = MoodyEffectsWizard.shape(for: self)
		self.effect = MoodyEffectsWizard.effect(for: self)
	}
	
	func update(date: Date, delta: TimeInterval) {
		let time = date.timeIntervalSinceReferenceDate
		
		baseShape.update(time: time)
		effect.update(time: time)
	}
}
