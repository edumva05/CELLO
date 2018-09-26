
import UIKit

class SocialNetworkViewController: UIViewController {
    
    
    @IBOutlet weak var webView: UIWebView!
    
    
    @IBOutlet weak var socialCircle: UIImageView!
    @IBOutlet weak var twitterCircle: UIButton!
    @IBOutlet weak var facebookCircle: UIButton!
    @IBOutlet weak var pinterestCircle: UIButton!
    @IBOutlet weak var LinkedInCircle: UIButton!
    @IBOutlet weak var locateUsCircle: UIButton!
    @IBOutlet weak var gitHubCircle: UIButton!
    
    @IBOutlet weak var topImageView: UIImageView!
    @IBOutlet weak var backButton: UIButton!
    
    var originSocialCircle = CGPoint()
    var originGitHubCircle = CGPoint()
    var originLocateUsCircle = CGPoint()
    var originLinkedInCircle = CGPoint()
    var originPinterestCircle = CGPoint()
    var originFacebookCircle = CGPoint()
    var originTwitterCircle = CGPoint()
    
    @IBOutlet weak var bv1: UIImageView!
    @IBOutlet weak var bv2: UIImageView!
    @IBOutlet weak var bv3: UIImageView!
    @IBOutlet weak var bv4: UIImageView!
    @IBOutlet weak var bv5: UIImageView!
    
