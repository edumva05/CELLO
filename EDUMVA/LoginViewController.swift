//
//  LoginViewController.swift
//  EDUMVA
//
//  Created by EDUMVA2 on 17/09/18.
//

import UIKit
import CoreData

class LoginViewController: UIViewController {
    @IBOutlet weak var txt1: UITextField!
    
    @IBOutlet weak var txt2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        UIAccessibilityRequestGuidedAccessSession(true){
            success in
            print("Request guided access success \(success)")
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func check(_ sender: Any)
    {
        
        
        let user = txt1.text
        let password = txt2.text
        var inputuser = "student"
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        
        
        
        guard let url = URL(string: "http://192.168.1.166/edumva/Register.php?method=login&username="+user!+"&password="+password!+"&inputuser="+inputuser)
            
            else { return }
        
        
        print(inputuser)
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            if let response = response {
                print(response)
                
            }
            
            if let data = data {
                print(data)
                do {
                    
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    
                    struct outp: Decodable {
                        let response: URL
                        let gotopage : URL
                        let studentid : URL
                        let studentname : URL
                        let studentusername : URL
                        
                        
                        enum CodingKeys : String, CodingKey {
                            case response = "response"
                            case gotopage = "gotopage"
                            case studentid = "studentid"
                            case studentname = "studentname"
                            case studentusername = "studentusername"
                        }
                    }
                    
                    guard let output = try? JSONDecoder().decode(outp.self, from: data) else {
                        print("Error: Couldn't decode data into Blog")
                        return
                    }
                    
                    print("Respone: \(output.response)")
                    print("gotopage: \(output.gotopage)")
                    print("studentid: \(output.studentid)")
                    print("studentname: \(output.studentname)")
                    print("studentusername: \(output.studentusername)")
                    
                    let otp = "Response: \(output.response)"
                    let gotopage = "gotopage: \(output.gotopage)"
                    
                    if (otp == "Response: true")
                    {
                        
                        
                        
                        print("LoggedIn As Student")
                        
                        //navigate to home screen
                        UserDefaults.standard.set(true, forKey: "ISUSERLOGGEDIN")
                        let homeVc = storyboard.instantiateViewController(withIdentifier: "ExamViewController")
                        self.present(homeVc, animated: true, completion: nil)
                        //   UserDefaults.standard.set(self.txt1.text, forKey: "text")
                        
                        if #available(iOS 10.0, *) {
                            let appDelegate = UIApplication.shared.delegate as! AppDelegate
                            let context = appDelegate.persistentContainer.viewContext
                            let entity = NSEntityDescription.entity(forEntityName: "Users", in: context)
                            let newUser = NSManagedObject(entity: entity!, insertInto: context)
                            
                            
                            newUser.setValue("\(output.studentid)", forKey: "id")
                            newUser.setValue("\(output.studentname)", forKey: "name")
                            newUser.setValue("\(output.studentusername)", forKey: "user")
                            
                            do {
                                
                                try context.save()
                                
                            } catch {
                                
                                print("Failed saving")
                            }
                            
                            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
                            //request.predicate = NSPredicate(format: "age = %@", "12")
                            request.returnsObjectsAsFaults = false
                            
                            do {
                                let result = try context.fetch(request)
                                for data in result as! [NSManagedObject] {
                                    print(data.value(forKey: "id") as! String)
                                    print(data.value(forKey: "name") as! String)
                                    print(data.value(forKey: "user") as! String)
                                }
                                
                            } catch {
                                
                                print("Failed")
                            }
                        }
                    } else {
                        // Fallback on earlier versions
                    }
                    
                    
                    
                    
                    
                    
                } catch {
                    print(error)
                    
                }
                
            }
            }.resume()
        
        
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
