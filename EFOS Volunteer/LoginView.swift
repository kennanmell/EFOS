//
//  LoginView.swift
//  EFOS Volunteer
//
//  Created by Kennan Mell on 9/18/16.
//
//

import UIKit
import FBSDKLoginKit

class LoginView: UIView {
    let loginButton = FBSDKLoginButton()
    let textLabel = UILabel()
    
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
        textLabel.text = NSLocalizedString("Please log in with Facebook to confirm your identity.", comment: "Facebook login prompt")
        textLabel.numberOfLines = 0
        textLabel.textAlignment = .center
        
        self.addSubview(loginButton)
        self.addSubview(textLabel)
    }
    
    override func layoutSubviews() {
        let textLabelXMargin = self.frame.width * 0.05
        let textLabelYTopMargin = self.frame.height * 0.25
        let textLabelHeight = self.frame.height * 0.3
        
        let loginButtonTopMargin = self.frame.height * 0.025
        
        textLabel.frame = CGRect(x: textLabelXMargin, y: textLabelYTopMargin, width: self.frame.width - textLabelXMargin * 2, height: textLabelHeight)
        loginButton.center = self.center
        loginButton.frame = CGRect(x: loginButton.frame.origin.x, y: textLabel.frame.origin.y + textLabel.frame.height + loginButtonTopMargin, width: loginButton.frame.width, height: loginButton.frame.height)
    }
}
