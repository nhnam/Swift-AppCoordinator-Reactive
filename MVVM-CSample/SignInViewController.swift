//
// Created by ナム Nam on 18/1/21.
//

import UIKit

class SignInViewController: UIViewController {
  @IBOutlet weak var emailTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  @IBOutlet weak var signInButton: UIButton!
  private var viewModel: SignInViewModel!

  override func viewDidLoad() {
    super.viewDidLoad()
    viewModel = SignInViewModel(authentication: SessionService())
    viewModel.delegate = self
    viewModel.jwt.bind { jwt in
      print("JWT: \(jwt)")
    }
    emailTextField.addTarget(self, action: #selector(credentialDidChanged), for: UIControl.Event.editingChanged)
    passwordTextField.addTarget(self, action: #selector(credentialDidChanged), for: UIControl.Event.editingChanged)
    signInButton.isEnabled = viewModel.isSignInActive
  }

  @objc private func credentialDidChanged() {
    viewModel.emailAddress.value = emailTextField.text ?? ""
    viewModel.password.value = passwordTextField.text ?? ""
    signInButton.isEnabled = viewModel.isSignInActive
  }

  @IBAction func didTapSignIn() {
    viewModel.didTapSignIn()
  }
}

extension SignInViewController: SignInDelegate {
  func didSignIn() {
    // TODO: SignIn successful
    print("Sign In successful")
  }

  func didFailSignIn(message: String) {
    // TODO: SignIn failed
    print("Sign In failed")
  }


}