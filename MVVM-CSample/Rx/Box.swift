//
// Created by ナム Nam on 20/1/21.
//

import Foundation

class Box<T> {
  typealias Listener = (T) -> Void
  private var listener: Listener?

  var value:T {
    didSet {
      listener?(value)
    }
  }

  init(_ value: T) {
    self.value = value
  }

  func bind(listener: Listener?) {
    self.listener = listener
    listener?(value)
  }
}