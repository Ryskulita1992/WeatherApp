//
//  NetworkManager.swift
//  WeatherApp
//
//  Created by admin on 26.02.2021.
//

import Foundation

final class NetworkManager<T:Codable>{
    static func fetch(for url: URL, completion: @escaping(Result<T, NetworkError>) ->Void){
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard error == nil else {
                print(String(describing: error!))
                completion(.failure(.error(err: error!.localizedDescription
                )))
                return
            }
//if response is not http url type we need to convert that, and conversion also can fail
            guard let httpResponse = response as? HTTPURLResponse,
//and we need to check if the status code  on httpResponse is 200 that means we get some sort of result
                  httpResponse.statusCode == 200 else {
                completion(.failure(.invalidResponse))
                return
            }
// guard let data = so we can safely unwrap data thats given to us
//and if it fails we gonna reply or call the completion block with failure.invalid data
            guard let data = data else{
                completion(.failure(.invalidData))
                return
            }
            
//if we pass all these statements we receive data and we can say do let json
            do{
                let json = try JSONDecoder().decode(T.self, from: data)
                completion(.success(json))
            }catch let err{
                print(String(describing: err))
                completion(.failure(.decodingError(err:err.localizedDescription)))
            }
        }.resume()
    }
}

enum NetworkError : Error {
    case invalidResponse
    case invalidData
    case error(err:String)
    case decodingError(err:String)
    
}
