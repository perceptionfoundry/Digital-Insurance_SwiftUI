//
//  testView.swift
//  Digital Insurance
//
//  Created by Syed ShahRukh Haider on 04/03/2021.
//

import SwiftUI
extension AnyTransition {
    static var moveAndFade: AnyTransition {
        AnyTransition.scale
    }
}

struct testView: View {
    @State private var showDetail = false

    var body: some View {
        VStack {
           

            if showDetail {
                GroupBox{
                    testview2()
                        .transition(.scale)
                }
             
            }
        }
    }
}
