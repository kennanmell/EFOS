//
//  AccountView.swift
//  EFOS Volunteer
//
//  Created by Kennan Mell on 9/18/16.
//
//

import UIKit
import FBSDKLoginKit

class AccountView: UIView {
    let tableView = UITableView()
    let logoutButton = FBSDKLoginButton()
    let newButton = UIButton()
    let titleLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    // Shared initializer
    private func initialize() {
        newButton.setTitle(NSLocalizedString("New Entry", comment: ""), for: .normal)
        newButton.backgroundColor = UIColor(red: 0.0, green: 128.0 / 255.0, blue: 0.0, alpha: 1.0)
        newButton.layer.cornerRadius = 3.0
        titleLabel.text = NSLocalizedString("Your Account", comment: "")
        
        self.addSubview(tableView)
        self.addSubview(logoutButton)
        self.addSubview(newButton)
        self.addSubview(titleLabel)
    }
    
    override func layoutSubviews() {
        let allHorizontalMargin = self.frame.width * 0.15
        let allWidth = self.frame.width - allHorizontalMargin * 2
        let topMargin = self.frame.height * 0.15
        let tableViewToNewButtonMargin = self.frame.height * 0.1
        let newButtonToLogoutButtonMargin = self.frame.height * 0.1
        
        let tableViewHeight = self.frame.height * 0.35
        
        tableView.frame = CGRect(x: allHorizontalMargin, y: topMargin, width: allWidth, height: tableViewHeight)
        
        logoutButton.center = self.center

        newButton.frame = CGRect(x: logoutButton.frame.origin.x, y: tableView.frame.origin.y + tableView.frame.height + tableViewToNewButtonMargin, width: logoutButton.frame.width, height: logoutButton.frame.height)
        
        logoutButton.frame = CGRect(x: logoutButton.frame.origin.x, y: newButton.frame.origin.y + newButton.frame.height + newButtonToLogoutButtonMargin, width: logoutButton.frame.width, height: logoutButton.frame.height)
    }
    
}
