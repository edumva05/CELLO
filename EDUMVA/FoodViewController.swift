//
//  FoodViewController.swift
//  EDUMVA
//
//  Created by EDUMVA4 on 19/09/18.
//

import UIKit
var sub1 = ""
var sub2 = ""
var sub3 = ""
var sub4 = ""
var total1 = ""
var total2 = ""
var total3 = ""
var total4 = ""
let date = Date()
let formatter = DateFormatter()
let FoodDate = Date()
let format = DateFormatter()
var checkNumber : Int = 0
class FoodViewController: UIViewController {
    var getDate : String = ""
    var getYear : String = ""
    var getMonth : String = ""
    @IBOutlet weak var todayButton: UIButton!
    @IBOutlet weak var next1: UIButton!
    @IBOutlet weak var next2: UIButton!
    @IBOutlet weak var next3: UIButton!
    @IBOutlet weak var next4: UIButton!
    @IBOutlet weak var next5: UIButton!
    @IBOutlet weak var movingView: UIView!
    @IBOutlet weak var Breakfast: UILabel!
    @IBOutlet weak var Lunch: UILabel!
    @IBOutlet weak var Refreshment: UILabel!
    @IBOutlet weak var Dinner: UILabel!
    
    @IBAction func backBtn(_ sender: Any) {
        DispatchQueue.main.async{
            let homeVc = self.storyboard?.instantiateViewController(withIdentifier: "WelcomeHere")
            self.present(homeVc!, animated: true, completion: nil)
            
        }
    }
    override func viewDidLoad() {
        //nslog(date)
        super.viewDidLoad()
        
        let resultVc = self.storyboard?.instantiateViewController(withIdentifier: "WelcomeHere")
        self.present(resultVc!, animated: true, completion: nil)
           formatter.dateFormat = "dd MMM"
        let stringDate = formatter.string(from: date)
        let nxtday1 = formatter.string(from:Calendar.current.date(byAdding: .day, value: 1, to: date)!)
        let nxtday2 = formatter.string(from:Calendar.current.date(byAdding: .day, value: 2, to: date)!)
        let nxtday3 = formatter.string(from:Calendar.current.date(byAdding: .day, value: 3, to: date)!)
        let nxtday4 = formatter.string(from:Calendar.current.date(byAdding: .day, value: 4, to: date)!)
        let nxtday5 = formatter.string(from:Calendar.current.date(byAdding: .day, value: 5, to: date)!)
        next1.setTitle(nxtday1, for: .normal)
        next2.setTitle(nxtday2, for: .normal)
        next3.setTitle(nxtday3, for: .normal)
        next4.setTitle(nxtday4, for: .normal)
        next5.setTitle(nxtday5, for: .normal)
        Breakfast.text = ""
        Lunch.text = ""
        Refreshment.text = ""
        Dinner.text = ""
        // Do any additional setup after loading the view, typically from a nib.
        format.dateFormat = "dd"
        getDate = format.string(from: FoodDate)
        
        format.dateFormat = "MM"
        getMonth = format.string(from:  FoodDate)
        
        format.dateFormat = "yyyy"
        getYear = format.string(from:  FoodDate)
        
        
        getData()
    }

    @IBAction func todayButtonAction(_ sender: Any) {
        
        
        
        UIView.animate(withDuration: 0.4) {
            self.movingView.center.x = self.todayButton.center.x
        }
       
        Breakfast.text = ""
        Lunch.text = ""
        Refreshment.text = ""
        Dinner.text = ""
        format.dateFormat = "dd"
        getDate = format.string(from: FoodDate)
        
        format.dateFormat = "MM"
        getMonth = format.string(from:  FoodDate)
        
        format.dateFormat = "yyyy"
        
        getYear = format.string(from:  FoodDate)
        
        
        getData()
    }
    
    @IBAction func next1Action(_ sender: Any) {
        UIView.animate(withDuration: 0.4) {
            self.movingView.center.x = self.next1.center.x
        }
        Breakfast.text = ""
        Lunch.text = ""
        Refreshment.text = ""
        Dinner.text = ""
        format.dateFormat = "dd"
        getDate = format.string(from:Calendar.current.date(byAdding: .day, value: 1, to: FoodDate)!)
        
        format.dateFormat = "MM"
        getMonth = format.string(from:Calendar.current.date(byAdding: .day, value: 1, to: FoodDate)!)
        
        format.dateFormat = "yyyy"
        getYear = format.string(from:Calendar.current.date(byAdding: .day, value: 1, to: FoodDate)!)
        
        getData()
    }
    
    @IBAction func next2Action(_ sender: Any) {
        UIView.animate(withDuration: 0.4) {
            self.movingView.center.x = self.next2.center.x
        }
        Breakfast.text = ""
        Lunch.text = ""
        Refreshment.text = ""
        Dinner.text = ""
        format.dateFormat = "dd"
        getDate = format.string(from:Calendar.current.date(byAdding: .day, value: 2, to: FoodDate)!)
        
        format.dateFormat = "MM"
        getMonth = format.string(from:Calendar.current.date(byAdding: .day, value: 2, to: FoodDate)!)
        
        format.dateFormat = "yyyy"
        getYear = format.string(from:Calendar.current.date(byAdding: .day, value: 2, to: FoodDate)!)
        
        getData()
    }
    
