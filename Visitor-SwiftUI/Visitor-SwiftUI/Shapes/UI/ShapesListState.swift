//
//  ShapesListState.swift
//  Visitor-SwiftUI
//
//

import SwiftUI


enum CalculationType: String, CaseIterable, Identifiable {
    case length, area
    var id: Self { self }
}

@Observable
class ShapesListState {
    
    var selectedCalculationType: CalculationType = .length
    var selectedShape: any Shape
    var result: Double = 0.0
    
    var calculator: Calculatable {
        switch selectedCalculationType {
        case .length:
            return LenghtCalculator()
        case .area:
            return AreaCalculator()
        }
    }
    
    var shapes = [any Shape]()
    
    init() {
        let circle = Circle(radius: 5)
        let rectangle = Rectangle(height: 10, width: 6)
        let triangle = Triangle(a: 4, b: 5, c: 6)
        
        shapes = [circle, rectangle, triangle]
        selectedShape = circle
        
        recalculate()
    }
    
    func calculate(for shape: any Shape) {
        selectedShape = shape
        if let cirle = shape as? Circle {
            result = calculator.calculate(for: cirle)
        } else if let rectangle = shape as? Rectangle {
            result = calculator.calculate(for: rectangle)
        } else if let triangle = shape as? Triangle {
            result = calculator.calculate(for: triangle)
        }
    }
    
    func recalculate() {
        calculate(for: selectedShape)
    }
}


extension Double {
    var rounded2:String {
        return String(format: "%.2f", self)
    }
}
