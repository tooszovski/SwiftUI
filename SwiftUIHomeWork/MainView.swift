//
//  ContentView.swift
//  SwiftUIHomeWork
//
//  Created by Aleksander Tooszovsky on 07.12.2019.
//  Copyright © 2019 NA. All rights reserved.
//

import SwiftUI
import Combine

struct MainView: View {

  @State private var selection = 0

  var body: some View {
    TabView(selection: $selection) {
      MakerListView()
        .tabItem {
          VStack {
            Image(systemName: "car")
            Text("Maker") }
      }
      .tag(0)
      AboutView()
        .tabItem {
          VStack {
            Image(systemName: "info.circle")
            Text("About") }
      }
      .tag(1)
    }
  }
  
}

struct AboutView: View {
  var body: some View {
    Text("About Page")
  }
}
