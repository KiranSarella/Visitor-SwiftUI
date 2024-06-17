//
//  Shape.swift
//  Visitor-SwiftUI
//
//

import Foundation

protocol Shape: Identifiable {
    var id: UUID { get }
    var name: String { get }
    var image: String { get }
}


struct Circle: Shape {
    var id: UUID = UUID()
    var name: String = "Circle"
    var image: String = "circle"
    var radius: Double
}

struct Rectangle: Shape {
    var id: UUID = UUID()
    var name: String = "Rectangle"
    var image: String = "rectangle"
    var height: Double
    var width: Double
}

struct Triangle: Shape {
    var id: UUID = UUID()
    var name: String = "Triangle"
    var image: String = "triangle"
    var a: Double
    var b: Double
    var c: Double
}


