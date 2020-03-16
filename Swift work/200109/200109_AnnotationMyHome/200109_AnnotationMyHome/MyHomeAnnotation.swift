//
//  ViewController.swift
//  200109_AnnotationMyHome
//
//  Created by Demian on 2020/01/09.
//  Copyright © 2020 Demian. All rights reserved.
//
import MapKit
import UIKit

class MyHomeAnnotationController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    let searchAddress = UITextField()
    let locationManager = CLLocationManager()
    var pinGroup: [CLLocationCoordinate2D] = []
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(searchAddress)
        checkAuthorizationStatus()
        
        setUI()
    }
    
    private func setUI() {
        searchAddress.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            searchAddress.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            searchAddress.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            searchAddress.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.85),
            searchAddress.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.1)
        ])
        searchAddress.borderStyle = .line
        searchAddress.autocorrectionType = .no
        searchAddress.autocapitalizationType = .none
        searchAddress.backgroundColor = .white
        searchAddress.addTarget(self, action: #selector(lookForAddress), for: .editingDidEndOnExit)
        
    }
    @objc func lookForAddress(_ sender: Any) {
        guard let address = searchAddress.text else {return}
        let geocoder = CLGeocoder()
    
        geocoder.geocodeAddressString(address) { (placeMark, error) in
            print("Convert Address to Coordinate")
            if error != nil {
                print("Error")
                
                return print(error!.localizedDescription)
            } else {
                print("Convert Available")
                self.count += 1
            }
            guard let place = placeMark?.first else { return }
//            guard let addressLatitude = place.location?.coordinate.latitude else {return}
//            guard let addressLongitued = place.location?.coordinate.longitude else {return}
            
            guard let addressLocation = place.location else {return} // 위도, 경도를 동시에
            
           
            let pinAddress = MKPointAnnotation()
            pinAddress.title = "\(self.count)번째 행선지"
//            pinAddress.coordinate = CLLocationCoordinate2DMake(addressLatitude, addressLongitued)
            pinAddress.coordinate = addressLocation.coordinate
            self.setRegion(coordinate: pinAddress.coordinate)
            self.mapView.addAnnotation(pinAddress)
            
//            let addressPoint: CLLocationCoordinate2D = .init(latitude: addressLongitued, longitude: addressLatitude)
            let addressPoint = addressLocation.coordinate
            print(addressPoint)
            ///핀주변 사각형 그리기
            var point1 = addressPoint
            point1.latitude += 0.005
            point1.longitude += 0.005
            var point2 = addressPoint
            point2.latitude += 0.005
            point2.longitude -= 0.005
            var point3 = addressPoint
            point3.latitude -= 0.005
            point3.longitude -= 0.005
            var point4 = addressPoint
            point4.latitude -= 0.005
            point4.longitude += 0.005
            
            let points: [CLLocationCoordinate2D] = [point1, point2, point3, point4, point1]
            let polyline = MKPolyline(coordinates: points, count: points.count)
            print(points)
            self.mapView.addOverlay(polyline)
            
            ///핀경로 선그리기
            self.pinGroup.append(addressPoint)
            let pins = MKPolyline(coordinates: self.pinGroup, count: self.count)
            print([addressPoint])
            self.mapView.addOverlay(pins)
            
            self.searchAddress.text = ""
        }
    }
    
    func checkAuthorizationStatus() {
        switch CLLocationManager.authorizationStatus() {
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted, .denied: break
        case .authorizedWhenInUse:
            fallthrough
        case .authorizedAlways:
            print("authorizedAlways")
        @unknown default: break
        }
    }
    func setRegion(coordinate: CLLocationCoordinate2D) {
        let span = MKCoordinateSpan(latitudeDelta: 0.09, longitudeDelta: 0.09)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        mapView.setRegion(region, animated: true)
    }
    
}


extension MyHomeAnnotationController: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        
        if let polyline = overlay as? MKPolyline {
            print("blue")
            let renderer = MKPolylineRenderer(polyline: polyline)
            renderer.strokeColor = .systemPink
            renderer.lineWidth = 1.5
            return renderer
        }
//        if let pinline = overlay as? MKPolyline {
//            print("green")
//            let pinRender = MKPolylineRenderer(polyline: pinline)
//            pinRender.strokeColor = .green
//            pinRender.lineWidth = 1.5
//            return pinRender
//        }
        return MKOverlayRenderer(overlay: overlay)
    }
}
