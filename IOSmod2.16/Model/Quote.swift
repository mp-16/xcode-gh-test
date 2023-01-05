//
//  Quote.swift
//  IOSmod2.16
//
//  Created by Maria Paolini on 1/5/23.
//

import Foundation

class Quote: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var image:String
    var author: String
    var short: String
    var longQuote: [String]
    //this is a change I want to see.
    
}
