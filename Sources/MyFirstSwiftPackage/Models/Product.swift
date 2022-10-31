//
//  File.swift
//  
//
//  Created by Денис Садаков on 31.10.2022.
//

import Foundation
// Prod
public struct Product: Codable {
	public let id: Int
	public let title, productDescription: String
	public let price: Int
	public let discountPercentage, rating: Double
	public let stock: Int
	public let brand, category: String
	public let thumbnail: String
	public let images: [String]
	
	enum CodingKeys: String, CodingKey {
		case id, title
		case productDescription = "description"
		case price, discountPercentage, rating, stock, brand, category, thumbnail, images
	}
}