    @IBOutlet weak var topView: UIView!
    
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.0, delay: 1.0, options: [], animations: {
            
            self.socialCircle.alpha = 0
            self.gitHubCircle.frame.origin = self.bv1.frame.origin
            self.locateUsCircle.frame.origin = self.bv2.frame.origin
            self.LinkedInCircle.frame.origin = self.bv3.frame.origin
            self.pinterestCircle.frame.origin = self.bv4.frame.origin
            self.facebookCircle.frame.origin = self.bv5.frame.origin
            self.twitterCircle.frame.origin = self.socialCircle.frame.origin
            
        }) { (finished: Bool) in
            
        }
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        originSocialCircle = socialCircle.frame.origin
        originGitHubCircle = gitHubCircle.frame.origin
        originLocateUsCircle = locateUsCircle.frame.origin
        originLinkedInCircle = LinkedInCircle.frame.origin
        originPinterestCircle = pinterestCircle.frame.origin
        originFacebookCircle = facebookCircle.frame.origin
        originTwitterCircle = twitterCircle.frame.origin
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    @IBAction func buttonActionTwitter(_ sender: Any) {
        self.topImageView.image = #imageLiteral(resourceName: "TwitterIcon")
        self.topView.backgroundColor = UIColor(red:0.17, green:0.72, blue:0.91, alpha:1.0)
        let url = URL (string: "https://twitter.com/")
        let requestObj = URLRequest(url: url!)
        webView.loadRequest(requestObj)
        
        
        UIView.animate(withDuration: 1.0, delay: 0, options: [], animations: {
            self.topView.alpha = 1
            self.twitterCircle.alpha = 0
            self.facebookCircle.alpha = 0
            self.pinterestCircle.alpha = 0
            self.LinkedInCircle.alpha = 0
            self.locateUsCircle.alpha = 0
            self.gitHubCircle.alpha = 0
        }) { (finished: Bool) in
            
        }
        
        UIView.animate(withDuration: 1.0, delay: 1.0, options: [], animations: {
            self.topImageView.alpha = 1
            self.webView.alpha = 1
            self.view.bringSubview(toFront: self.webView)
            self.backButton.alpha = 1
            
            
        }) { (finished: Bool) in
        }
    }
    
    
    @IBAction func buttonActionFacebook(_ sender: Any) {
        self.topImageView.image = #imageLiteral(resourceName: "Facebook")
        self.topView.backgroundColor = UIColor(red:0.31, green:0.45, blue:0.65, alpha:1.0)
        let url = URL (string: "https://facebook.com/")
        let requestObj = URLRequest(url: url!)
        webView.loadRequest(requestObj)
        UIView.animate(withDuration: 1.0, delay: 0, options: [], animations: {
            self.topView.alpha = 1
            self.twitterCircle.alpha = 0
            self.facebookCircle.alpha = 0
            self.pinterestCircle.alpha = 0
            self.LinkedInCircle.alpha = 0
            self.locateUsCircle.alpha = 0
            self.gitHubCircle.alpha = 0
        }) { (finished: Bool) in
            
        }
        
        UIView.animate(withDuration: 1.0, delay: 1.0, options: [], animations: {
            self.topImageView.alpha = 1
            self.webView.alpha = 1
            self.view.bringSubview(toFront: self.webView)
            self.backButton.alpha = 1
            
            
        }) { (finished: Bool) in
        }
    }
    
    
    @IBAction func buttonActionPinterest(_ sender: Any) {
        self.topImageView.image = #imageLiteral(resourceName: "Pinterest")
        self.topView.backgroundColor = UIColor(red:0.78, green:0.22, blue:0.23, alpha:1.0)
        
        let url = URL (string: "https://in.pinterest.com/")
        let requestObj = URLRequest(url: url!)
        webView.loadRequest(requestObj)
        
        UIView.animate(withDuration: 1.0, delay: 0, options: [], animations: {
            self.topView.alpha = 1
            self.twitterCircle.alpha = 0
            self.facebookCircle.alpha = 0
            self.pinterestCircle.alpha = 0
            self.LinkedInCircle.alpha = 0
            self.locateUsCircle.alpha = 0
            self.gitHubCircle.alpha = 0
        }) { (finished: Bool) in
            
        }
        
        UIView.animate(withDuration: 1.0, delay: 1.0, options: [], animations: {
            self.topImageView.alpha = 1
            self.webView.alpha = 1
            self.view.bringSubview(toFront: self.webView)
            self.backButton.alpha = 1
            
            
        }) { (finished: Bool) in
        }
    }
    
    
    @IBAction func buttonActionLinkedIn(_ sender: Any) {
        self.topImageView.image = #imageLiteral(resourceName: "LinkedIn")
        self.topView.backgroundColor = UIColor(red:0.13, green:0.53, blue:0.68, alpha:1.0)
        let url = URL (string: "https://www.linkedin.com/")
        let requestObj = URLRequest(url: url!)
        webView.loadRequest(requestObj)
        UIView.animate(withDuration: 1.0, delay: 0, options: [], animations: {
            self.topView.alpha = 1
            self.twitterCircle.alpha = 0
            self.facebookCircle.alpha = 0
            self.pinterestCircle.alpha = 0
            self.LinkedInCircle.alpha = 0
            self.locateUsCircle.alpha = 0
            self.gitHubCircle.alpha = 0
        }) { (finished: Bool) in
            
        }
        
        UIView.animate(withDuration: 1.0, delay: 1.0, options: [], animations: {
            self.topImageView.alpha = 1
            self.webView.alpha = 1
            self.view.bringSubview(toFront: self.webView)
            self.backButton.alpha = 1
            
            
        }) { (finished: Bool) in
        }
    }
    
    
    @IBAction func buttonActionLocateUs(_ sender: Any) {
        self.topImageView.image = #imageLiteral(resourceName: "LocateUS")
        self.topView.backgroundColor = UIColor(red:0.12, green:0.63, blue:0.88, alpha:1.0)
        let url = URL (string: "https://www.google.com/maps?ll=21.283762,76.198797&z=16&t=m&hl=en-US&gl=IN&mapclient=embed&cid=107308611447843243")
        let requestObj = URLRequest(url: url!)
        webView.loadRequest(requestObj)
        UIView.animate(withDuration: 1.0, delay: 0, options: [], animations: {
            self.topView.alpha = 1
            self.twitterCircle.alpha = 0
            self.facebookCircle.alpha = 0
            self.pinterestCircle.alpha = 0
            self.LinkedInCircle.alpha = 0
            self.locateUsCircle.alpha = 0
            self.gitHubCircle.alpha = 0
        }) { (finished: Bool) in
            
        }
        
        UIView.animate(withDuration: 1.0, delay: 1.0, options: [], animations: {
            self.topImageView.alpha = 1
            self.webView.alpha = 1
            self.view.bringSubview(toFront: self.webView)
            self.backButton.alpha = 1
            
            
        }) { (finished: Bool) in
        }
    }
    
    
    @IBAction func buttonActionGitHub(_ sender: Any) {
        self.topImageView.image = #imageLiteral(resourceName: "gitHub")
        self.topView.backgroundColor = UIColor(red:0.20, green:0.20, blue:0.20, alpha:1.0)
        
        let url = URL (string: "https://github.com")
        let requestObj = URLRequest(url: url!)
        webView.loadRequest(requestObj)
        
        UIView.animate(withDuration: 1.0, delay: 0, options: [], animations: {
            self.topView.alpha = 1
            self.twitterCircle.alpha = 0
            self.facebookCircle.alpha = 0
            self.pinterestCircle.alpha = 0
            self.LinkedInCircle.alpha = 0
            self.locateUsCircle.alpha = 0
            self.gitHubCircle.alpha = 0
        }) { (finished: Bool) in
            
        }
        
        UIView.animate(withDuration: 1.0, delay: 1.0, options: [], animations: {
            self.topImageView.alpha = 1
            self.webView.alpha = 1
            self.view.bringSubview(toFront: self.webView)
            self.backButton.alpha = 1
            
        }) { (finished: Bool) in
        }
    }
    
    
    
    @IBAction func backButtonAction(_ sender: Any) {
        
        
  /*      UIView.animate(withDuration: 1.0) {
            self.topView.alpha = 0
            self.backButton.alpha = 0
            self.webView.alpha = 0
            self.view.sendSubview(toBack: self.webView)
            
            self.twitterCircle.alpha = 1
            self.facebookCircle.alpha = 1
            self.pinterestCircle.alpha = 1
            self.LinkedInCircle.alpha = 1
            self.locateUsCircle.alpha = 1
            self.gitHubCircle.alpha = 1
            
        }
       */
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
