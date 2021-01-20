//
// Created by ナム Nam on 18/1/21.
//

import Foundation

protocol Authentication {
    func signIn(completion: (SignInResponse) -> Void)
}
