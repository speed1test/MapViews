//
//  ContentView.swift
//  MapViews
//
//  Created by elsalvador on 30/12/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )

    var body: some View {
        VStack {
            Text("Mapa con MapView")
                .font(.title)
                .multilineTextAlignment(.center)
            Map(coordinateRegion: $region, showsUserLocation: true)
                       .edgesIgnoringSafeArea(.all)
                       .frame(height: 300)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
