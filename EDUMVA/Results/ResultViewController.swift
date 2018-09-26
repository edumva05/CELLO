//
//  ResultViewController.swift
//  result
//
//  Created by EDUMVA1 on 23/09/18.
//  Copyright © 2018 DigiMVA. All rights reserved.


import UIKit
import WebKit
import CoreData

var percent = Float()

class ResultViewController: UIViewController {
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var webViewReport: UIWebView!
    
    @IBOutlet weak var chemistry: UILabel!
    
    @IBOutlet weak var maths: UILabel!
    @IBOutlet weak var physics: UILabel!
    @IBOutlet weak var progressBAR: progressBar!
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var progressLBL: UILabel!
    
    @IBOutlet weak var section: UILabel!
    @IBOutlet weak var myclass: UILabel!
    
    
    var a = Float()
    var tag1 = Float()
    var intial = Float()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.webView.layer.cornerRadius = 20
        let url = URL (string: "http://10.1.1.32/newproj/pages/samplegraph.php")
        let requestObj = URLRequest(url: url!)
        webView.loadRequest(requestObj)
        
        webView.scrollView.isScrollEnabled = false
        
        let url1 = URL (string: "http://10.1.1.32/newproj/pages/samplereportcard.php")
        let requestObj1 = URLRequest(url: url1!)
        webViewReport.loadRequest(requestObj1)
        
        chemistry.text = sub1+"/"+total1
        maths.text = sub2+"/"+total2
        physics.text = sub3+"/"+total3
        total.text = sub4+"/"+total4
        if #available(iOS 10.0, *) {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "Users", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            
            
            
            
