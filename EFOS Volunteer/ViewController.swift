//
//  ViewController.swift
//  EFOS Volunteer
//
//  Created by Kennan Mell on 9/17/16.
//
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let loginButton = FBSDKLoginButton.init()
        loginButton.center = self.view.center
        self.view.addSubview(loginButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

