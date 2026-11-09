
import Foundation
import CoreLocation
import Combine

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {

    private let manager = CLLocationManager()

    override init() {
        super.init()
        manager.delegate = self
    }

    func requestPermission() {
        manager.requestWhenInUseAuthorization()
    }

    // Called when the user changes location services permission
    func locationManager(_ manager: CLLocationManager,
                         didChangeAuthorization status: CLAuthorizationStatus) {

        switch status {
        case .notDetermined:
            print("Location permission: not determined.")

        case .restricted, .denied:
            print("Location permission: denied/restricted.")

        case .authorizedWhenInUse, .authorizedAlways:
            print("Location permission: granted.")

        @unknown default:
            print("Unknown authorization status.")
        }
    }
}
