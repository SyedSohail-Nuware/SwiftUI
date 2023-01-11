//
//  ModelData.swift
//  myapp
//
//  Created by syed.sohail on 26/12/22.
//

import Foundation
import Combine
//var landmark: [Landmark]
//var landmarks: [Landmark] = load("landmarkData.json")

//func load<T: Decodable>(_ filename: String) -> T {
//    let data: Data
//
//    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
//    else {
//        fatalError("file: \(filename) not found")
//    }
//    do{
//        data = try Data(contentsOf: file)
//    }
//    catch{
//        fatalError("Couldn't Load \(filename) \n Error")
//    }
//    do{
//        let decoder = JSONDecoder()
//        return try decoder.decode(T.self, from: data)
//    }
//    catch{
//        fatalError("Error during parssing the file!!! ")
//    }
//}

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")

}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
