//
//  ContentView.swift
//  Shared
//
//  Created by Jesús Francisco Leyva Juárez on 04/06/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var vm = breakingBadViewModel()
    var body: some View {
        List(vm.quotes, id: \.quote_id) { quotes in
            VStack(alignment: .leading) {
                Text(quotes.author)
                    .font(.headline)
                    .foregroundColor(.blue)
                Text(quotes.quote)
                    .font(.body)
                    .foregroundColor(.secondary)
                Text(quotes.series)
                    .font(.subheadline)
            }
        }.task {
            await vm.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


