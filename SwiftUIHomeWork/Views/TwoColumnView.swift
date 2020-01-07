//
//  TwoColumnView.swift
//  SwiftUIHomeWork
//
//  Created by Aleksander Tooszovsky on 07.01.2020.
//  Copyright © 2020 NA. All rights reserved.
//

import SwiftUI
import Combine

final class TwoColumnViewModel: ObservableObject {
  @Published private(set) var items = [[Int]]()

  init() {
    let paired = (1...40).publisher.collect(2)
    _ = paired.collect().sink { self.items = $0 }
  }
}

struct TwoColumnView: View {

  @EnvironmentObject var viewModel: TwoColumnViewModel

  var body: some View {
    ScrollView(showsIndicators: false) {
      VStack(spacing: 10) {
        ForEach(0..<viewModel.items.count, id: \.self) { pair in
          HStack(spacing: 10) {
            ForEach(self.viewModel.items[pair], id: \.self) { number in
              ZStack {
                RoundedRectangle(cornerRadius: 10)
                  .foregroundColor(.gray)
                Text("\(number)")
              }
              .frame(maxWidth: .infinity)
              .frame(height: 50)
            }
          }
        }
      }
    }
    .padding(.leading, 16)
    .padding(.trailing, 16)
  }
}
