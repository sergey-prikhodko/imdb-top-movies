//
//  Movie.swift
//  TopMovies
//
//  Created by Serhii Prykhodko on 04.04.2023.
//

import Foundation

struct Movie: Decodable {
  let id: String
  let rank: Int
  let title: String
  let fullTitle: String
  let year: Int
  let image: URL
  let crew: String
  let imDbRating: Double
  let imDbRatingCount: Int
  
  enum CodingKeys: String, CodingKey {
    case id, rank, title, fullTitle, year, image, crew, imDbRating, imDbRatingCount
  }
  
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.id = try container.decode(String.self, forKey: .id)
    self.title = try container.decode(String.self, forKey: .title)
    self.fullTitle = try container.decode(String.self, forKey: .fullTitle)
    self.crew = try container.decode(String.self, forKey: .crew)
    
    let rankString = try container.decode(String.self, forKey: .rank)
    rank = Int(rankString) ?? 0
    let yearString = try container.decode(String.self, forKey: .year)
    year = Int(yearString) ?? 0
    let imDbRatingString = try container.decode(String.self, forKey: .imDbRating)
    imDbRating = Double(imDbRatingString) ?? 0.0
    let imDbRatingCountString = try container.decode(String.self, forKey: .imDbRatingCount)
    imDbRatingCount = Int(imDbRatingCountString) ?? 0
    let imageString = try container.decode(String.self, forKey: .image)
    image = URL(string: imageString)!
  }
}
