//
//  SignInViewController.swift
//  SocialVUE
//
//  Created by Parth Adroja on 3/24/16.
//  Copyright © 2016 Parth Adroja. All rights reserved.
//

import UIKit
import EZSwiftExtensions
import IBAnimatable

class SignInViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var IBlogoTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var IBbtnSignIn: AnimatableButton!
    @IBOutlet weak var IBtxtPassword: UITextField!
    @IBOutlet weak var IBtxtEmail: UITextField!
    
    var topConstraintConstant:CGFloat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        setupDesigns()
    }
    
    func setupDesigns() {
        topConstraintConstant = IBlogoTopConstraint.constant
        IBbtnSignIn.layer.cornerRadius = IBbtnSignIn.bounds.height/2
        IBbtnSignIn.layer.shadowRadius = 25.0
        IBbtnSignIn.layer.shadowColor = UIColor(r: 18/255, g: 151/255, b: 147/255, a: 1.0).CGColor
        IBbtnSignIn.layer.shadowOffset = CGSizeMake(0, 15)
        IBbtnSignIn.layer.shadowOpacity = 0.4
        IBbtnSignIn.layer.masksToBounds = false
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if IBtxtEmail.isFirstResponder() || IBtxtPassword.isFirstResponder() {
            self.view.endEditing(true)
            self.IBlogoTopConstraint.constant = topConstraintConstant!
            UIView.animateWithDuration(0.3) { () -> Void in
                self.view.layoutIfNeeded()
            }
        }
    }
    
    // MARK: - Text FieldDelegates
    
    func textFieldDidBeginEditing(textField: UITextField) {
        self.IBlogoTopConstraint.constant = -20
        UIView.animateWithDuration(0.3) { () -> Void in
            self.view.layoutIfNeeded()
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if IBtxtEmail.isFirstResponder() == true {
            IBtxtPassword.becomeFirstResponder()
        }
        else {
            self.IBlogoTopConstraint.constant = topConstraintConstant!
            self.view.endEditing(true)
            UIView.animateWithDuration(0.3) { () -> Void in
                self.view.layoutIfNeeded()
            }
        }
        return true
    }

    @IBAction func IBbtnSignInTap(sender: AnyObject) {
        if IBtxtEmail.text?.characters.isEmpty == true || IBtxtPassword.text?.characters.isEmpty == true {
            IBbtnSignIn.animationType = "Shake"
            IBbtnSignIn.duration = 0.4
            IBbtnSignIn.animate()
        }
    }
}
