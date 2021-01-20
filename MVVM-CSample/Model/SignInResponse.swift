//
// Created by ナム Nam on 18/1/21.
//

import Foundation

enum SignInResponse {
    case success(token: String, userId: String)
    case failure(message: String)
}