            do {
                
                try context.save()
                
            } catch {
                
                //print("Failed saving")
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

                        
                        name.text = corename as? String
                        myclass.text = coreclass as? String
                        section.text = coresection as? String
                        
                        
                        
                        
                    }
                }
                
            } catch {
                
                //print("Failed")
            }
        }else {
            // Fallback on earlier versions
        }
        
        
        
        
        webViewReport.scrollView.isScrollEnabled = false
        intial = 0
        
        
        
    }
    
    
    @objc func update()
    {
        if(intial < tag1){
            intial = intial + 1
            self.progressLBL.text = String(intial)
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //print(percent)
        a = percent
        if(a >= 0 && a <= 0.25){
            
            
            progressBAR.trackColor = UIColor.white
            
            //print("more then 0")
            
            
            UIView.animate(withDuration: 1, animations: {
                
                self.progressBAR.progressColor = UIColor.blue
                
            })
            
            UIView.animate(withDuration: 1, delay: 0.8, animations: {
                
                self.progressBAR.progressColor = UIColor.red
                
            })
            
            progressBAR.setProgressWithAnimation(duration: 1.0, value: a)
            
        }
        
        if(a >= 0.25 && a <= 0.5){
            //print("more then 25")
            
            progressBAR.trackColor = UIColor.white
            progressBAR.progressColor = UIColor.red
            progressBAR.setProgressWithAnimation(duration: 1.0, value: a)
            
        }
        
        if(a >= 0.75 && a <= 1){
            //print("more then 75")
            
            progressBAR.trackColor = UIColor.white
            progressBAR.progressColor = UIColor(red:0.51, green:0.78, blue:0.56, alpha:1.0)
            progressBAR.setProgressWithAnimation(duration: 1.0, value: a)
            
        }
        
        if(a >= 0.5  && a <= 0.75){
            //print("more then 50")
            
            progressBAR.trackColor = UIColor.white
            progressBAR.progressColor = UIColor.orange
            progressBAR.setProgressWithAnimation(duration: 1.0, value: a)
            
        }
        
        let timer = Timer.scheduledTimer(timeInterval: 0.02, target: self, selector: #selector(self.update), userInfo: nil, repeats: true)
        
        
        intial = 0.0
        tag1 = a * 100
        
    }
    func getData()
    {
        
        
        
        
        guard let url = URL(string: "http://10.1.1.32/edumva/register.php?method=getresults&tablename=results&fieldname1=mymarks&fieldname2=totalmarks&fieldname3=totalquestions&fieldname4=attempted&fieldname5=correctquestions&fieldname6=incorrectquestions&fieldname7=blank&fieldname8=correctmarks&fieldname9=incorrectmarks&fieldname10=incorrectmarks&fieldname11=apppercent&fieldname12=apppercent&fieldname13=date&fieldname14=examname&getallparts=true&instruction=getlastqindex&condition=cid="+getID)
            
            else { return }
        
        
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            if let response = response {
                //print(response)
                
            }
            
            if let data = data {
                //print(data)
                do {
                    
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    
                    struct outp: Decodable {
                        let resultfield1 : URL
                        let resultfield2 : URL
                        let resultfield3 : URL
                        let resultfield4 : URL
                        let resultfield5 : URL
                        let resultfield6 : URL
                        let resultfield7 : URL
                        let resultfield8 : URL
                        let resultfield9 : URL
                        let resultfield10 : URL
                        let resultfield11 : URL
                        let resultfield12 : URL
                        let resultfield13 : URL
                        let resultfield14 : URL
                        let noofparts : URL
                        let part1name : URL
                        let part1marks : URL
                        let part2name : URL
                        let part2marks : URL
                        let part3name : URL
                        let part3marks : URL
                        let part4name : URL
                        let part4marks : URL
                        let part5name : URL
                        let part5marks : URL
                        let part6name : URL
                        let part6marks : URL
                        let part7name : URL
                        let part7marks : URL
                        let part8name : URL
                        let part8marks : URL
                        let part9name : URL
                        let part9marks : URL
                        let part10name : URL
                        let part10marks : URL
                        let part1totalmarks : URL
                        let part2totalmarks : URL
                        let part3totalmarks : URL
                        
                        
                        enum CodingKeys : String, CodingKey {
                            case resultfield1 = "resultfield1"
                            case resultfield2 = "resultfield2"
                            case resultfield3 = "resultfield3"
                            case resultfield4 = "resultfield4"
                            case resultfield5 = "resultfield5"
                            case resultfield6 = "resultfield6"
                            case resultfield7 = "resultfield7"
                            case resultfield8 = "resultfield8"
                            case resultfield9 = "resultfield9"
                            case resultfield10 = "resultfield10"
                            case resultfield11 = "resultfield11"
                            case resultfield12 = "resultfield12"
                            case resultfield13 = "resultfield13"
                            case resultfield14 = "resultfield14"
                            case noofparts = "noofparts"
                            case part1name = "part1name"
                            case part1marks = "part1marks"
                            case part2name = "part2name"
                            case part2marks = "part2marks"
                            case part3name = "part3name"
                            case part3marks = "part3marks"
                            case part4name = "part4name"
                            case part4marks = "part4marks"
                            case part5name = "part5name"
                            case part5marks = "part5marks"
                            case part6name = "part6name"
                            case part6marks = "part6marks"
                            case part7name = "part7name"
                            case part7marks = "part7marks"
                            case part8name = "part8name"
                            case part8marks = "part8marks"
                            case part9name = "part9name"
                            case part9marks = "part9marks"
                            case part10name = "part10name"
                            case part10marks = "part10marks"
                            case part1totalmarks = "part1totalmarks"
                            case part2totalmarks = "part2totalmarks"
                            case part3totalmarks = "part3totalmarks"
                            
                        }
                    }
                    
                    guard let output = try? JSONDecoder().decode(outp.self, from: data) else {
                        //print("Error: Couldn't decode data into Blog")
                        return
                    }
                    
                    //print("mymarks: \(output.resultfield1)")
                    //print("toatlmarks: \(output.resultfield2)")
                    //print("totalquestions: \(output.resultfield3)")
                    //print("attempted: \(output.resultfield4)")
                    //print("correctquestions: \(output.resultfield5)")
                    //print("incorrectquestions: \(output.resultfield6)")
                    //print("blank: \(output.resultfield7)")
                    //print("correctmarks: \(output.resultfield8)")
                    //print("incorrectmarks: \(output.resultfield9)")
                    //print("totaltime: \(output.resultfield10)")
                    //print("mytime: \(output.resultfield11)")
                    //print("mypercentile: \(output.resultfield12)")
                    //print("date: \(output.resultfield13)")
                    //print("examname: \(output.resultfield14)")
                    //print("noofparts: \(output.noofparts)")
                    
                    //   UserDefaults.standard.set(self.txt1.text, forKey: "text")
                    
                    if #available(iOS 10.0, *) {
                        let appDelegate = UIApplication.shared.delegate as! AppDelegate
                        let context = appDelegate.persistentContainer.viewContext
                        let entity = NSEntityDescription.entity(forEntityName: "Users", in: context)
                        let newUser = NSManagedObject(entity: entity!, insertInto: context)
                        
                        
                        newUser.setValue("\(output.resultfield12)", forKey: "result")
                        newUser.setValue("\(output.part1marks)", forKey: "sub1")
                        newUser.setValue("\(output.part2marks)", forKey: "sub2")
                        newUser.setValue("\(output.part3marks)", forKey: "sub3")
                        newUser.setValue("\(output.resultfield1)", forKey: "sub4")
                        newUser.setValue("\(output.part1totalmarks)", forKey: "total1")
                        newUser.setValue("\(output.part2totalmarks)", forKey: "total2")
                        newUser.setValue("\(output.part3totalmarks)", forKey: "total3")
                        newUser.setValue("\(output.resultfield2)", forKey: "total4")
                        
                        
                        
                        
                        
                        do {
                            
                            try context.save()
                            
                        } catch {
                            
                            //print("Failed saving")
                        }
                        
                        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
                        //request.predicate = NSPredicate(format: "age = %@", "12")
                        request.returnsObjectsAsFaults = false
                        
                        do {
                            let result = try context.fetch(request)
                            for data in result as! [NSManagedObject] {
                                
                                let coreresult = data.value(forKey: "result")
                                let coresub1 = data.value(forKey: "sub1")
                                let coresub2 = data.value(forKey: "sub2")
                                let coresub3 = data.value(forKey: "sub3")
                                let coretotal1 = data.value(forKey: "total1")
                                let coretotal2 = data.value(forKey: "total2")
                                let coretotal3 = data.value(forKey: "total3")
                                let coretotal4 = data.value(forKey: "total4")
                                
                                
                                
                                if((coreresult == nil) || (coresub1 == nil) || (coresub2 == nil) || (coresub3 == nil) || (coretotal1 == nil) || (coretotal2 == nil) || (coretotal3 == nil) || (coretotal4 == nil)){
                                    
                                }else{
                                    //print(coreresult as! String )
                                    let getValues = coreresult as! String
                                    percent = Float(getValues)!/100
                                    //print(percent)
                                    sub1 = coresub1 as! String
                                    sub2 = coresub2 as! String
                                    sub3 = coresub3 as! String
                                    sub4 = coresub3 as! String
                                    total1 = coretotal1 as! String
                                    total2 = coretotal2 as! String
                                    total3 = coretotal3 as! String
                                    total4 = coretotal4 as! String
                                    
                                }
                                
                            }
                            
                        } catch {
                            
                            //print("Failed")
                        }
                    } else {
                        // Fallback on earlier versions
                    }
                    
                    
                    
                    
                    
                } catch {
                    //print(error)
                    
                }
                
            }
            }.resume()
        
    }
    
    
    
}
