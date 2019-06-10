//
//  ContentView.swift
//  SFSymbols Library
//
//  Created by b.fernandes.santos on 10/06/19.
//  Copyright © 2019 bls. All rights reserved.
//

import SwiftUI

struct ContentView : View {

    @ObjectBinding var store: Store

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image(systemName: SFSymbolsLibrary.smagnifyingglass.rawValue)
                    TextField($store.search, placeholder: Text("Search here"))
                        .textFieldStyle(.roundedBorder)
                }
                .frame(height: 44)
                .padding([.leading, .trailing], 16)

                List(store.filter().identified(by: \.self)) { symbol in

                    NavigationButton(destination: SymbolDetail(symbol: symbol)) {
                        SymbolCell(symbol: symbol)
                    }
                }
            }
            .navigationBarTitle(Text("SF Symbols"), displayMode: .large)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(store: Store())
    }
}
#endif
