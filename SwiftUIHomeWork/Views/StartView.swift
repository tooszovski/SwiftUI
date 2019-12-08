//
//  StartView.swift
//  SwiftUIHomeWork
//
//  Created by Aleksander Tooszovsky on 08.12.2019.
//  Copyright © 2019 NA. All rights reserved.
//

import SwiftUI

struct StartView: View {

  @State private var showAuthors: Bool = false

  var body: some View {
    Button(action: {
      self.showAuthors = true
    }) {
      Text("Show Authors")
    }.betterSheet(isPresented: self.$showAuthors,  onDismiss: { print("StartModal dismissed") }) {
      StartModalView()
    }
  }
}

struct StartView_Previews: PreviewProvider {
  static var previews: some View {
    StartView()
  }
}
