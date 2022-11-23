//
//  ViewController.swift
//  socialLoginTest
//
//  Created by 077tech on 2022/11/23.
//

import UIKit
import GoogleSignIn


class ViewController: UIViewController {

    @IBAction func googleLogin(_ sender: Any) {
        GIDSignIn.sharedInstance()?.signIn()
    }
    @IBAction func googleLogout(_ sender: Any) {
        GIDSignIn.sharedInstance()?.signOut()
    }
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var name: UILabel!
    
    @IBAction func getInfomation(_ sender: Any) {
        let user = AppDelegate.user
        
        self.id.text = user?.userID
        self.email.text = user?.profile.email
        self.name.text = user?.profile.name
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance()?.presentingViewController = self
        GIDSignIn.sharedInstance()?.restorePreviousSignIn()
        
    }


    
}


