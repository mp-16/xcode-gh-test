//
//  ContentView.swift
//  IOSmod2.16
//
//  Created by Maria Paolini on 1/5/23.
//

import SwiftUI

struct MultiQuoteView: View {
    @ObservedObject var model = QuoteModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach (model.quotes) { q in
                    NavigationLink(
                        destination: SingleQuoteView(quote: q),
                        label: {
                            ZStack {
                                Image(q.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 350, height: 350, alignment: .center)
                                    .clipped()
                                    .cornerRadius(50)
                                VStack (alignment: .center) {
                                    Text(q.short).font(.largeTitle).fontWeight(.bold)
                                    
                                    Text("\n- \(q.author)")
                                        
                                }
                                .padding(20)
                                .shadow(color: .black, radius: 10, x: 2, y: 2)
                            }.foregroundColor(Color.white)
                            
                        })
                }.navigationBarTitle("Quotes")
            }//scrollview end
        }//nav end
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MultiQuoteView()
    }
}
