//
//  DatesLocation.swift
//  Blinders
//
//  Created by Evan on 3/31/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import Foundation
import MapKit

class DatesAnnotation: NSObject, MKAnnotation {
    var coordinate = CLLocationCoordinate2D()
    
    init(coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
    }
}