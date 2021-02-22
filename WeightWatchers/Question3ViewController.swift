//
//  Question3ViewController.swift
//  WW
//
//  Created by Sunil Chowdary on 2/21/21.
//

import UIKit

class Question3ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var nthValueTextField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    var randomNumberArray = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nthValueTextField.delegate = self                  //set delegate to textfile
    }
    
    
    @IBAction func generateNthSmallestNumber(_ sender: UIButton) {
        //Generate 500 Random Numbers and add them in an array
        generateRandomNumber()
        
        let nthValue = Int(nthValueTextField.text!)
        //Check if nth int value enetered or not
        if (nthValue == nil) {
            showAlert(alertMessage: "Enter an int value")
        }
        else{
            let value = findSmallestNth(randomNumberArray, nthValue!)
            outputLabel.text = String(value)
            print("nth Smallest number is : \(value)")
        }
        nthValueTextField.resignFirstResponder()
    }
    
    //Method to generate 500 Random Numbers
    func generateRandomNumber(){
        for _ in 1...500 {
            let randomInt = Int.random(in: 1..<1000)
            if !randomNumberArray.contains(randomInt) {
                randomNumberArray.append(randomInt)
            }
        }
        print("500 Random Numbers are : \(randomNumberArray)")
    }
    
    //Method to find nth smallest number 500
    func findSmallestNth(_ array: [Int], _ n: Int) -> Int {
        guard let pivot = array.first else {
            return 0
        }
        let arraySmallerThanPivot = array.dropFirst().filter {$0 < pivot}
        let arrayLargerThanPivot = array.dropFirst().filter { $0 > pivot }
        let newArray = arraySmallerThanPivot + [Int(pivot)] + arrayLargerThanPivot
        let positionOfPivot = array.count > 1 ? arraySmallerThanPivot.count : 0
        if n-1 == positionOfPivot {
            print(newArray)
            return newArray[positionOfPivot]
        } else if n-1 > positionOfPivot {
            return findSmallestNth(arrayLargerThanPivot, n-1-positionOfPivot)
        } else {
            return findSmallestNth(arraySmallerThanPivot, n)
        }
    }
    
    @IBAction func backButtonClick(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func showAlert(alertMessage:String){
        // create the alert
        let alert = UIAlertController(title: "Weight Watchers", message: "Enter an Int value", preferredStyle: UIAlertController.Style.alert)
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {    //delegate method
        
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {  //delegate method
        return false
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {   //delegate method
        textField.resignFirstResponder()
        return true
    }
    
}
