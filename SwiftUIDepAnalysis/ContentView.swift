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
            Subview(model: model, item: .SV1)
            Subview(model: model, item: .SV2)
            Subview(model: model, item: .SV3)
            Subview(model: model, item: .SV4)
        }
        .debugPrint("body evaluated")
        .background(.randomColor)
        .padding()
    }
}

final class Model: ObservableObject {
    enum SVItem: String {
        case SV1, SV2, SV3, SV4
    }
    
    @Published var sv1text = "SV1"
    @Published var sv2text = "SV2"
    @Published var sv3text = "SV3"
    @Published var sv4text = "SV4"
    
    private var sv1Value: Int = 0
    private var sv2Value: Int = 0
    private var sv3Value: Int = 0
    private var sv4Value: Int = 0
    
    func update(_ svItem: SVItem) {
        switch svItem {
            case .SV1:
            sv1Value += 1
            sv1text = "SV1: \(sv1Value)"
        case .SV2:
            sv2Value += 1
            sv2text = "SV2: \(sv2Value)"
        case .SV3:
            sv3Value += 1
            sv3text = "SV3: \(sv3Value)"
        case .SV4:
            sv4Value += 1
            sv4text = "SV4: \(sv4Value)"
        }
    }
}

#Preview {
    ContentView()
}
