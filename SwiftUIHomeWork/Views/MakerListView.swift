//
//  MakerListView.swift
//  SwiftUIHomeWork
//
//  Created by Aleksander Tooszovsky on 07.12.2019.
//  Copyright © 2019 NA. All rights reserved.
//

import SwiftUI

struct MakerListView: View {
  @ObservedObject var viewModel = CarMakerViewModel()

  @State var favesShowed = false

  init() {
    UITableView.appearance().separatorStyle = .none
  }

  var body: some View {
    NavigationView {
      VStack {
        List {
          FilterView(favesShowed: $favesShowed)
            .environmentObject(viewModel)
          ForEach(viewModel.makers) { maker in
            if !self.favesShowed || maker.isFavourite {
              NavigationLink(destination: MakerView()) {
                Text(maker.name)
              }
            }
          }
        }
      }
      .navigationBarHidden(false)
      .navigationBarTitle("Makers")
    }
  }
}

struct MakerListView_Previews: PreviewProvider {
  static var previews: some View {
    MakerListView()
  }
}

final class CarMakerViewModel: ObservableObject {
  @Published private(set) var filterButtonName = "Switch faves"
  @Published private(set) var makers = [Maker(name: "Subaru", isFavourite: true),
                                        Maker(name: "Mitsubishi", isFavourite: false),
                                        Maker(name: "Toyota", isFavourite: false)]
}

struct Maker: Identifiable {
  let id = UUID()
  let name: String
  let isFavourite: Bool
}



struct FilterView: View {
  @Binding var favesShowed: Bool
  @EnvironmentObject var viewModel: CarMakerViewModel

  var body: some View {
    Toggle(isOn: $favesShowed) {
      Text(viewModel.filterButtonName)
    }
  }
}
