//
//  SignInViewController.swift
//  SocialVUE
//
//  Created by Parth Adroja on 3/24/16.
//  Copyright © 2016 Parth Adroja. All rights reserved.
//

import UIKit
import EZSwiftExtensions

class SignInViewController: UIViewController {

    @IBOutlet weak var IBbtnSignIn: UIButton!
    @IBOutlet weak var IBtxtPassword: UITextField!
    @IBOutlet weak var IBtxtEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        setupDesigns()
    }
    
    func setupDesigns() {
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