    @IBAction func next3Action(_ sender: Any) {
        UIView.animate(withDuration: 0.4) {
            self.movingView.center.x = self.next3.center.x
        }
        Breakfast.text = ""
        Lunch.text = ""
        Refreshment.text = ""
        Dinner.text = ""
        format.dateFormat = "dd"
        getDate = format.string(from:Calendar.current.date(byAdding: .day, value: 3, to: FoodDate)!)
        
        format.dateFormat = "MM"
        getMonth = format.string(from:Calendar.current.date(byAdding: .day, value: 3, to: FoodDate)!)
        
        format.dateFormat = "yyyy"
        getYear = format.string(from:Calendar.current.date(byAdding: .day, value: 3, to: FoodDate)!)
        
        getData()
    }
    
    @IBAction func next4Action(_ sender: Any) {
        UIView.animate(withDuration: 0.4) {
            self.movingView.center.x = self.next4.center.x
        }
        Breakfast.text = ""
        Lunch.text = ""
        Refreshment.text = ""
        Dinner.text = ""
        format.dateFormat = "dd"
        getDate = format.string(from:Calendar.current.date(byAdding: .day, value: 4, to: FoodDate)!)
        
        format.dateFormat = "MM"
        getMonth = format.string(from:Calendar.current.date(byAdding: .day, value: 4, to: FoodDate)!)
        
        format.dateFormat = "yyyy"
        getYear = format.string(from:Calendar.current.date(byAdding: .day, value: 4, to: FoodDate)!)
        
        getData()
    }
    
    @IBAction func next5Action(_ sender: Any) {
        
        UIView.animate(withDuration: 0.4) {
            self.movingView.center.x = self.next5.center.x
        }
        Breakfast.text = ""
        Lunch.text = ""
        Refreshment.text = ""
        Dinner.text = ""
        format.dateFormat = "dd"
        getDate = format.string(from:Calendar.current.date(byAdding: .day, value: 5, to: FoodDate)!)
        
        format.dateFormat = "MM"
        getMonth = format.string(from:Calendar.current.date(byAdding: .day, value: 5, to: FoodDate)!)
        
        format.dateFormat = "yyyy"
        getYear = format.string(from:Calendar.current.date(byAdding: .day, value: 5, to: FoodDate)!)
        
        getData()
    }
    func getData() {
        
        
        
    
        
        guard let url = URL(string: "http://10.1.1.32/edumva/register.php?method=getfooditems&tablename=food&fieldname1=breakfast&fieldname2=lunch&fieldname3=refreshment&fieldname4=dinner&fieldname5=breakfast_img&fieldname6=lunch_img&fieldname7=refreshment_img&fieldname8=dinner_img&condition=(date=\(getDate))and(month=\(getMonth))and(year=\(getYear))")
            
            
            
            
            
            else { return }
        
        
        
        
        
        struct outp: Decodable {
            let resultfield1 : URL
            let resultfield2 : URL
            let resultfield3 : URL
            let resultfield4 : URL
            let resultfield5 : URL
            let resultfield6 : URL
            let resultfield7 : URL
            let resultfield8 : URL
            
            enum CodingKeys : String, CodingKey {
                case resultfield1 = "resultfield1"
                case resultfield2 = "resultfield2"
                case resultfield3 = "resultfield3"
                case resultfield4 = "resultfield4"
                case resultfield5 = "resultfield5"
                case resultfield6 = "resultfield6"
                case resultfield7 = "resultfield7"
                case resultfield8 = "resultfield8"
            }
        }
        
        
        
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            
            if let data = data {
                do {
                    
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    
                    
                    
                    guard let output = try? JSONDecoder().decode(outp.self, from: data) else {
                        //nslog("Error: Couldn't decode data into Blog")
                        return
                    }
                    
                    var path = ""
                    path = "http://192.168.1.166/edumva/\(output.resultfield5)"
                    //nslog(path)
                    DispatchQueue.main.async
                        {
                            
                            self.Breakfast.text = "\(output.resultfield1)"
                            self.Lunch.text = "\(output.resultfield2)"
                            self.Refreshment.text = "\(output.resultfield3)"
                            self.Dinner.text = "\(output.resultfield4)"
                            
                            
                            
                            //self.img1.image = UIImage(named: "\(path)")
                            
                            // self.img2.image = "\(output.resultfield6)"
                            // self.img3.image = "\(output.resultfield7)"
                            // self.img4.image = "\(output.resultfield8)"
                            
                            
                            
                            
                            //nslog("**************************************************************************************************************")
                            
                            
                            
                            
                            
                            //nslog("!@#$%^&*)*&^%$#!@#$%^&*())(*&^%$#!@$%^)(*!@#$%^*)&^%$#!@#$%^&*()*&@!@#$%^&*()(*&^#@!!@#$%^&*()%$#@!@#$%^&*())(%#@!resultfield1: \(output.resultfield1)")
                            //nslog("resultfield2: \(output.resultfield2)")
                            //nslog("resultfield3: \(output.resultfield3)")
                            //nslog("resultfield4: \(output.resultfield4)")
                            //nslog("resultfield5: \(output.resultfield5)")
                    }
                    //  //nslog(temp)
                    
                    
                    
                    
                } catch {
                    //nslog(error)
                    
                }
                
                
            }
            }.resume()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
