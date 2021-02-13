//
// Created by ナム Nam on 18/1/21.
//

import UIKit

protocol Coordinator: class {
    var navigationController: UINavigationController { get set }
    func start()
}
