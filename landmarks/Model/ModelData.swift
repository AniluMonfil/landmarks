//
//  ModelData.swift
//  landmarks
//
//  Created by anilu monfil on 22/08/23.
//

import Foundation
import Combine

final class ModelData: ObservableObject{
    //landmarks array
   @Published var landmarks: [Landmark] = load("landmarkData.json")
    
}


func load<T: Decodable>(_ filename: String) -> T{
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("Couldn't find \(filename) in main bundle")
    }
    
    do{
        data = try Data(contentsOf: file)
    }catch{
        
        fatalError("Couldn't load \(filename) from main bundle:\n\(error) ")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
    
    
}
