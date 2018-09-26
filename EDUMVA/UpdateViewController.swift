//
//  UpdateViewController.swift
//  EDUMVA
//
//  Created by EDUMVA4 on 23/09/18.
//

import UIKit

class UpdateViewController: UIViewController {

   
    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    var originPopUp = CGPoint()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        originPopUp = popUpView.frame.origin
        
        popUpView.frame.origin.y -= 2 * popUpView.frame.size.width
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonActionb(_ sender: Any) {
        
        
        UIView.animate(withDuration: 1.0) {
            self.popUpView.frame.origin.y = self.originPopUp.y
        }
        
        
        
    }
    
    @IBAction func buttonBack(_ sender: Any) {
        
        UIView.animate(withDuration: 1.0) {
            self.popUpView.frame.origin.y += 2 * self.popUpView.frame.size.width
            
        }
        
        
    }
}
