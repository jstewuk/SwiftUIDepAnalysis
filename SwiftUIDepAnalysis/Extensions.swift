//
//  Extensions.swift
//  SwiftUIDepAnalysis
//
//  Created by James Stewart on 11/17/24.
//

import SwiftUI

extension ShapeStyle where Self == Color {
    public static var randomColor: some ShapeStyle {
        Color(
            red: Double.random(in: 0.0 ... 1.0),
            green: Double.random(in: 0.0 ... 1.0),
            blue: Double.random(in: 0.0 ... 1.0),
            opacity: Double.random(in: 0.0 ... 1.0)
            )
    }
}

extension View {
    func debugPrint(_ vars: Any...) -> some View {
        for v in vars { print(v) }
        return self
    }
    
    func debugPrint() -> some View {
        print(Self.self)
        return self
    }
    
    func debugPrint(_ string: String) -> some View {
        print(string)
        return self
    }
}
