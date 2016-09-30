//
//  LoginController.swift
//  EFOS Volunteer
//
//  Created by Kennan Mell on 9/17/16.
//
//

import UIKit
import FBSDKLoginKit

class LoginController: UIViewController, FBSDKLoginButtonDelegate {

    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        (self.view as! LoginView).loginButton.delegate = self
        (self.view as! LoginView).loginButton.readPermissions = ["public_profile", "email", "user_friends"]
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if FBSDKAccessToken.current() != nil {
            performSegue(withIdentifier: "LoginToAccountSegue", sender: self)
        }
    }
    
    // MARK: FBSDKLoginButton
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if error == nil {
            performSegue(withIdentifier: "LoginToAccountSegue", sender: self)
        }
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        fatalError("Logout on LoginController screen")
    }
    
    func loginButtonWillLogin(_ loginButton: FBSDKLoginButton!) -> Bool {
        return true
    }

}

