//
//  Store.swift
//  SFSymbols Library
//
//  Created by b.fernandes.santos on 10/06/19.
//  Copyright © 2019 bls. All rights reserved.
//

import SwiftUI
import Combine

public class Store: BindableObject {

    public var search: String {
        didSet {
            didChange.send(())
        }
    }

    public var symbols: [SFSymbolsLibrary] {
        didSet {
            didChange.send(())
        }
    }

    public var didChange = PassthroughSubject<Void, Never>()

    init() {
        self.symbols = SFSymbolsLibrary.allCases
        self.search = String()
    }

    func filter() -> [SFSymbolsLibrary] {
        if search.isEmpty {
            return symbols
        }
        return symbols.filter { $0.rawValue.uppercased().contains(search.uppercased()) }
    }
}

