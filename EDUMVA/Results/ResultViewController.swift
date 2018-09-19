//
//  ResultViewController.swift
//  EDUMVA
//
//  Created by EDUMVA4 on 18/09/18.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var percent: UILabel!
    @IBOutlet weak var CircularProgress: CircularProgressView!
    
    @IBOutlet weak var number: UITextField!
    
    
    
    var tag1 = Float()
    var intial = Float()
    
    
    
    
    var a = Float()
    var b = Float()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        number.text = "98"
        var n = Float(number.text!)
        
        n = n!+0
        
        print("n = ",n)
        
        b = Float(n!)/100
        
        print(b)
        
        var numTag = Float(number.text!)!
        
        tag1  = Float(numTag)
        
        intial = 0.0
        
        CircularProgress.trackColor = UIColor.white
        CircularProgress.progressColor = UIColor(red:0.51, green:0.78, blue:0.56, alpha:1.0)
        CircularProgress.setProgressWithAnimation(duration: 1.0, value: b)
        
        
        
        let timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(self.update), userInfo: nil, repeats: true)
        
        
        
    }
    @objc func update()
    {
        if(intial < tag1){
            intial = intial + 1
            self.percent.text = String(intial)
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var va: UIButton!
    
    @IBAction func vaa(_ sender: Any) {
        
        
       
        
        
        
    }

}
