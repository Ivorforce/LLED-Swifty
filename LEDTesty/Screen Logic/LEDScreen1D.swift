//
//  LEDScreen1D.swift
//  LEDTesty
//
//  Created by Lukas Tenbrink on 25.07.21.
//

import Foundation

class LEDScreen1D: ObservableObject {
	let leds: [RGB]
	var driver: Driver

	var lastUpdate: Date
	var timer: Timer?
	
	init(ledCount: Int, fps: Double? = nil) {
		leds = (0..<ledCount).map { _ in
			RGB.random()
		}
		
		lastUpdate = Date()
		driver = DriverSine(leds: leds)
		
		if let fps = fps {
			timer = Timer.scheduledTimer(withTimeInterval: 1 / fps, repeats: true) { [weak self] timer in
				self?.update()
			}
			timer?.tolerance = 1 / fps * 0.1
		}
	}
	
	func update() {
		objectWillChange.send()
	
		let date = Date()
		let delta = date.timeIntervalSince(lastUpdate)
		
		driver.update(date: date, delta: delta)
		
		self.lastUpdate = date
	}
}
