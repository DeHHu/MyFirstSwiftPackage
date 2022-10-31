//
//  File.swift
//  
//
//  Created by Денис Садаков on 31.10.2022.
//

import Foundation
import Alamofire

public protocol ProductsRepository {
	func product(by id: String, completion: @escaping (Result<Product, Error>) -> Void)
}

public class ProductsRepositoryImpl: ProductsRepository {
	
	public func product(by id: String, completion: @escaping (Result<Product, Error>) -> Void) {
		AF.request("https://dummyjson.com/products/1", method: .get)
			.responseDecodable(of: Product.self) { response in
				switch response.result {
					case .success(let data):
						completion(.success(data))
					case .failure(let error):
						completion(.failure(error))
				}
			}
	}
	

}
