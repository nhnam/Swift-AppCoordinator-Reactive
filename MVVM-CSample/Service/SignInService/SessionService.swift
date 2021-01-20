//
// Created by ナム Nam on 18/1/21.
//

import Foundation
class SessionService: Authentication {
    func signIn(completion: (SignInResponse) -> Void) {
        // TODO: Call API
        completion(.success(token: "123456", userId: "user123"))
    }
}
