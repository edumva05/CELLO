//
//  AboutViewController.swift
//  EDUMVA
//
//  Created by EDUMVA4 on 23/09/18.
//

import UIKit

class AboutViewController: UIViewController {
    @IBOutlet weak var Sau1: UIImageView!
    @IBOutlet weak var Tau1: UITextView!
    @IBOutlet weak var aublu: UIVisualEffectView!
    
    @IBOutlet weak var auu1: UIButton!
    @IBOutlet weak var auu2: UIButton!
    @IBOutlet weak var auu3: UIButton!
    @IBOutlet weak var auu4: UIButton!
    @IBOutlet weak var auu5: UIButton!
    
    var originSau1 = CGPoint()
    var originTau1 = CGPoint()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        originSau1 = Sau1.frame.origin
        originTau1 = Tau1.frame.origin
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func au1(_ sender: Any) {
        
        Sau1.frame.origin.y -= CGFloat(originSau1.y - Sau1.frame.width/2)
        Tau1.frame.origin.y -= CGFloat(originTau1.y - Tau1.frame.width/2)
        
        UIView.animate(withDuration: 1.0) {
            
            self.Sau1.frame.origin = self.originSau1
            self.Tau1.frame.origin = self.originTau1
            self.aublu.alpha = 1
            self.Sau1.alpha = 1
            self.Tau1.alpha = 1
            
            
        }
        
        
        self.auu1.isEnabled = false
        self.auu2.isEnabled = true
        self.auu3.isEnabled = true
        self.auu4.isEnabled = true
        self.auu5.isEnabled = true
        
        
        
    }
    
    
    @IBAction func au2(_ sender: Any) {
        
        Sau1.frame.origin.y -= CGFloat(originSau1.y - Sau1.frame.width/2)
        Tau1.frame.origin.y -= CGFloat(originTau1.y - Tau1.frame.width/2)
        
        UIView.animate(withDuration: 1.0) {
            
            self.Sau1.frame.origin = self.originSau1
            self.Tau1.frame.origin = self.originTau1
            self.aublu.alpha = 1
            self.Sau1.alpha = 1
            self.Tau1.alpha = 1
        }
        
        self.auu1.isEnabled = true
        self.auu2.isEnabled = false
        self.auu3.isEnabled = true
        self.auu4.isEnabled = true
        self.auu5.isEnabled = true
        
    }
    @IBAction func au3(_ sender: Any) {
        
        
        Sau1.frame.origin.y -= CGFloat(originSau1.y - Sau1.frame.width/2)
        Tau1.frame.origin.y -= CGFloat(originTau1.y - Tau1.frame.width/2)
        
        UIView.animate(withDuration: 1.0) {
            
            self.Sau1.frame.origin = self.originSau1
            self.Tau1.frame.origin = self.originTau1
            self.aublu.alpha = 1
            self.Sau1.alpha = 1
            self.Tau1.alpha = 1
        }
        
        self.auu1.isEnabled = true
        self.auu2.isEnabled = true
        self.auu3.isEnabled = false
        self.auu4.isEnabled = true
        self.auu5.isEnabled = true
        
    }
    
    @IBAction func au4(_ sender: Any) {
        Sau1.frame.origin.y -= CGFloat(originSau1.y - Sau1.frame.width/2)
        Tau1.frame.origin.y -= CGFloat(originTau1.y - Tau1.frame.width/2)
        
        UIView.animate(withDuration: 1.0) {
            
            self.Sau1.frame.origin = self.originSau1
            self.Tau1.frame.origin = self.originTau1
            self.aublu.alpha = 1
            self.Sau1.alpha = 1
            self.Tau1.alpha = 1
        }
        
        self.auu1.isEnabled = true
        self.auu2.isEnabled = true
        self.auu3.isEnabled = true
        self.auu4.isEnabled = false
        self.auu5.isEnabled = true
    }
    
    @IBAction func au5(_ sender: Any) {
        
        Sau1.frame.origin.y -= CGFloat(originSau1.y - Sau1.frame.width/2)
        Tau1.frame.origin.y -= CGFloat(originTau1.y - Tau1.frame.width/2)
        
        UIView.animate(withDuration: 1.0) {
            
            self.Sau1.frame.origin = self.originSau1
            self.Tau1.frame.origin = self.originTau1
            self.aublu.alpha = 1
            self.Sau1.alpha = 1
            self.Tau1.alpha = 1
        }
        self.auu1.isEnabled = true
        self.auu2.isEnabled = true
        self.auu3.isEnabled = true
        self.auu4.isEnabled = true
        self.auu5.isEnabled = false
    }
    
    
    
    @IBAction func exitSV(_ sender: Any) {
        
        self.Sau1.frame.origin = self.originSau1
        self.Tau1.frame.origin = self.originTau1
        
        UIView.animate(withDuration: 1.0) {
            self.Sau1.frame.origin.y -= CGFloat(self.originSau1.y - self.Sau1.frame.width/2)
            self.Tau1.frame.origin.y -= CGFloat(self.originTau1.y - self.Tau1.frame.width/2)
            
            self.aublu.alpha = 0
            self.Sau1.alpha = 0
            self.Tau1.alpha = 0
            
            self.auu1.isEnabled = true
            self.auu2.isEnabled = true
            self.auu3.isEnabled = true
            self.auu4.isEnabled = true
            self.auu5.isEnabled = true
            
            
            
        }
        
        
        
    }

}
