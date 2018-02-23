//
//  ViewController.swift
//  sampleAutoLayoutLibrary
//
//  Created by yuka on 2018/02/08.
//  Copyright © 2018年 yuka. All rights reserved.
//

import UIKit
import PureLayout

//import FBSDKAccessToken
import  FBSDKCoreKit
import  FBSDKLoginKit

import Firebase


class ViewController: UIViewController
, FBSDKLoginButtonDelegate {

    

    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var Stepper: UIStepper!
    @IBOutlet weak var PickerView: UIPickerView!
    @IBOutlet weak var ProgressView: UIProgressView!
    
    @IBOutlet weak var hosi1: UILabel!
    @IBOutlet weak var hosi2: UILabel!
    @IBOutlet weak var hosi3: UILabel!
    @IBOutlet weak var hosi4: UILabel!
    @IBOutlet weak var hosi5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Facebook
        let loginButton:FBSDKLoginButton = FBSDKLoginButton()
        // Optional: Place the button in the center of your view.
        loginButton.center = self.view.center
        self.view.addSubview(loginButton)
        loginButton.readPermissions = ["email","public_profile"]
        loginButton.delegate = self
        
        if (FBSDKAccessToken.current() != nil) {
            // User is logged in, do work such as go to next view controller.
            print("yaa")
        }

        // Extend the code sample from 6a. Add Facebook Login to Your Code
        // Add to your viewDidLoad method:
 
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        Label.autoPinEdge(.top, to: .bottom, of: Stepper)
        Stepper.autoPinEdge(.top, to: .bottom, of: PickerView)
        PickerView.autoPinEdge(toSuperviewEdge: .top)
        ProgressView.autoCenterInSuperview()
        Stepper.autoSetDimensions(to: CGSize(width: 100, height: 50))
        ProgressView.autoSetDimensions(to: CGSize(width: 500, height: 30))
        hosi1.autoPinEdge(.right, to: .left, of: hosi2)
        hosi2.autoPinEdge(.right, to: .left, of: hosi3)
    }

    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        print(#function)
        if let error = error {
            print(error.localizedDescription)
            return
        }
        let credential = FacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
        print("credential:\(credential)")
        Auth.auth().signIn(with: credential) { (user, error) in
            if let error = error {
                // ...
                return
            }
            // User is signed in
            // ...
            print("signed in")
            let firebaseAuth = Auth.auth()
            do {
                try firebaseAuth.signOut()
            } catch let signOutError as NSError {
                print ("Error signing out: %@", signOutError)
            }
        }

    }
    
    
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print(#function)

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}




