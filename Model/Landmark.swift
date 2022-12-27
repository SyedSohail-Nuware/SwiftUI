//
//  Landmark.swift
//  myapp
//
//  Created by syed.sohail on 26/12/22.

//
//import Foundation
//import SwiftUI
//import CoreLocation
//
//struct Landmark: Hashable, Codable{
//    var id: Int
//    var name: String
//    var state: String
//    var description: String
//    var park: String
//
//    private var imageName: String
//    var image: Image {
//        Image(imageName)
//    }
//
//    private var coodinates: Coordinates
//
//    var locationCoordinates: CLLocationCoordinate2D{      //
//        CLLocationCoordinate2D(
//            latitude: coodinates.latitude,
//            longitude: coodinates.longitute
//        )
//    }
//
//    struct Coordinates: Hashable, Codable {
//        var longitute: Double
//        var latitude: Double
//    }
//}

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String

    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
