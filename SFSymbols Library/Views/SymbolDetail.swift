//
//  SymbolDetail.swift
//  SFSymbols Library
//
//  Created by b.fernandes.santos on 10/06/19.
//  Copyright © 2019 bls. All rights reserved.
//

import SwiftUI

struct SymbolDetail : View {

    var symbol: SFSymbolsLibrary

    var body: some View {
        VStack {
            Image(systemName: symbol.rawValue)
                .font(.system(size: 60))

            Text(symbol.rawValue)
                .font(.title)
                .padding(.top, 100)

        }
    }
}

#if DEBUG
struct SymbolDetail_Previews : PreviewProvider {
    static var previews: some View {
        SymbolDetail(symbol: .s00circle)
    }
}
#endif
