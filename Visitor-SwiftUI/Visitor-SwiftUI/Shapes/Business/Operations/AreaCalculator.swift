//
//  AreaCalculator.swift
//  Visitor-SwiftUI
//
//

import Foundation

class AreaCalculator: Calculatable {
    
    func calculate(for circle: Circle) -> Double {
        Double.pi * sqrt(circle.radius)
    }
    
    func calculate(for rectangle: Rectangle) -> Double {
        rectangle.height * rectangle.width
    }
    
    func calculate(for triangle: Triangle) -> Double {
        let a = triangle.a
        let b = triangle.b
        let c = triangle.c
        
        let s = (a + b + c) / 2
        let area = sqrt(s * (s - a) * (s - b) * (s - c))
        return area
    }
}

