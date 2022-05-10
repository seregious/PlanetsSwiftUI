//
//  ContentView.swift
//  Planets
//
//  Created by Сергей Иванчихин on 10.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
        
    var body: some View {

        
        NavigationView {
            ZStack{
                BackgroundAnimation()
                PlanetListView()
                    .navigationTitle("Solar System")
                
            }
            
        }
        .accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
