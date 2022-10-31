//
//  File.swift
//  
//
//  Created by Денис Садаков on 31.10.2022.
//

import Foundation

public struct Product: Codable {
	let id: Int
	let title, productDescription: String
	let price: Int
	let discountPercentage, rating: Double
	let stock: Int
	let brand, category: String
	let thumbnail: String
	let images: [String]
	
	enum CodingKeys: String, CodingKey {
		case id, title
		case productDescription = "description"
		case price, discountPercentage, rating, stock, brand, category, thumbnail, images
	}
}


