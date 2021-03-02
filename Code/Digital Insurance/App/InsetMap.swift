//
//  MapView.swift
//  Africa
//
//  Created by Syed ShahRukh Haider on 02/01/2021.
//

import SwiftUI
import MapKit

struct InsetMap: View {
    
    var heightValue : CGFloat
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.7128, longitude: 74.0060), span: MKCoordinateSpan(latitudeDelta: 5, longitudeDelta: 5))
    
    var body: some View {
    
       
        Map(coordinateRegion: $region)
            .frame(height:heightValue)
            .cornerRadius(12)
    }
}

struct InsetMap_Previews: PreviewProvider {
    static var previews: some View {
        InsetMap(heightValue: 180)
            .previewLayout(.sizeThatFits)
            
        
            
    }
}
