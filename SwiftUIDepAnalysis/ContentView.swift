//
//  ContentView.swift
//  SwiftUIDepAnalysis
//
//  Created by James Stewart on 11/17/24.
//

import SwiftUI

struct ContentView: View {
    var model = Model()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .background(.randomColor)
                .debugPrint("Image evaluated")
            VStack {
                Text(model.sv1text)
                Button("Increment SV1") {
                    model.updateSV1()
                }
                .background(.randomColor)
                .debugPrint("SV1 VStack evaluated")
            }
            VStack {
                Text(model.sv2text)
                Button("Increment SV2") {
                    model.updateSV2()
                }
                .background(.randomColor)
                .debugPrint("SV2 VStack evaluated")
            }
            VStack {
                Text(model.sv3text)
                Button("Increment SV3") {
                    model.updateSV3()
                }
                .background(.randomColor)
                .debugPrint("SV3 VStack evaluated")
            }
            VStack {
                Text(model.sv4text)
                Button("Increment SV4") {
                    model.updateSV4()
                }
                .background(.randomColor)
                .debugPrint("SV4 VStack evaluated")
            }

        }
        .debugPrint("body evaluated")
        .background(.randomColor)
        .padding()
    }
}

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

@Observable final class Model {
    var sv1text = "SV1"
    var sv2text = "SV2"
    var sv3text = "SV3"
    var sv4text = "SV4"
    
    @ObservationIgnored private var sv1Value: Int = 0
    @ObservationIgnored private var sv2Value: Int = 0
    @ObservationIgnored private var sv3Value: Int = 0
    @ObservationIgnored private var sv4Value: Int = 0
    
    func updateSV1() {
        sv1Value += 1
        sv1text = "SV1: \(sv1Value)"
    }
    
    func updateSV2() {
        sv2Value += 1
        sv2text = "SV2: \(sv2Value)"
    }
    
    func updateSV3() {
        sv3Value += 1
        sv3text = "SV3: \(sv3Value)"
    }
    
    func updateSV4() {
        sv4Value += 1
        sv4text = "SV4: \(sv4Value)"
    }
}

#Preview {
    ContentView()
}
