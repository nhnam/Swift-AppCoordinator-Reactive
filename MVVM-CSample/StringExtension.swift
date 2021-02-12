//
//  StringExtension.swift
//  MVVM-CSample
//
//  Created by Nam Nguyen on 10/2/21.
//
import Foundation

extension String.StringInterpolation {
  public mutating func appendInterpolation(_ value: String?, defaultValue: @autoclosure () -> String){
    guard let val = value else {
      appendLiteral(defaultValue())
      return
    }
    appendInterpolation(val)
  }
  
  public mutating func appendInterpolation(_ value: String?) {
    appendInterpolation(value, defaultValue: "")
  }
}
