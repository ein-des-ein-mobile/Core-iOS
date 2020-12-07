//
//  ValidationRule.swift
//  EinDesEin
//
//  Created by Mikhail Timoscenko on 25.06.2020.
//  Copyright © 2020 EinDesEin. All rights reserved.
//

import Foundation

public protocol ValidationRule {

  var errorMessage: String { get }
  func validate(_ value: String) -> Bool

}

// MARK: Base Rules

class SuccessRule: ValidationRule {

  let errorMessage = ""

  func validate(_ value: String) -> Bool {
    return true
  }

}

class RequiredRule: ValidationRule {

  let errorMessage: String

  init(errorMessage: String) {
    self.errorMessage = errorMessage
  }

  func validate(_ value: String) -> Bool {
    return !value.isEmpty
  }

}

public class RegexRule: ValidationRule {

public let errorMessage: String
  private let regex: String

  init(regex: String, errorMessage: String) {
    self.errorMessage = errorMessage
    self.regex = regex
  }

public func validate(_ value: String) -> Bool {
    let predicate = NSPredicate(format: "self matches %@", regex)
    return predicate.evaluate(with: value)
  }

}

// MARK: Required Rules

class PasswordRule: ValidationRule {

    var errorMessage: String

    init(errorMessage: String) {
      self.errorMessage = errorMessage
    }

    func validate(_ value: String) -> Bool {
        return value.count >= 5
    }

}

class PhoneRule: ValidationRule {

    var errorMessage: String

    init(errorMessage: String) {
      self.errorMessage = errorMessage
    }

    func validate(_ value: String) -> Bool {
        return value.count >= 1
    }

}

public class EmailRegexRule: RegexRule {

//  /^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/
  private static let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

  public convenience init(errorMessage: String) {
    self.init(regex: EmailRegexRule.emailRegEx, errorMessage: errorMessage)
  }

}
