//
//  Question2ViewController.swift
//  WW
//
//  Created by Sunil Chowdary on 2/21/21.
//

import UIKit

class Question1ViewController: UIViewController {
    let path = Bundle.main.path(forResource: "MyList", ofType: "plist")
    var word1 = [String]()
    var word2 = [String]()
    var word3 = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
    }
    
    //Method to check whether the plist file exists or not
    @IBAction func fileExists(_ sender: UIButton) {
       let filePath = path ?? ""
        if filePath.count>0{
            showAlert(alertMessage: "File Exists")
            print("File Exists")
        }else{
            showAlert(alertMessage: "File Doesn't Exists")
            print("File Doesn't Exists")
        }
    }
    
    //Method to print the O/P from plist file
    @IBAction func printOutput(_ sender: UIButton) {
        if let dataExists = path {
            let dict = NSDictionary(contentsOfFile: dataExists)
            for (key,value) in dict!{
                print("\(key)")
                print("\(value)")
            }
        }
    }
    
    @IBAction func backButtonClick(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

    func showAlert(alertMessage:String){
        // create the alert
        let alert = UIAlertController(title: "Weight Watchers", message: alertMessage, preferredStyle: UIAlertController.Style.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
}
