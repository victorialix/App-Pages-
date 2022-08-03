//
//  Mapped.swift
//  Clear Business
//
//  Created by ECC Student on 8/3/22.
//

import CoreLocationUI
import MapKit
import SwiftUI

struct Maps: View {
    
    @StateObject private var viewModel = MapViewModel()
    
    var body: some View {
        ZStack(alignment: .bottom){
            Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
                .ignoresSafeArea()
            
            LocationButton(.currentLocation) {
                viewModel.requestAllowOnceLocationPerms()
            }
            .foregroundColor(Color.white)
            .cornerRadius(8)
            .labelStyle(.titleAndIcon)
            .symbolVariant(.fill)
            .padding(.bottom, 50)
        }
    }
}

struct Mapped_Previews: PreviewProvider {
    static var previews: some View {
        Maps()
    }
}

final class MapViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.8818, longitude: -87.623), span:MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    let locationManager = CLLocationManager()
    override init() {
        super.init()
        locationManager.delegate = self
    }
    func requestAllowOnceLocationPerms() {
        locationManager.requestLocation()
        }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let latestLocation = locations.first else {
            print("Please enable location services to use this feature.")
            return
        }
        DispatchQueue.main.async {
            self.region = MKCoordinateRegion(center: latestLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        }
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
    }
