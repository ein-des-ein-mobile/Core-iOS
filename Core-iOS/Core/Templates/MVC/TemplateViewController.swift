//
//  TemplateViewController.swift
//  Core-iOS
//
//  Created by Mikhail Timoscenko on 04.12.2020.
//

import UIKit

protocol TemplateViewControllerOutput: TemplateControllerModelInput {}
protocol TemplateViewControllerInput: TemplateControllerModelOutput {}

class TemplateViewController: UIViewController {

    var model: TemplateViewControllerOutput!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension TemplateViewController: TemplateViewControllerInput {

    func didStartActivity(_ activity: TemplateActivity) {

    }

    func didFinishActivity(_ activity: TemplateActivity) {

    }

    func didFinishActivity(_ activity: TemplateActivity, with error: Error) {

    }

}
