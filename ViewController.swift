//
//  ViewController.swift
//  myFirstApp
//
//  Created by Wedad Alqithmi on 21/08/1444 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    /*
     ViewController is sub class from UIViewController
     each class will have special ViewController
    
    */
    
    /*
      identify the front ui element
     as a var
     or an action
     */
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnResetPassword: UIButton!
    @IBAction func btnLogin(_ sender: Any) {
        lblTitle.text = "تم تسجيل الدخول  " 
    }
    @IBAction func btnSignUp(_ sender: Any) {
    }
    
    
    /*
    viewDidLoad function is the main function where all the execution done here
    view controller life cycle by 5 functions
    viewDidLoad << viewWillAppear << viewDidAppear << viewWillDisappear << viewDidDisappear
    */
    
    // to improve the usability of keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == txtUserName{
            // if user was on user name field and prssed on next then go to next textfield
            txtPassword.becomeFirstResponder()
        }else {
            // if user click go after filling the password field then run sign in function
            lblTitle.text = "تم تسجيل الدخول  "
            view.endEditing(true)
        }
        
        return true
    }
    
    // to close the keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad")
        txtPassword.delegate = self
        txtUserName.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // this will be shown for the user 
        print("viewDidAppear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
}

