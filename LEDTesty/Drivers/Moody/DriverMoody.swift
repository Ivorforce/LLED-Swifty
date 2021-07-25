//
//  DriverMood.swift
//  LEDTesty
//
//  Created by Lukas Tenbrink on 25.07.21.
//

import Foundation

class DriverMoody: Driver {
	let leds: [RGB]

	var shape: [MoodyShape] = []
	var colorExploder: ColorExploderRedGreen
	var effect: MoodyEffect!

	init(leds: [RGB]) {
		self.leds = leds
		
		self.colorExploder = ColorExploderRedGreen(leds: leds)
		self.shape = MoodyEffectsWizard.shape(for: self)
		self.effect = MoodyEffectsWizard.effect(for: self)
	}
	
	func update(date: Date, delta: TimeInterval) {
		let time = date.timeIntervalSinceReferenceDate / 4
		
		var values = Double.linspace(from: -1 + time, to: 1 + time, count: leds.count)
		for shape in shape {
			values = values.map(shape.sample)
		}
		colorExploder.explode(values)
		effect.update(time: time)
	}
}
