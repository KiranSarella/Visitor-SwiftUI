//
//  LengthCalculator.swift
//  Visitor-SwiftUI
//
//

import Foundation

class LenghtCalculator: Calculatable {
    
    func calculate(for circle: Circle) -> Double {
        2 * Double.pi * circle.radius
    }
    
    func calculate(for rectangle: Rectangle) -> Double {
        2 * (rectangle.height + rectangle.width)
    }
    
    func calculate(for triangle: Triangle) -> Double {
        triangle.a + triangle.b + triangle.c
    }
}


