//
//  AccountController.swift
//  EFOS Volunteer
//
//  Created by Kennan Mell on 9/18/16.
//
//

import UIKit

class AccountController: UIViewController, FBSDKLoginButtonDelegate, UITableViewDataSource {
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        (self.view as! AccountView).logoutButton.delegate = self
        (self.view as! AccountView).tableView.dataSource = self
    }
    
    // MARK: FBSDKLoginButtonDelegate
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        // Nothing to do since the button is never used to log in.
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        performSegue(withIdentifier: "AccountToLoginSegue", sender: self)
    }
    
    func loginButtonWillLogin(_ loginButton: FBSDKLoginButton!) -> Bool {
        fatalError("Attempted login on AccountController screen")
    }
    
    // MARK: UITableViewDataSource
    // TODO: Replace the filler data with actual data from the server
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let result = UITableViewCell()
        if (indexPath.row == 0) {
            result.textLabel!.text = "Bob Dylan (9/16)"
        } else {
            result.textLabel!.text = "Peter Frampton (8/16)"
        }
        return result
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}
