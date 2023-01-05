//
//  DataService.swift
//  IOSmod2.16
//
//  Created by Maria Paolini on 1/5/23.
//

import Foundation

class DataService {
    static func getQuoteData () ->[Quote] {
        //find path, get url, make data object, make decoder, decode, set ID, return a class for the func
        let pathString = Bundle.main.path(forResource: "quotes", ofType: "json")
        if let path = pathString {
            let url = URL(fileURLWithPath: path)
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                
                do {
                    //the "data" at the end refers to the variable holding the data object
                    let quoteData = try decoder.decode([Quote].self, from: data)
                    for q in quoteData {
                        q.id = UUID()
                    }
                    return quoteData
                }catch {
                    print(error)
                }
                
            }catch {
                print(error)
            }
        }
        return [Quote]()
    }
}
