//
//  CarMakerViewModel.swift
//  SwiftUIHomeWork
//
//  Created by Aleksander Tooszovsky on 07.01.2020.
//  Copyright © 2020 NA. All rights reserved.
//

import SwiftUI

final class CarMakerViewModel: ObservableObject {
  @Published private(set) var filterButtonName = "Switch faves"
  @Published private(set) var isLoading = false
  @Published private(set) var makers = [Maker]()
  init() {
    loadingFromRemote()
  }

  func loadingFromRemote() {
    isLoading = true
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
      self.makers = [Maker(name: "Subaru", isFavourite: true),
                     Maker(name: "Mitsubishi", isFavourite: false),
                     Maker(name: "Toyota", isFavourite: false),
                     Maker(name: "Nissan", isFavourite: false)]
      self.isLoading = false
    }
  }
}
