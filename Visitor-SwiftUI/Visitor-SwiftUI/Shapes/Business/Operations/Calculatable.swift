//
//  CalculatableVisitor.swift
//  Visitor-SwiftUI
//
//

import Foundation


protocol Calculatable {
    
    func calculate(for circle: Circle) -> Double
    func calculate(for rectangle: Rectangle) -> Double
    func calculate(for triangle: Triangle) -> Double
}

