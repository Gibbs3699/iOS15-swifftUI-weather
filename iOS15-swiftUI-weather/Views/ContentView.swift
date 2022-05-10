//
//  ContentView.swift
//  iOS15-swiftUI-weather
//
//  Created by admin on 27/2/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            
            if let location = locationManager.location {
                Text("Your coordinates are: \(location.longitude), \(location.latitude)")
            }else {
                if locationManager.isLoading {
                    LoadingView()
                }else {
                    WelcomeView()
                        .environmentObject(locationManager)
                }
            }
        }
        .background(Color(hue: 0.62, saturation: 0.873, brightness: 0.38))
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
