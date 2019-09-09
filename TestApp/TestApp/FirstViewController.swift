//
//  FirstViewController.swift
//  TestApp
//
//  Created by Rodolfo Alamer on 09/09/2019.
//  Copyright © 2019 Aj Jebulan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

        print("here")
        goHere()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClick(_ sender: UIButton){
        let firstValue = Double(textField1.text!)
        let secondValue = Double(textField2.text!)
        
        let outputValue = Double(firstValue! + secondValue!)
        textField3.text = "\(outputValue)"
        
        
    }
    
    @IBAction func onGOButton(_ sender: Any){
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "test") as! SecondViewController
        self.present(newViewController, animated: true, completion: nil)
    }
    
    func goHere() {
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
