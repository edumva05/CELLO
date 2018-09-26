//
//  AboutDevelopersViewController.swift
//  EDUMVA
//
//  Created by EDUMVA4 on 23/09/18.
//

import UIKit

class AboutDevelopersViewController: UIViewController {

    @IBOutlet weak var ADO1: UIButton!
    @IBOutlet weak var ADO2: UIButton!
    @IBOutlet weak var ADO3: UIButton!
    @IBOutlet weak var ADO4: UIButton!
    @IBOutlet weak var ADO5: UIButton!
    @IBOutlet weak var ADO6: UIButton!
    
    @IBOutlet weak var SAD: UIImageView!
    @IBOutlet weak var TAD: UITextView!
    
    
    @IBOutlet weak var ADBUL: UIVisualEffectView!
    
    var originSAD = CGPoint()
    var originTAD = CGPoint()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        originSAD = SAD.frame.origin
        originTAD = TAD.frame.origin
        
        self.TAD.layer.cornerRadius = 7
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func AD1(_ sender: Any) {
        
        SAD.frame.origin.y -= CGFloat(originSAD.y - SAD.frame.width/2)
        TAD.frame.origin.y -= CGFloat(originTAD.y - TAD.frame.width/2)
        
        
        UIView.animate(withDuration: 1.0) {
            
            self.SAD.frame.origin = self.originSAD
            self.TAD.frame.origin = self.originTAD
            self.ADBUL.alpha = 1
            self.SAD.alpha = 1
            self.TAD.alpha = 1
            
            
        }
        
        
    }
    
    @IBAction func AD2(_ sender: Any) {
        
        SAD.frame.origin.y -= CGFloat(originSAD.y - SAD.frame.width/2)
        TAD.frame.origin.y -= CGFloat(originTAD.y - TAD.frame.width/2)
        
        
        UIView.animate(withDuration: 1.0) {
            
            self.SAD.frame.origin = self.originSAD
            self.TAD.frame.origin = self.originTAD
            self.ADBUL.alpha = 1
            self.SAD.alpha = 1
            self.TAD.alpha = 1
            
            
        }
        
    }
    
    @IBAction func AD3(_ sender: Any) {
        
        SAD.frame.origin.y -= CGFloat(originSAD.y - SAD.frame.width/2)
        TAD.frame.origin.y -= CGFloat(originTAD.y - TAD.frame.width/2)
        
        
        UIView.animate(withDuration: 1.0) {
            
            self.SAD.frame.origin = self.originSAD
            self.TAD.frame.origin = self.originTAD
            self.ADBUL.alpha = 1
            self.SAD.alpha = 1
            self.TAD.alpha = 1
            
            
        }
        
    }
    
    @IBAction func AD4(_ sender: Any) {
        
        
        SAD.frame.origin.y -= CGFloat(originSAD.y - SAD.frame.width/2)
        TAD.frame.origin.y -= CGFloat(originTAD.y - TAD.frame.width/2)
        
        
        UIView.animate(withDuration: 1.0) {
            
            self.SAD.frame.origin = self.originSAD
            self.TAD.frame.origin = self.originTAD
            self.ADBUL.alpha = 1
            self.SAD.alpha = 1
            self.TAD.alpha = 1
            
            
        }
        
        
    }
    
    @IBAction func AD5(_ sender: Any) {
        
        SAD.frame.origin.y -= CGFloat(originSAD.y - SAD.frame.width/2)
        TAD.frame.origin.y -= CGFloat(originTAD.y - TAD.frame.width/2)
        
        
        UIView.animate(withDuration: 1.0) {
            
            self.SAD.frame.origin = self.originSAD
            self.TAD.frame.origin = self.originTAD
            self.ADBUL.alpha = 1
            self.SAD.alpha = 1
            self.TAD.alpha = 1
            
            
        }
        
    }
    @IBAction func AD6(_ sender: Any) {
        
        SAD.frame.origin.y -= CGFloat(originSAD.y - SAD.frame.width/2)
        TAD.frame.origin.y -= CGFloat(originTAD.y - TAD.frame.width/2)
        
        
        UIView.animate(withDuration: 1.0) {
            
            self.SAD.frame.origin = self.originSAD
            self.TAD.frame.origin = self.originTAD
            self.ADBUL.alpha = 1
            self.SAD.alpha = 1
            self.TAD.alpha = 1
            
            
        }
        
    }
    
    
    @IBOutlet weak var exitAD: UIButton!
    
    
    @IBAction func exitADB(_ sender: Any) {
        self.SAD.frame.origin = self.originSAD
        self.TAD.frame.origin = self.originTAD
        
        
        UIView.animate(withDuration: 1.0) {
            self.SAD.frame.origin.y -= CGFloat(self.originSAD.y - self.SAD.frame.width/2)
            self.TAD.frame.origin.y -= CGFloat(self.originTAD.y - self.TAD.frame.width/2)
            
            self.ADBUL.alpha = 0
            self.SAD.alpha = 0
            self.TAD.alpha = 0
            
            
            
        }
        
        
        
    }
}
