//
//  ActivityIndicator.swift
//  SwiftUIHomeWork
//
//  Created by Aleksander Tooszovsky on 07.01.2020.
//  Copyright © 2020 NA. All rights reserved.
//

import SwiftUI
import UIKit

struct ActivityIndicatorView: UIViewRepresentable {

    func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView()
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        uiView.startAnimating()
    }

}
