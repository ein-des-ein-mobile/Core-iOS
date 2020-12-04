//
//  TemplateControllerModel.swift
//  Core-iOS
//
//  Created by Mikhail Timoscenko on 04.12.2020.
//

import Foundation
import EventsTree

enum TemplateEvent: Event {

}

enum TemplateViewAction {

}

enum TemplateActivity {

}

protocol TemplateControllerModelInput: class {
    func perform(action: TemplateViewAction)
}

protocol TemplateControllerModelOutput: class {
    func didStartActivity(_ activity: TemplateActivity)
    func didFinishActivity(_ activity: TemplateActivity)
    func didFinishActivity(_ activity: TemplateActivity, with error: Error)
}

class TemplateControllerModel: Model {

    weak var output: TemplateControllerModelOutput!

}

extension TemplateControllerModel: TemplateControllerModelInput, TemplateViewControllerOutput {

    func perform(action: TemplateViewAction) {
        
    }

}
