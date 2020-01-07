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
      .environmentObject(CarMakerViewModel())
      .tag(0)
      StartView()
        .tabItem {
          VStack {
            Image(systemName: "bolt")
            Text("Start") }
      }
      .tag(1)
      AboutView()
        .tabItem {
          VStack {
            Image(systemName: "info.circle")
            Text("About") }
      }
      .tag(2)
    }
  }
  
}

struct AboutView: View {
  var body: some View {
    Text("About Page")
  }
}
