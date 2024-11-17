//
//  Subview.swift
//  SwiftUIDepAnalysis
//
//  Created by James Stewart on 11/17/24.
//

import SwiftUI

struct Subview: View {
    @ObservedObject var model: Model
    var item: Model.SVItem = .SV1
    
    var text: String {
        switch item {
        case .SV1: return model.sv1text
        case .SV2: return model.sv2text
        case .SV3: return model.sv3text
        case .SV4: return model.sv4text
        }
    }

    var body: some View {
        VStack {
            Text(text)
            Button("Increment \(item.rawValue)") {
                model.update(item)
            }
            .background(.randomColor)
            .debugPrint("\(item.rawValue) VStack evaluated")
        }
        .debugPrint("\(item.rawValue) Root evaluated")
    }
    
}

#Preview {
    Subview(model: Model())
}
