//
//  breakingBadViewModel.swift
//  ApiPrueba
//
//  Created by Jesús Francisco Leyva Juárez on 04/06/22.
//

import Foundation

class breakingBadViewModel: ObservableObject {
    @Published var quotes = [Quotes]()
    
    func fetchData() async {
        guard let url = URL(string: "https://www.breakingbadapi.com/api/quotes") else {
            print("Error")
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            if let decodeResponse = try? JSONDecoder().decode([Quotes].self, from: data) {
                DispatchQueue.main.async {
                    self.quotes = decodeResponse
                }
            }
        } catch {
            print("sorry!")
        }
    }
}
