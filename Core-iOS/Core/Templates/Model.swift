//
//  Model.swift
//  EinDesEin
//
//  Created by Mikhail Timoscenko on 22.06.2020.
//  Copyright © 2020 EinDesEin. All rights reserved.
//

import Foundation
import EventsTree

open class Model: EventNode {
    public fileprivate(set) var isActive = false
}

public protocol ControllerVisibilityOutput {

  func controllerDidBecomeVisible()
  func controllerDidBecomeHidden()

}

public extension ControllerVisibilityOutput where Self: Model {

  func controllerDidBecomeVisible() {
    isActive = true
  }

  func controllerDidBecomeHidden() {
    isActive = false
  }

}
