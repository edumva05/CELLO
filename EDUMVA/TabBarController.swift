//
//  TabBarController.swift
//  EDUMVA
//
//  Created by EDUMVA5 on 05/09/18.
//

import UIKit
class TabBarController: UIViewController, UIGestureRecognizerDelegate  {
    @IBOutlet weak var tabView: UIView!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var sidebarBtn: UIButton!
    @IBOutlet weak var sideBar: UIView!
    
    
    @IBOutlet weak var effectBack: UIButton!
    @IBOutlet weak var blurEffect: UIVisualEffectView!
    
    let reachability = Reachability()!
    var viewControllers: [UIViewController]!
    
    var FeedsViewController: UIViewController!
    var ExamViewController: UIViewController!
    var HomeViewController: UIViewController!
    var FtpViewController: UIViewController!
    var ProflieViewController: UIViewController!
    
    var selectedIndex: Int = 0
    
    @IBOutlet var buttons: [UIButton]!
    
    @IBOutlet weak var viewDisplay: UIView!
    
    @IBOutlet weak var BlueMovingView: UIImageView!
    
    var sideBarOriginX : CGFloat = 0.0
    var sideBarOriginY : CGFloat = 0.0
    
    
    @IBAction func exit(_ sender: Any) {
        _Exit(0)
    }

