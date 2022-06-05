//
//  Quotes.swift
//  ApiPrueba
//
//  Created by Jesús Francisco Leyva Juárez on 04/06/22.
//

import Foundation

struct Quotes: Decodable {
    var quote_id: Int
    var quote: String
    var author: String
    var series: String
}
/*
 {
 "quote_id": 3,
 "quote": "IFT",
 "author": "Skyler White",
 "series": "Breaking Bad"
 },
 */
