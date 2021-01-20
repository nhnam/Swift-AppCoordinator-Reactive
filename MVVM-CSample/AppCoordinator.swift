//
// Created by ナム Nam on 18/1/21.
//

import UIKit

class AppCoordinator: Coordinator {
  lazy private var window = { UIWindow(frame: UIScreen.main.bounds) }()
  var navigationController =  UINavigationController()

  func start() {
    window.rootViewController = navigationController
    window.makeKeyAndVisible()

    showSignIn()
  }

  func showSignIn() {
    let viewController = UIStoryboard.init(name: "Main", bundle: nil).instantiateInitialViewController()
    guard let signInViewController = viewController as? SignInViewController else { return }
    navigationController.viewControllers=[signInViewController]
  }


}