//
//  ContentView.swift
//  SFSymbols Library
//
//  Created by b.fernandes.santos on 10/06/19.
//  Copyright © 2019 bls. All rights reserved.
//

import SwiftUI

struct ContentView : View {

    var body: some View {
        NavigationView {
            List(SFSymbolsLibrary.allCases.identified(by: \.self)) { symbol in
                PresentationButton(SymbolCell(symbol: symbol), destination: SymbolDetail(symbol: symbol))
            }
            .navigationBarTitle(Text("SF Symbols"), displayMode: .large)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
