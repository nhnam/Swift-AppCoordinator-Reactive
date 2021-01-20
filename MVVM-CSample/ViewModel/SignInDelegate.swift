//
// Created by ナム Nam on 18/1/21.
//

import Foundation

protocol SignInDelegate: AnyObject {
    func didSignIn()
    func didFailSignIn(message: String)
}