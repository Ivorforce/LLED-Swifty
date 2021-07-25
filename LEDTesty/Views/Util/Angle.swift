//
//  File.swift
//
//
//  Created by Lukas Tenbrink on 16.06.21.
//

import SwiftUI

// TODO This should be an extension to some numeric protocol, but which?
public extension Angle {
	static func linspace(from: Self, to: Self, count: Int, endInclusive: Bool = true) -> [Self] {
		let max = Double(count - (endInclusive ? 1 : 0))
						 
		return (0 ..< count).map { (idx: Int) in
			from + (to - from) * Double(idx) / max
		}
	}
}

public extension Double {
	static func linspace(from: Self, to: Self, count: Int, endInclusive: Bool = true) -> [Self] {
		let max = Double(count - (endInclusive ? 1 : 0))
						 
		return (0 ..< count).map { (idx: Int) in
			from + (to - from) * Double(idx) / max
		}
	}
}

public extension Angle {
	static func distributed(from: Angle = .radians(0), to: Angle = .radians(2 * .pi), count: Int) -> [Angle] {
		linspace(from: from, to: to, count: count, endInclusive: false)
	}
}
