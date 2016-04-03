//
//  SplashScreenViewController.swift
//  SocialVUE
//
//  Created by Parth Adroja on 4/3/16.
//  Copyright © 2016 Parth Adroja. All rights reserved.
//

import UIKit
import EZSwiftExtensions

class SplashScreenViewController: UIViewController {

    @IBOutlet var IBviewSplashScreen: SplashScreenView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        IBviewSplashScreen.addSplashAnimationAnimationCompletionBlock { (finished) -> Void in
                let signInViewController = self.storyboard?.instantiateViewControllerWithIdentifier("SignInController")
                self.dismissViewControllerAnimated(true, completion: nil)
                ez.runThisAfterDelay(seconds: 0.5, after: { () -> () in
                    self.presentViewController(signInViewController!, animated: true, completion: nil)
                })
        }
        
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
