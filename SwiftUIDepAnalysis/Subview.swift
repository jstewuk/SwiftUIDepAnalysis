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

    var body: some View {
        VStack {
            Text(model.sv1text)
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
