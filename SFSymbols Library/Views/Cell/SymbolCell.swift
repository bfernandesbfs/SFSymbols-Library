//
//  SymbolCell.swift
//  SFSymbols Library
//
//  Created by b.fernandes.santos on 10/06/19.
//  Copyright © 2019 bls. All rights reserved.
//

import SwiftUI

struct SymbolCell : View {

    var symbol: SFSymbolsLibrary

    var body: some View {
        HStack {
            Image(systemName: symbol.rawValue)
            Text(symbol.rawValue)
        }
    }
}

#if DEBUG
struct SymbolCell_Previews : PreviewProvider {
    static var previews: some View {
        SymbolCell(symbol: .s00circle)
    }
}
#endif
