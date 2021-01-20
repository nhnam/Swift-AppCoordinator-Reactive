//
// Created by ナム Nam on 18/1/21.
//

import Foundation

class SignInViewModel {
  private let authentication: Authentication
  weak var delegate: SignInDelegate?

  var emailAddress: Box<String> = Box("")
  var password: Box<String> = Box("")
  var jwt: Box<String?> = Box(nil)
  var isSignInActive: Bool {
    emailAddress.value != "" && password.value != ""
  }

  init(authentication: Authentication) {
    self.authentication = authentication
  }

  func didTapSignIn() {
    authentication.signIn { [weak self] response in
      guard let delegate = self?.delegate else {
        return
      }

      switch (response) {
      case .success(let token, _):
        jwt.value = token;
        break
      case .failure(_):
        jwt.value = nil;
        break
      }
    }
  }
}