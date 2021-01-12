//
//  ViewController.swift
//  DemoMap
//
//  Created by MBA0052 on 1/6/21.
//

import UIKit
import GoogleMaps
import GooglePlaces

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: GMSMapView!
    let locationManager = CLLocationManager()
    var searchController: UISearchController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMarker()
        mapView.settings.myLocationButton = true
        mapView.isMyLocationEnabled = true
    }
    private func setupMarker() {
        let customMarker = CustomMarkerView(frame: CGRect(x: 0, y: 0, width: 40, height: 40), imageName: "rocket")
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2DMake(16.071763, 108.223963)
        marker.title = "Place 1"
        marker.iconView = customMarker
        let marker2 = GMSMarker()
        marker2.position = CLLocationCoordinate2DMake(16.074443, 108.224443)
        marker2.title = "Place 2"
        marker2.iconView = customMarker
        let marker3 = GMSMarker()
        marker3.position = CLLocationCoordinate2DMake(16.073969, 108.228798)
        marker3.title = "Place 3"
        marker3.iconView = customMarker
        let marker4 = GMSMarker()
        marker4.position = CLLocationCoordinate2DMake(16.070629, 108.228563)
        marker4.title = "Place 4"
        marker4.iconView = customMarker
        marker.map = mapView
        marker2.map = mapView
        marker3.map = mapView
        marker4.map = mapView
    }
}
