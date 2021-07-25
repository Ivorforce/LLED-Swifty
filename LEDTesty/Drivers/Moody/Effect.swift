//
//  Effect.swift
//  LEDTesty
//
//  Created by Lukas Tenbrink on 25.07.21.
//

import Foundation

protocol MoodyEffect {
	var leds: [RGB] { get set }
	
	func update(time: Double)
}