    @IBOutlet weak var logOut: UIButton!
    @IBAction func logOutAct(_ sender: Any)
    {
        DispatchQueue.main.async{
            if UserDefaults.standard.bool(forKey: "ISUSERLOGGEDIN") == true {
                UserDefaults.standard.set(false, forKey: "ISUSERLOGGEDIN")
                
                let homeVc = self.storyboard?.instantiateViewController(withIdentifier: "WelcomeHere")
                self.present(homeVc!, animated: true, completion: nil)
            }
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideBarOriginX = self.sideBar.frame.origin.x
        sideBarOriginY = self.sideBar.frame.origin.y
        blurEffect.alpha = 0
        effectBack.alpha = 0
        reachability.whenReachable = { _ in
            
            DispatchQueue.main.async {
                self.btn2.alpha = 1
                self.btn4.alpha = 1
                
                if UserDefaults.standard.bool(forKey: "ISUSERLOGGEDIN") == false {
                    self.btn1.center.x = self.tabView.center.x * 0.38
                    self.btn5.center.x = self.tabView.center.x * 1.62
                    self.btn2.alpha = 0
                    self.btn4.alpha = 0
                    self.logOut.alpha = 0;
                }
            }
        }
        reachability.whenUnreachable = { _ in
            DispatchQueue.main.async {
                
                let resultVc = self.storyboard?.instantiateViewController(withIdentifier: "Network")
                self.present(resultVc!, animated: true, completion: nil)
                
            }
        }
        NotificationCenter.default.addObserver(self, selector: #selector(internetChanged), name: Notification.Name.reachabilityChanged, object: reachability)
        do{
            try reachability.startNotifier()
        }catch{
            //nslog("Failed")
        }
        
        
        
        
        
        BlueMovingView.bounds.size.width = (tabView.bounds.size.width * (98/1366))
        BlueMovingView.bounds.size.height = (tabView.bounds.size.height * (8/79))
        
        
        
        
            BlueMovingView.center.x = tabView.center.x
         BlueMovingView.center.y = tabView.center.y
         
        
        tabView.layer.applySketchShadow(
            color: .black,
            alpha: 0.7,
            x: 0,
            y: 0,
            blur: 16,
            spread: 0)
        
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = UIColor.clear
        //Initalize storyboards
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        FeedsViewController = storyboard.instantiateViewController(withIdentifier: "FeedsViewController")
        ExamViewController = storyboard.instantiateViewController(withIdentifier: "ExamViewController")
        HomeViewController = storyboard.instantiateViewController(withIdentifier: "HomeViewController")
        FtpViewController = storyboard.instantiateViewController(withIdentifier: "FtpViewController")
        if UserDefaults.standard.bool(forKey: "ISUSERLOGGEDIN") == true {
             ProflieViewController = storyboard.instantiateViewController(withIdentifier: "ProflieViewController")
        }else{
            ProflieViewController = storyboard.instantiateViewController(withIdentifier: "LogIn")
        }
       
        
        //Add stroyboards to array
        viewControllers = [ FeedsViewController, ExamViewController,HomeViewController, FtpViewController, ProflieViewController]
        
        //Initallly select a ViewController
        
        didPressTab(buttons[selectedIndex])
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sideBar(_ sender: UIButton)
    {
        self.sidebarBtn.alpha = 0
        UIView.animate(withDuration: 0.3)
        {
            self.sideBar.center.x = self.view.center.x * 0.312
           
           self.blurEffect.alpha = 0.925
            
            
            self.effectBack.alpha = 1
            
            
            
            
        }
        
        
        self.viewDisplay.center = CGPoint(x: self.view.bounds.midX,
                                          y: self.view.bounds.midY);
        self.viewDisplay.frame.size.width = self.viewDisplay.bounds.size.width * 0.9
        self.viewDisplay.center = CGPoint(x: self.view.bounds.midX,
                                          y: self.view.bounds.midY);
        self.viewDisplay.frame.size.height = self.viewDisplay.bounds.size.height * 0.9
        self.viewDisplay.center = CGPoint(x: self.view.bounds.midX,
                                          y: self.view.bounds.midY);
        
        
        
    }
     @IBAction func backEffect(_ sender: UIButton)
    {
        UIView.animate(withDuration: 0.3)
        {
            self.sidebarBtn.alpha = 1
           self.blurEffect.alpha = 0
            
            self.effectBack.alpha = 0
            self.sideBar.frame.origin.x = self.sideBarOriginX
            self.sideBar.frame.origin.y = self.sideBarOriginY
            
            
        }
        self.viewDisplay.center = CGPoint(x: self.view.bounds.midX,
                                          y: self.view.bounds.midY);
        self.viewDisplay.frame.size.width = self.view.bounds.size.width
        self.viewDisplay.center = CGPoint(x: self.view.bounds.midX,
                                          y: self.view.bounds.midY);
        self.viewDisplay.frame.size.height = self.view.bounds.size.height
        self.viewDisplay.center = CGPoint(x: self.view.bounds.midX,
                                          y: self.view.bounds.midY);
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        /* if CheckInternet.Connection(){
         DispatchQueue.main.async{
         
         //self.Alert(Message: "Connected")
         
         }
         }
         
         else{
         DispatchQueue.main.async{
         let homeVc = self.storyboard?.instantiateViewController(withIdentifier: "Network")
         self.present(homeVc!, animated: true, completion: nil)
         // self.Alert(Message: "Your Device is not connected with internet")
         }
         
         }
         */
        
        
        if UserDefaults.standard.bool(forKey: "ISUSERLOGGEDIN") == true {
            
            self.btn2.alpha = 1
            self.btn4.alpha = 1
            
        }else{
            self.btn1.center.x = self.tabView.center.x * 0.38
            self.btn5.center.x = self.tabView.center.x * 1.62
            self.btn2.alpha = 0
            self.btn4.alpha = 0
            
            
        }
        
        
    }
    func Alert (Message: String){
        
        let alert = UIAlertController(title: "Alert", message: Message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
    
    
    @IBAction func didPressTab(_ sender: UIButton) {
        
        
        
        
        
        let previousIndex = selectedIndex
        
        //nslog(selectedIndex)
        selectedIndex = sender.tag
        //nslog(selectedIndex)
        if(selectedIndex == 3 || selectedIndex == 1 )
        {
            sidebarBtn.alpha = 0
        }
        else
        {
            sidebarBtn.alpha = 1
        }
        
        buttons[previousIndex].isSelected = false
        
        
        let previousVC = viewControllers[previousIndex]
        
        
        previousVC.willMove(toParentViewController: nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        
        sender.isSelected = true
        
        
        let vc = viewControllers[selectedIndex]
        
        addChildViewController(vc)
        
        
        vc.view.frame = viewDisplay.bounds
        viewDisplay.addSubview(vc.view)
        
        vc.didMove(toParentViewController: self)
        
    }
    
    
    @objc func internetChanged(note: Notification){
        let reachability = note.object as! Reachability
        if reachability.isReachable {
            if reachability.isReachableViaWiFi{
                DispatchQueue.main.async {
                    
                }
            }else{
                DispatchQueue.main.async {
                    
                    let resultVc = self.storyboard?.instantiateViewController(withIdentifier: "Network")
                    self.present(resultVc!, animated: true, completion: nil)
                    
                }
            }
            
            
        }else{
            DispatchQueue.main.async {
                
                let resultVc = self.storyboard?.instantiateViewController(withIdentifier: "Network")
                self.present(resultVc!, animated: true, completion: nil)
                
            }
        }
    }
    
    @IBAction func MovingBlueImageView(_ sender: UIButton)
    {
        btn1.setImage(#imageLiteral(resourceName: "FeedsGrey.png"), for: .normal)
        btn2.setImage(#imageLiteral(resourceName: "ResultGrey.png"), for: .normal)
        btn3.setImage(#imageLiteral(resourceName: "HomeGrey.png"), for: .normal)
        btn4.setImage(#imageLiteral(resourceName: "FTPGrey.png"), for: .normal)
        btn5.setImage(#imageLiteral(resourceName: "ProfileGrey.png"), for: .normal)
        btn1.setImage(#imageLiteral(resourceName: "FeedsGrey.png"), for: .selected)
        btn2.setImage(#imageLiteral(resourceName: "ResultGrey.png"), for: .selected)
        btn3.setImage(#imageLiteral(resourceName: "HomeGrey.png"), for: .selected)
        btn4.setImage(#imageLiteral(resourceName: "FTPGrey.png"), for: .selected)
        btn5.setImage(#imageLiteral(resourceName: "ProfileGrey.png"), for: .selected)
        
        if(sender.tag == 0)
        {
            btn1.setImage(#imageLiteral(resourceName: "FeedsBlue.png"), for: .selected)
        }
        if(sender.tag == 1)
        {
            btn2.setImage(#imageLiteral(resourceName: "ResultBlue.png"), for: .selected)
        }
        if(sender.tag == 2)
        {
            btn3.setImage(#imageLiteral(resourceName: "HomeBlue.png"), for: .selected)
        }
        if(sender.tag == 3)
        {
            btn4.setImage(#imageLiteral(resourceName: "FTPBlue.png"), for: .selected)
        }
        if(sender.tag == 4)
        {
            
            btn5.setImage(#imageLiteral(resourceName: "ProfileBlue"), for: .selected)
           
        }
        
        UIView.animate(withDuration: 0.30, delay: 0, options: [UIViewAnimationOptions.curveEaseInOut], animations: {
            
            () -> Void in
            
            self.BlueMovingView.center.x = sender.center.x
        }, completion: { (finished) -> Void in
            
        })
        
        
    }
    
    
    
    
    
    
    
    
}

extension CALayer {
    func applySketchShadow(
        color: UIColor = .black,
        alpha: Float = 0.5,
        x: CGFloat = 0,
        y: CGFloat = 2,
        blur: CGFloat = 4,
        spread: CGFloat = 0)
    {
        shadowColor = color.cgColor
        shadowOpacity = alpha
        shadowOffset = CGSize(width: x, height: y)
        shadowRadius = blur / 2.0
        if spread == 0 {
            shadowPath = nil
        } else {
            let dx = -spread
            let rect = bounds.insetBy(dx: dx, dy: dx)
            shadowPath = UIBezierPath(rect: rect).cgPath
        }
    }
}
