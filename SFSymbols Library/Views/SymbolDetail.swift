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
        Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
    }
}

#if DEBUG
struct SymbolDetail_Previews : PreviewProvider {
    static var previews: some View {
        SymbolDetail(symbol: .s00circle)
    }
}
#endif
