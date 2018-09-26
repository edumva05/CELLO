//
//  NetworkErrorViewController.swift
//  EDUMVA
//
//  Created by EDUMVA4 on 22/09/18.
//

import UIKit

class NetworkErrorViewController: UIViewController {
   let reachability = Reachability()!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reachability.whenReachable = { _ in
            DispatchQueue.main.async {
                
                let resultVc = self.storyboard?.instantiateViewController(withIdentifier: "WelcomeHere")
                self.present(resultVc!, animated: true, completion: nil)
            }
        }
        reachability.whenUnreachable = { _ in
            DispatchQueue.main.async {
               
                
                
            }
        }
        NotificationCenter.default.addObserver(self, selector: #selector(internetChanged), name: Notification.Name.reachabilityChanged, object: reachability)
        do{
            try reachability.startNotifier()
        }catch{
            //nslog("Failed")
        }
        // Do any additional setup after loading the view.
    }

    @objc func internetChanged(note: Notification){
        let reachability = note.object as! Reachability
        if reachability.isReachable {
            if reachability.isReachableViaWiFi{
                DispatchQueue.main.async {
                    let resultVc = self.storyboard?.instantiateViewController(withIdentifier: "WelcomeHere")
                    self.present(resultVc!, animated: true, completion: nil)

                }
            }else{
                DispatchQueue.main.async {
                    
                    let resultVc = self.storyboard?.instantiateViewController(withIdentifier: "WelcomeHere")
                    self.present(resultVc!, animated: true, completion: nil)
                }
            }
            
            
        }else{
            DispatchQueue.main.async {
                
    
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
