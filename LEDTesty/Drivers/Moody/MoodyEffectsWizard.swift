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
		
		return ShapeDrawer(shape: SineShape(), leds: leds)
	}
}
