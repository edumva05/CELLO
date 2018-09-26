//
//  LoginViewController.swift
//  EDUMVA
//
//  Created by EDUMVA2 on 17/09/18.
//

import UIKit
import CoreData
var getID = ""

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var loginLine: UIImageView!
    @IBOutlet weak var loginLine2: UIImageView!
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    @IBOutlet weak var emptyImg: UIImageView!
    
    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var emailLogin: UILabel!
    @IBOutlet weak var passwordLogin: UILabel!
    
    @IBOutlet weak var txt2: UITextField!
    
    @IBOutlet weak var signIn: UIButton!
    @IBOutlet weak var loginImg: UIImageView!
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0{
                self.view.frame.origin.y -= (keyboardSize.height * 0.846)
            }
        }
    }
    
    @IBAction func BackBtn(_ sender: Any) {
        DispatchQueue.main.async{
            let homeVc = self.storyboard?.instantiateViewController(withIdentifier: "WelcomeHere")
            self.present(homeVc!, animated: true, completion: nil)
            
        }
    }
    @objc func keyboardWillHide(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y != 0{
                self.view.frame.origin.y += (keyboardSize.height * 0.846)
                
            }
        }
        UIView.animate(withDuration: 0.4)
        {
            
            if(self.txt1.text == ""){
                self.emailLogin.frame.origin.y = 367
            }
            
            if(self.txt2.text == ""){
                self.passwordLogin.frame.origin.y = 502
            }
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        
        
        UIView.animate(withDuration: 0.8,
                       delay: 0,
                       options: .allowUserInteraction,
                       animations: { [weak self] in
                        self?.loginImg.frame.origin.x = (self?.emptyImg.frame.origin.x)!
                        self?.loginImg.frame.origin.y = (self?.emptyImg.frame.origin.y)!
                        self?.loginImg.frame.size.width = (self?.emptyImg.frame.size.width)!
                        self?.loginImg.frame.size.height = (self?.emptyImg.frame.size.height)!
                        
                        
                        UIView.animate(withDuration: 0.5,
                                       delay: 0.3,
                                       options: .allowUserInteraction,
                                       animations: { [weak self] in
                                        
                                        self?.emailLogin.alpha = 1
                                        self?.passwordLogin.alpha = 1
                                        self?.signIn.alpha = 1
                                        self?.loginLine.alpha = 1
                                        self?.loginLine2.alpha = 1
                                        self?.txt1.alpha = 1
                                        self?.txt2.alpha = 1
                            },
                                       completion: nil)
                        
            },
                       completion: nil)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        self.loginImg.frame.size.width = self.view.frame.size.width * 100/1024
        self.loginImg.frame.size.height = self.view.frame.size.height * 100/768
        self.loginImg.center.x = self.emptyImg.center.x
        self.loginImg.frame.origin.y = self.emptyImg.frame.origin.y * 2.25
        
        
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(LoginViewController.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(LoginViewController.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        
        
        UIAccessibilityRequestGuidedAccessSession(true){
            success in
            //nslog("Request guided access success \(success)")
            
            self.txt1.delegate = self
            self.txt2.delegate = self
            
        }
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField)
    {
        
        
        if(textField == txt1)
        {
            
            
            
            UIView.animate(withDuration: 0.4)
            {
                self.emailLogin.frame.origin.y = 330
                
            }
        }
            
        else if(textField == txt2)
        {
            UIView.animate(withDuration: 0.4)
            {
                self.passwordLogin.frame.origin.y = 465
                
            }
        }
        
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if(textField == txt1)
        {
            txt1.resignFirstResponder()
            if(txt1.text == ""){
                UIView.animate(withDuration: 0.4)
                {
                    self.emailLogin.frame.origin.y = 367
                    
                }
            }
        }
        else if(textField == txt2)
        {
            txt2.resignFirstResponder()
            if(txt2.text == ""){
                UIView.animate(withDuration: 0.4)
                {
                    self.passwordLogin.frame.origin.y = 502
                    
                }
            }
        }
        
        
        return true
    }
    
    @IBAction func check(_ sender: Any)
    {
        
        let user = txt1.text
        let password = txt2.text
        var inputuser = "student"
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        
        
        guard let url = URL(string: "http://10.1.1.32/edumva/Register.php?method=login&username="+user!+"&password="+password!+"&inputuser="+inputuser)
            
            else { return }
        
        
        //nslog(inputuser)
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            if let response = response {
                //nslog(response)
                
            }
            
            if let data = data {
                //nslog(data)
                do {
                    
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    
                    struct outp: Decodable {
                        let response: URL
                        let gotopage : URL
                        let studentid : URL
                        let studentname : URL
                        let studentusername : URL
                        let studentclass : URL
                        let studentfathersname : URL
                        let studentmothersname : URL
                        let studentdob : URL
                        let studentmobileno : URL
                        let studentemail : URL
                        let studentaddress : URL
                        let studentsection : URL
                        
                        
                        
                        enum CodingKeys : String, CodingKey {
                            case response = "response"
                            case gotopage = "gotopage"
                            case studentid = "studentid"
                            case studentname = "studentname"
                            case studentusername = "studentusername"
                            case studentclass = "studentclass"
                            case studentfathersname = "studentfathersname"
                            case studentmothersname = "studentmothersname"
                            case studentdob = "studentdob"
                            case studentmobileno = "studentmobileno"
                            case studentemail = "studentemail"
                            case studentaddress = "studentaddress"
                            case studentsection = "studentsection"
                            
                        }
                    }
                    
                    guard let output = try? JSONDecoder().decode(outp.self, from: data) else {
                        //nslog("Error: Couldn't decode data into Blog")
                        return
                    }
                    
                    //nslog("Respone: \(output.response)")
                    //nslog("gotopage: \(output.gotopage)")
                    //nslog("studentid: \(output.studentid)")
                    //nslog("studentname: \(output.studentname)")
                    //nslog("studentusername: \(output.studentusername)")
                    //nslog("studentclass:  \(output.studentclass)")
                    //nslog("studentfathersname:  \(output.studentfathersname)")
                    //nslog("studentmothersname:  \(output.studentmothersname)")
                    //nslog("studentdob:  \(output.studentdob)")
                    //nslog("studentmobileno:  \(output.studentmobileno)")
                    //nslog("studentemail:  \(output.studentemail)")
                    //nslog("studentaddress:  \(output.studentaddress)")
                    
                    let otp = "Response: \(output.response)"
                    let gotopage = "gotopage: \(output.gotopage)"
                    
                    if (otp == "Response: true")
                    {
                        
                        
                        
                        //nslog("LoggedIn As Student")
                        
                        //navigate to home screen
                        DispatchQueue.main.async{
                            UserDefaults.standard.set(true, forKey: "ISUSERLOGGEDIN")
                            let homeVc = storyboard.instantiateViewController(withIdentifier: "WelcomeHere")
                            self.present(homeVc, animated: true, completion: nil)
                        }
                        //   UserDefaults.standard.set(self.txt1.text, forKey: "text")
                        
                        if #available(iOS 10.0, *) {
                            let appDelegate = UIApplication.shared.delegate as! AppDelegate
                            let context = appDelegate.persistentContainer.viewContext
                            let entity = NSEntityDescription.entity(forEntityName: "Users", in: context)
                            let newUser = NSManagedObject(entity: entity!, insertInto: context)
                            
                            
                            newUser.setValue("\(output.studentid)", forKey: "id")
                            newUser.setValue("\(output.studentname)", forKey: "name")
                            newUser.setValue("\(output.studentusername)", forKey: "user")
                            newUser.setValue("\(output.studentclass)", forKey: "myclass")
                            newUser.setValue("\(output.studentfathersname)", forKey: "fname")
                            newUser.setValue("\(output.studentmothersname)", forKey: "mname")
                            newUser.setValue("\(output.studentdob)", forKey: "dob")
                            newUser.setValue("\(output.studentmobileno)", forKey: "phno")
                            newUser.setValue("\(output.studentemail)", forKey: "email")
                            newUser.setValue("\(output.studentaddress)", forKey: "address")
                            newUser.setValue("\(output.studentsection)", forKey: "section")
                            
                            
                            do {
                                
                                try context.save()
                                
                            } catch {
                                
                                //nslog("Failed saving")
                            }
                            
                            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
                            //request.predicate = NSPredicate(format: "age = %@", "12")
                            request.returnsObjectsAsFaults = false
                            
                            do {
                                let result = try context.fetch(request)
                                for data in result as! [NSManagedObject] {
                                    let coreid = data.value(forKey: "id")
                                    let corename = data.value(forKey: "name")
                                    let coreuser = data.value(forKey: "user")
                                    let coreclass = data.value(forKey: "myclass")
                                    let corefname = data.value(forKey: "fname")
                                    let coremname = data.value(forKey: "mname")
                                    let coredob = data.value(forKey: "dob")
                                    let corephno = data.value(forKey: "phno")
                                    let coreemail = data.value(forKey: "email")
                                    let coreaddress = data.value(forKey: "address")
                                    let coresection = data.value(forKey: "section")
                                    
                                    if((coreid == nil) || (corename == nil) || (coreuser == nil) || (coreclass == nil) || (corefname == nil) || (coremname == nil) || (coredob == nil) || (corephno == nil) || (coreemail == nil) || (coreaddress == nil) || (coresection == nil)){
                                        
                                    }else{
                                        //nslog(coreid as! String)
                                        //nslog(corename as! String)
                                        //nslog(coreuser as! String)
                                        //nslog(coreclass as! String)
                                        //nslog(corefname as! String)
                                        //nslog(coremname as! String)
                                        //nslog(coredob as! String)
                                        //nslog(corephno as! String)
                                        //nslog(coreemail as! String)
                                        //nslog(coreaddress as! String)
                                        //nslog(coresection as! String)
                                        getID = coreid as! String
                                    }
                                }
                                
                            } catch {
                                
                                //nslog("Failed")
                            }
                        }
                    } else {
                        // Fallback on earlier versions
                    }
                    
                    
                    
                    
                    
                    
                } catch {
                    //nslog(error)
                    
                }
                
            }
            }.resume()
        
        
    }
    
    
    
}
