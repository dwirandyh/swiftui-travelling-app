//
//  ContentView.swift
//  Travelling APp
//
//  Created by Dwi Randy Herdinanto on 21/02/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView().tabItem {
                Image("home").font(.title)
            }
            
            Text("activity").tabItem {
                Image("activity").font(.title)
            }
            
            Text("search").tabItem{
                Image("search").font(.title)
            }
            
            Text("person").tabItem{
                Image("Setting").font(.title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
