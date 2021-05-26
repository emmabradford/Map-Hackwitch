//
//  LocationManager.swift
//  map Hackwitch
//
//  Created by Emma Bradford on 3/1/21.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, CLLocationManagerDelegate, ObservableObject
{
    var locationManager = CLLocationManager()
    var geocoder = CLGeocoder()
    
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.stopUpdatingLocation()
    }
}
