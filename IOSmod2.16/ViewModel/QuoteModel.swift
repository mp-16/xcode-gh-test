//
//  QuoteModel.swift
//  IOSmod2.16
//
//  Created by Maria Paolini on 1/5/23.
//

import Foundation

class QuoteModel: ObservableObject {
    
    @Published var quotes = [Quote]()
    
    init () {
        self.quotes = DataService.getQuoteData()
    }
}
