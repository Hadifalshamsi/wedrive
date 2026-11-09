
import SwiftUI
import MapKit
extension CLLocationCoordinate2D {

    // Burj Khalifa, Dubai
    static let BurjKhalifa =
        CLLocationCoordinate2D(latitude: 25.1972, longitude: 55.2744)

    // The Dubai Mall, Dubai
    static let DubaiMall =
        CLLocationCoordinate2D(latitude: 25.1985, longitude: 55.2774)

    // Sheikh Zayed Grand Mosque, Abu Dhabi
    static let SZGrandMosque =
        CLLocationCoordinate2D(latitude: 24.4128, longitude: 54.4740)

    // Louvre Abu Dhabi, Abu Dhabi
    static let LouvreAD =
        CLLocationCoordinate2D(latitude: 24.5333, longitude: 54.3976)
}


struct ContentView: View {

    @ObservedObject var locationManager = LocationManager()

    var body: some View {
        Map(interactionModes: [.pan, .zoom, .pitch]) {
            // markers & annotations go here
        }
    }
}


#Preview {
    ContentView()
}
