//
//  SceneDelegate.swift
//  SwiftUIHomeWork
//
//  Created by Aleksander Tooszovsky on 07.12.2019.
//  Copyright © 2019 NA. All rights reserved.
//

import UIKit
import SwiftUI
import BetterSheet

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  var window: UIWindow?

  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    let contentView = MainView()

    // Use a UIHostingController as window root view controller.
    if let windowScene = scene as? UIWindowScene {
      let window = UIWindow(windowScene: windowScene)
      window.rootViewController = UIHostingController.withBetterSheetSupport(rootView: contentView)
      self.window = window
      window.makeKeyAndVisible()
    }
  }
}

