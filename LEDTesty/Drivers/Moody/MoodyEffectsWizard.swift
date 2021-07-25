//
//  MoodyEffectsWizard.swift
//  LEDTesty
//
//  Created by Lukas Tenbrink on 25.07.21.
//

import Foundation

class MoodyEffectsWizard {
	static func shape(for driver: DriverMoody) -> MoodyEffect {
		let leds = driver.leds
		
		return ShapeDrawer(leds: leds, shape: SineShape())
	}
	
	static func effect(for driver: DriverMoody) -> MoodyEffect {
		let leds = driver.leds
		
		return MotionBlur(leds: leds, cache: leds.map { _ in RGB(r: 0, g: 0, b: 0) }, factor: 0.5)
	}
}
