//
//  SingleQuoteView.swift
//  IOSmod2.16
//
//  Created by Maria Paolini on 1/5/23.
//

import SwiftUI

struct SingleQuoteView: View {
    var quote:Quote
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading, spacing: 20.0){
                Text(quote.author)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                ForEach(quote.longQuote, id: \.self) { q in
                    Text(q)
                        .font(.body)
                        .multilineTextAlignment(.leading)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }
                Spacer()
            }
        }
    }
}

struct SingleQuoteView_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        SingleQuoteView(quote: model.quotes[2])
    }
}
