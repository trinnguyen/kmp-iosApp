//
//  ViewController.swift
//  iosApp
//
//  Created by Tri Nguyen on 04-11-2023.
//

import UIKit
import shared

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hello KMP, \(Platform_iosKt.getPlatform().name)")
    }

}

