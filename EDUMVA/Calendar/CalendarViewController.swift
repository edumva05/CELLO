//
//  CalendarViewController.swift
//  CalendarFinalFixed
//
//  Created by EDUMVA5 on 19/09/18.
//  Copyright © 2018 DigiMVA. All rights reserved.
//

import UIKit

class CalendarViewController: UIViewController {
    
    
    @IBOutlet weak var labelPresentDate: UILabel!
    @IBOutlet weak var labelPresentWeekday: UILabel!
    @IBOutlet weak var labelPresentTime: UILabel!
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var labelShowMonth: UILabel!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn10: UIButton!
    @IBOutlet weak var btn11: UIButton!
    @IBOutlet weak var btn12: UIButton!
    @IBOutlet weak var btn13: UIButton!
    @IBOutlet weak var btn14: UIButton!
    @IBOutlet weak var btn15: UIButton!
    @IBOutlet weak var btn16: UIButton!
    @IBOutlet weak var btn17: UIButton!
    @IBOutlet weak var btn18: UIButton!
    @IBOutlet weak var btn19: UIButton!
    @IBOutlet weak var btn20: UIButton!
    @IBOutlet weak var btn21: UIButton!
    @IBOutlet weak var btn22: UIButton!
    @IBOutlet weak var btn23: UIButton!
    @IBOutlet weak var btn24: UIButton!
    @IBOutlet weak var btn25: UIButton!
    @IBOutlet weak var btn26: UIButton!
    @IBOutlet weak var btn27: UIButton!
    @IBOutlet weak var btn28: UIButton!
    @IBOutlet weak var btn29: UIButton!
    @IBOutlet weak var btn30: UIButton!
    @IBOutlet weak var btn31: UIButton!
    @IBOutlet weak var btn32: UIButton!
    @IBOutlet weak var btn33: UIButton!
    @IBOutlet weak var btn34: UIButton!
    @IBOutlet weak var btn35: UIButton!
    @IBOutlet weak var btn36: UIButton!
    @IBOutlet weak var btn37: UIButton!
    
    @IBOutlet weak var labelPresentYear: UILabel!
    
    @IBOutlet weak var blurView: UIVisualEffectView!
    @IBOutlet weak var movingView: UIView!
    @IBOutlet weak var btnSendBack: UIButton!
    @IBOutlet weak var sendBackPopUp: UIButton!
    
    @IBOutlet weak var popUpView: UIView!
    
    var start = Int()
    var end = Int()
    
    
    var gdate = Int()
    var gmonth = Int()
    var gyear = Int()
    
    var pdate = Int()
    var pmonth = Int()
    var pyear = Int()
    
    var popUpOrigin = CGPoint()
    
    
    @IBOutlet weak var morningButton: UIButton!
    @IBOutlet weak var eveningButton: UIButton!
    @IBOutlet weak var nightButton: UIButton!
    @IBOutlet weak var afternoonButton: UIButton!
    @IBOutlet weak var triangleImage: UIImageView!
    
    @IBOutlet weak var triangleImageEvent: UIImageView!
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var timeLabelDescription: UILabel!
    @IBOutlet weak var noevents: UILabel!
    
    @IBOutlet weak var event1: UIButton!
    @IBOutlet weak var event2: UIButton!
    @IBOutlet weak var event3: UIButton!
    @IBOutlet weak var event4: UIButton!
    @IBOutlet weak var event5: UIButton!
    
    
    @IBOutlet weak var labelEvent: UILabel!
    @IBOutlet weak var labelEventDescription: UILabel!
    
    @IBOutlet weak var eventLine: UIView!
    
    var showDay = Int()
    var dayString = String()
    
    var test : Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        finalmonth()
        monthNamingFunc()
        
        
        popUpOrigin = popUpView.frame.origin
        
        
        let weekday = Calendar.current.component(.weekday, from: date)
        labelPresentWeekday.text = Calendar.current.weekdaySymbols[weekday-1]
        
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .short
        
        let timeString = "\(dateFormatter.string(from: Date() as Date))"
        
        labelPresentTime.text = String(timeString)
        
        showDay = Int(day!)
        
        
        labelPresentDate.text = "\(showDay)"
        
        // Do any additional setup after loading the view.
        
        
    }
    
    
    
    
    
    
    
    
    
    func yearNamingFunc()
    {
        if (year == 2018)
        {
            labelPresentYear.text = "2018"
        }
            
        else if (year == 2019)
        {
            labelPresentYear.text = "2019"
        }
            
        else if (year == 2020)
        {
            labelPresentYear.text = "2020"
        }
    }
    
    
    
    func monthNamingFunc()
    {
        if (month == 1)
        {
            labelShowMonth.text = "January"
        }
            
        else if (month == 2)
        {
            labelShowMonth.text = "February"
        }
            
        else if (month == 3)
        {
            labelShowMonth.text = "March"
        }
            
        else if (month == 4)
        {
            labelShowMonth.text = "April"
        }
            
        else if (month == 5)
        {
            labelShowMonth.text = "May"
        }
            
        else if (month == 6)
        {
            labelShowMonth.text = "June"
        }
            
        else if (month == 7)
        {
            labelShowMonth.text = "July"
        }
            
        else if (month == 8)
        {
            labelShowMonth.text = "August"
        }
            
        else if (month == 9)
        {
            labelShowMonth.text = "September"
        }
            
        else if (month == 10)
        {
            labelShowMonth.text = "October"
        }
            
        else if (month == 11)
        {
            labelShowMonth.text = "November"
        }
            
        else if (month == 12)
        {
            labelShowMonth.text = "December"
        }
    }
    
    
    func callForLoop()
    {
        
        let buttons : [UIButton] = [btn1,btn2,btn3,btn4,btn5,btn6,btn7,btn8,btn9,btn10,btn11,btn12,btn13,btn14,btn15,btn16,btn17,btn18,btn19,btn20,btn21,btn22,btn23,btn24,btn25,btn26,btn27,btn28,btn29,btn30,btn31,btn32,btn33,btn34,btn35,btn36,btn37]
        
        var addition : Int = 1
        let condition_2018Visible: [UIButton] = Array(buttons[start..<end])
        let condition_2018Invisible: [UIButton] = Array(buttons[0..<start])
        let condtition_2018Invisible2 : [UIButton] = Array(buttons[end..<37])
        for button in condition_2018Visible
        {
            button.alpha = 1
            button.setTitle(String(addition), for: .normal)
            addition += 1
        }
        
        for button in condition_2018Invisible
        {
            button.alpha = 0
            button.setTitle(String(""), for: .normal)
        }
        for button in condtition_2018Invisible2
        {
            button.alpha = 0
            button.setTitle(String(""), for: .normal)
        }
    }
    
    
    
    func finalmonth()
    {
        
        let buttons : [UIButton] = [btn1,btn2,btn3,btn4,btn5,btn6,btn7,btn8,btn9,btn10,btn11,btn12,btn13,btn14,btn15,btn16,btn17,btn18,btn19,btn20,btn21,btn22,btn23,btn24,btn25,btn26,btn27,btn28,btn29,btn30,btn31,btn32,btn33,btn34,btn35,btn36,btn37]
        
        if (month == 1 && year == 2018)
        {
            start = 0
            end = 31
            callForLoop()
            
        }
            
        else if (month == 2 && year == 2018)
        {
            start = 3
            end = 31
            callForLoop()
            
        }
            
        else if (month == 3 && year == 2018)
        {
            start = 3
            end = 34
            callForLoop()
            
        }
            
        else if (month == 4 && year == 2018)
        {
            start = 6
            end = 36
            callForLoop()
            
        }
            
        else if (month == 5 && year == 2018)
        {
            start = 1
            end = 32
            callForLoop()
            
        }
            
        else if (month == 6 && year == 2018)
        {
            start = 4
            end = 34
            callForLoop()
            
        }
            
        else if (month == 7 && year == 2018)
        {
            start = 6
            end = 37
            callForLoop()
            
        }
            
        else if (month == 8 && year == 2018)
        {
            start = 2
            end = 33
            callForLoop()
            
        }
            
        else if (month == 9 && year == 2018)
        {
            start = 5
            end = 35
            callForLoop()
            
        }
            
        else if (month == 10 && year == 2018)
        {
            start = 0
            end = 31
            callForLoop()
            
        }
            
        else if (month == 11 && year == 2018)
        {
            start = 3
            end = 33
            callForLoop()
            
        }
            
        else if (month == 12 && year == 2018)
        {
            start = 5
            end = 36
            callForLoop()
            
        }
            
        else if (month == 1 && year == 2019)
        {
            start = 1
            end = 32
            callForLoop()
            
        }
            
        else if (month == 2 && year == 2019)
        {
            start = 4
            end = 32
            callForLoop()
            
        }
            
        else if (month == 3 && year == 2019)
        {
            start = 4
            end = 35
            callForLoop()
            
        }
            
        else if (month == 4 && year == 2019)
        {
            start = 0
            end = 30
            callForLoop()
            
        }
            
        else if (month == 5 && year == 2019)
        {
            start = 2
            end = 33
            callForLoop()
            
        }
            
        else if (month == 6 && year == 2019)
        {
            start = 5
            end = 35
            callForLoop()
            
        }
            
        else if (month == 7 && year == 2019)
        {
            start = 0
            end = 31
            callForLoop()
            
        }
            
        else if (month == 8 && year == 2019)
        {
            start = 3
            end = 34
            callForLoop()
            
        }
            
        else if (month == 9 && year == 2019)
        {
            start = 6
            end = 36
            callForLoop()
            
        }
            
        else if (month == 10 && year == 2019)
        {
            start = 1
            end = 32
            callForLoop()
            
        }
            
        else if (month == 11 && year == 2019)
        {
            start = 4
            end = 34
            callForLoop()
            
        }
            
        else if (month == 12 && year == 2019)
        {
            start = 6
            end = 37
            callForLoop()
            
        }
            
        else if (month == 1 && year == 2020)
        {
            start = 2
            end = 33
            callForLoop()
            
        }
            
        else if (month == 2 && year == 2020)
        {
            start = 5
            end = 34
            callForLoop()
            
        }
            
        else if (month == 3 && year == 2020)
        {
            start = 6
            end = 37
            callForLoop()
            
        }
            
        else if (month == 4 && year == 2020)
        {
            start = 2
            end = 32
            callForLoop()
            
        }
            
        else if (month == 5 && year == 2020)
        {
            start = 4
            end = 35
            callForLoop()
            
        }
            
        else if (month == 6 && year == 2020)
        {
            start = 0
            end = 30
            callForLoop()
            
        }
            
        else if (month == 7 && year == 2020)
        {
            start = 2
            end = 33
            callForLoop()
        }
            
        else if (month == 8 && year == 2020)
        {
            start = 5
            end = 36
            callForLoop()
        }
            
        else if (month == 9 && year == 2020)
        {
            start = 1
            end = 31
            callForLoop()
        }
            
        else if (month == 10 && year == 2020)
        {
            start = 3
            end = 34
            callForLoop()
        }
            
        else if (month == 11 && year == 2020)
        {
            start = 6
            end = 36
            callForLoop()
        }
            
        else if (month == 12 && year == 2020)
        {
            start = 1
            end = 32
            callForLoop()
        }
        
        
        
        
    }
    
    
    
    
    func popUpViewFunction()
    {
        popUpView.frame.origin.y = -(popUpView.frame.size.height + popUpView.frame.size.height/4)
        popUpView.alpha = 1
        popUpView.layer.shadowColor = UIColor.gray.cgColor
        popUpView.layer.shadowOpacity = 0.5
        popUpView.layer.shadowOffset = CGSize.zero
        popUpView.layer.shadowRadius = 8
        self.view.bringSubview(toFront: blurView)
        self.view.bringSubview(toFront: sendBackPopUp)
        self.view.bringSubview(toFront: popUpView)
        UIView.animate(withDuration: 1.0) {
            self.blurView.alpha = 1
            self.popUpView.frame.origin = self.popUpOrigin
            
        }
        
        
        timeLabel.text = nil
        timeLabelDescription.text = nil
        labelEvent.text = nil
        labelEventDescription.text = nil
        triangleImageEvent.alpha = 0
        triangleImage.alpha = 0
    }
    
    
    
    
    @IBAction func btn1Action(_ sender: Any) {
        
        popUpViewFunction()
        
        pdate = Int(btn1.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        
        morningButtonAction(btn1)
        event1Action(btn1)
        
        hidelabel()
        
    }
    
    @IBAction func btn2Action(_ sender: Any) {
        
        
        popUpViewFunction()
        pdate = Int(btn2.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        
        morningButtonAction(btn2)
        event1Action(btn2)
        
        hidelabel()
        
        
    }
    
    @IBAction func btn3Action(_ sender: Any) {
        popUpViewFunction()
        pdate = Int(btn3.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        
        morningButtonAction(btn3)
        event1Action(btn3)
        
        hidelabel()
        
        
    }
    
    @IBAction func btn4Action(_ sender: Any) {
        popUpViewFunction()
        pdate = Int(btn4.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        
        morningButtonAction(btn4)
        event1Action(btn4)
        
        hidelabel()
        
        
    }
    
    @IBAction func btn5Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn5.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        
        morningButtonAction(btn5)
        event1Action(btn5)
        
        
        hidelabel()
        
    }
    
    @IBAction func btn6Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn6.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        
        morningButtonAction(btn6)
        event1Action(btn6)
        
        
        hidelabel()
        
    }
    
    @IBAction func btn7Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn7.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        
        morningButtonAction(btn7)
        event1Action(btn7)
        
        hidelabel()
        
        
    }
    
    @IBAction func btn8Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn8.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        
        morningButtonAction(btn8)
        event1Action(btn8)
        
        
        hidelabel()
        
        
    }
    
    @IBAction func btn9Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn9.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn9)
        event1Action(btn9)
        
        
        hidelabel()
        
    }
    
    @IBAction func btn10Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn10.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        
        morningButtonAction(btn10)
        event1Action(btn10)
        
        
        hidelabel()
        
    }
    
    @IBAction func btn11Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn11.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn11)
        event1Action(btn11)
        
        hidelabel()
        
        
    }
    
    @IBAction func btn12Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn12.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn12)
        event1Action(btn12)
        
        
        hidelabel()
        
    }
    
    @IBAction func btn13Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn13.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn13)
        event1Action(btn13)
        
        
        hidelabel()
        
    }
    
    @IBAction func btn14Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn14.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn14)
        event1Action(btn14)
        
        hidelabel()
        
        
    }
    
    @IBAction func btn15Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn15.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn15)
        event1Action(btn15)
        
        
        hidelabel()
        
    }
    
    @IBAction func btn16Action(_ sender: Any) {
        popUpViewFunction()
        pdate = Int(btn16.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn16)
        event1Action(btn16)
        
        
        hidelabel()
        
    }
    
    @IBAction func btn17Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn17.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn17)
        event1Action(btn17)
        
        hidelabel()
        
    }
    
    @IBAction func btn18Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn18.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn18)
        event1Action(btn18)
        
        hidelabel()
        
    }
    
    @IBAction func btn19Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn19.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn19)
        event1Action(btn19)
        
        hidelabel()
        
    }
    
    @IBAction func btn20Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn20.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn20)
        event1Action(btn20)
        
        hidelabel()
        
    }
    
    @IBAction func btn21Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn21.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn21)
        event1Action(btn21)
        
        hidelabel()
        
    }
    
    @IBAction func btn22Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn22.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn22)
        event1Action(btn22)
        
        hidelabel()
        
    }
    
    @IBAction func btn23Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn23.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn23)
        event1Action(btn23)
        
        hidelabel()
        
    }
    
    @IBAction func btn24Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn24.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn24)
        event1Action(btn24)
        
        hidelabel()
        
    }
    
    @IBAction func btn25Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn25.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn25)
        event1Action(btn25)
        
        hidelabel()
        
        
    }
    
    @IBAction func btn26Action(_ sender: Any) {
        popUpViewFunction()
        pdate = Int(btn26.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn26)
        event1Action(btn26)
        
        hidelabel()
        
        
    }
    
    @IBAction func btn27Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn27.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn27)
        event1Action(btn27)
        
        
        hidelabel()
        
    }
    
    @IBAction func btn28Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn28.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn28)
        event1Action(btn28)
        
        hidelabel()
    }
    
    @IBAction func btn29Action(_ sender: Any) {
        popUpViewFunction()
        pdate = Int(btn29.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn29)
        event1Action(btn29)
        
        hidelabel()
        
    }
    
    @IBAction func btn30Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn30.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn30)
        event1Action(btn30)
        
        hidelabel()
        
        
    }
    
    @IBAction func btn31Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn31.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn31)
        event1Action(btn31)
        
        
        hidelabel()
        
        
    }
    
    @IBAction func btn32Action(_ sender: Any) {
        popUpViewFunction()
        pdate = Int(btn32.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn32)
        event1Action(btn32)
        
        hidelabel()
        
        
    }
    
    @IBAction func btn33Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn33.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn33)
        event1Action(btn33)
        
        
        hidelabel()
        
    }
    
    @IBAction func btn34Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn34.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn34)
        event1Action(btn34)
        
        
        hidelabel()
        
        
    }
    
    @IBAction func btn35Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn35.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn35)
        event1Action(btn35)
        
        
        hidelabel()
        
    }
    
    @IBAction func btn36Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn36.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn36)
        event1Action(btn36)
        
        
        hidelabel()
        
        
    }
    
    @IBAction func btn37Action(_ sender: Any) {
        popUpViewFunction()
        
        pdate = Int(btn37.title(for: .normal)!)!
        pmonth = month!
        pyear = year!
        
        print("PopUpValues:      Date:\(pdate)     Month:\(pmonth)     Year:\(pyear)")
        morningButtonAction(btn37)
        event1Action(btn37)
        
        hidelabel()
        
        
    }
    
    
    
    
    
    @IBAction func sendBackPopUpAction(_ sender: Any) {
        
        
        popUpView.alpha = 0
        blurView.alpha = 0
        self.view.sendSubview(toBack: sendBackPopUp)
        self.view.sendSubview(toBack: blurView)
        self.view.sendSubview(toBack: popUpView)
        
    }
    
    
    
    @IBAction func sendBackAction(_ sender: Any) {
        
        self.view.sendSubview(toBack: self.btnSendBack)
        self.view.sendSubview(toBack: self.blurView)
        self.view.sendSubview(toBack: self.movingView)
        movingView.alpha = 0
        blurView.alpha = 0
    }
    
    
    
    @IBAction func gesture1Action(_ sender: Any) {
        self.movingView.center = self.btn1.center
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn1)
        }
        
        gdate = Int(btn1.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
        
        
    }
    
    @IBAction func gesture2Action(_ sender: Any) {
        self.movingView.center = self.btn2.center
        UIView.animate(withDuration: 1.0) {
            
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn2)
            
            
        }
        gdate = Int(btn2.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture3Action(_ sender: Any) {
        self.movingView.center = self.btn3.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn3)
            
        }
        gdate = Int(btn3.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture4Action(_ sender: Any) {
        self.movingView.center = self.btn4.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn4)
            
        }
        gdate = Int(btn4.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture5Action(_ sender: Any) {
        self.movingView.center = self.btn5.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn5)
            
        }
        gdate = Int(btn5.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture6Action(_ sender: Any) {
        self.movingView.center = self.btn6.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn6)
            
        }
        gdate = Int(btn6.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture7Action(_ sender: Any) {
        self.movingView.center = self.btn7.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn7)
            
        }
        gdate = Int(btn7.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture8Action(_ sender: Any) {
        self.movingView.center = self.btn8.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn8)
            
        }
        gdate = Int(btn8.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture9Action(_ sender: Any) {
        self.movingView.center = self.btn9.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn9)
            
        }
        gdate = Int(btn9.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture10Action(_ sender: Any) {
        self.movingView.center = self.btn10.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn10)
            
        }
        gdate = Int(btn10.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture11Action(_ sender: Any) {
        self.movingView.center = self.btn11.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn11)
            
        }
        gdate = Int(btn11.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture12Action(_ sender: Any) {
        self.movingView.center = self.btn12.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn12)
            
        }
        gdate = Int(btn12.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture13Action(_ sender: Any) {
        self.movingView.center = self.btn13.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn13)
            
        }
        gdate = Int(btn13.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture14Action(_ sender: Any) {
        self.movingView.center = self.btn14.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn14)
            
        }
        gdate = Int(btn14.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture15Action(_ sender: Any) {
        self.movingView.center = self.btn15.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn15)
            
        }
        gdate = Int(btn15.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture16Action(_ sender: Any) {
        self.movingView.center = self.btn16.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn16)
            
        }
        gdate = Int(btn16.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture17Action(_ sender: Any) {
        self.movingView.center = self.btn17.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn17)
            
        }
        gdate = Int(btn17.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture18Action(_ sender: Any) {
        self.movingView.center = self.btn18.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn18)
            
        }
        gdate = Int(btn18.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture19Action(_ sender: Any) {
        self.movingView.center = self.btn19.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn19)
            
        }
        gdate = Int(btn19.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture20Action(_ sender: Any) {
        self.movingView.center = self.btn20.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn20)
            
        }
        gdate = Int(btn20.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture21Action(_ sender: Any) {
        self.movingView.center = self.btn21.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn21)
            
        }
        gdate = Int(btn21.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture22Action(_ sender: Any) {
        self.movingView.center = self.btn22.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn22)
            
        }
        gdate = Int(btn22.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture23Action(_ sender: Any) {
        self.movingView.center = self.btn23.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn23)
            
        }
        gdate = Int(btn23.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
        
    }
    
    @IBAction func gesture24Action(_ sender: Any) {
        self.movingView.center = self.btn24.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn24)
            
        }
        gdate = Int(btn24.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture25Action(_ sender: Any) {
        self.movingView.center = self.btn25.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn25)
            
        }
        gdate = Int(btn25.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture26Action(_ sender: Any) {
        self.movingView.center = self.btn26.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn26)
            
        }
        gdate = Int(btn26.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture27Action(_ sender: Any) {
        self.movingView.center = self.btn27.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn27)
            
        }
        gdate = Int(btn27.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture28Action(_ sender: Any) {
        self.movingView.center = self.btn28.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn28)
            
        }
        gdate = Int(btn28.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture29Action(_ sender: Any) {
        self.movingView.center = self.btn29.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn29)
            
        }
        gdate = Int(btn29.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture30Action(_ sender: Any) {
        self.movingView.center = self.btn30.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn30)
            
        }
        gdate = Int(btn30.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture31Action(_ sender: Any) {
        self.movingView.center = self.btn31.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn31)
            
        }
        gdate = Int(btn31.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture32Action(_ sender: Any) {
        self.movingView.center = self.btn32.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn32)
            
        }
        gdate = Int(btn32.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture33Action(_ sender: Any) {
        self.movingView.center = self.btn33.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn33)
            
        }
        gdate = Int(btn33.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture34Action(_ sender: Any) {
        self.movingView.center = self.btn34.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn34)
            
        }
        gdate = Int(btn34.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture35Action(_ sender: Any) {
        self.movingView.center = self.btn35.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn35)
            
        }
        gdate = Int(btn35.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture36Action(_ sender: Any) {
        self.movingView.center = self.btn36.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn36)
            
        }
        gdate = Int(btn36.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    @IBAction func gesture37Action(_ sender: Any) {
        self.movingView.center = self.btn37.center
        
        UIView.animate(withDuration: 1.0) {
            self.view.bringSubview(toFront: self.blurView)
            self.movingView.alpha = 1
            self.blurView.alpha = 1
            self.view.bringSubview(toFront: self.btnSendBack)
            self.view.bringSubview(toFront: self.movingView)
            self.view.bringSubview(toFront: self.btn37)
            
        }
        gdate = Int(btn37.title(for: .normal)!)!
        gyear = year!
        gmonth = month!
        print("GestureValues     Date:\(gdate)     Month:\(gmonth)     Year:\(gyear)")
        
    }
    
    
    
    @IBAction func btnNext(_ sender: Any) {
        test += 1
        
        
        
        if (month! == 12)
        {
            year! += 1
            yearNamingFunc()
            month! = 1
            monthNamingFunc()
            finalmonth()
        }
            
        else
        {
            month! += 1
            monthNamingFunc()
            yearNamingFunc()
            finalmonth()
        }
        
        if (month == 12 && year == 2020)
        {
            btnNext.alpha = 0
            btnNext.isEnabled = false
        }
            
        else
        {
            btnNext.alpha = 1
            btnNext.isEnabled = true
            btnBack.alpha = 1
            btnBack.isEnabled = true
        }
        
        
        
        
    }
    
    
    
    
    @IBAction func btnBack(_ sender: Any) {
        
        test -= 1
        
        
        if (month == 1)
        {
            year! -= 1
            yearNamingFunc()
            month = 12
            monthNamingFunc()
            finalmonth()
        }
            
        else
        {
            month! -= 1
            monthNamingFunc()
            yearNamingFunc()
            finalmonth()
        }
        
        if (month == 1 && year == 2018)
        {
            btnBack.isEnabled = false
            btnBack.alpha = 0
        }
            
        else
        {
            btnBack.isEnabled = true
            btnBack.alpha = 1
            btnNext.alpha = 1
            btnNext.isEnabled = true
        }
        
        
        
        
        
    }
    
    
    
    @IBAction func morningButtonAction(_ sender: Any) {
        
        triangleImage.alpha = 1
        
        UIView.animate(withDuration: 1.0) {
            self.triangleImage.center.x = self.morningButton.center.x
            
            
            guard let url = URL(string: "http://10.1.1.32/edumva/Register.php?method=calendergetfood&tablename=food&condition=(date=\(self.pdate))and(month=\(self.pmonth))and(year=\(self.pyear))")
                
                else { return }
            
            let session = URLSession.shared
            session.dataTask(with: url) { (data, response, error) in
                
                if let data = data {
                    do {
                        
                        let json = try JSONSerialization.jsonObject(with: data, options: [])
                        
                        struct outp: Decodable {
                            let resultfield1 : URL
                            let resultfield5 : URL
                            
                            
                            enum CodingKeys : String, CodingKey {
                                case resultfield1 = "resultfield1"
                                case resultfield5 = "resultfield5"
                                
                            }
                        }
                        
                        guard let output = try? JSONDecoder().decode(outp.self, from: data) else {
                            print("Error: Couldn't decode data into Blog")
                            return
                        }
                        
                        print("resultfield1: \(output.resultfield1)")
                        print("resultfield5: \(output.resultfield5)")
                        
                        DispatchQueue.main.async
                            {
                                self.timeLabel.text = "\(output.resultfield1)"
                                
                                let aString = "\(output.resultfield5)"
                                let newString = aString.replacingOccurrences(of: "_", with: " ")
                                let newString2 = newString.replacingOccurrences(of: "/n", with: "\n")
                                print(newString2);
                                self.timeLabelDescription.text = "\(newString2)"
                        }
                        
                    } catch {
                        print(error)
                        
                    }
                    
                }
                }.resume()
            
        }
    }
    
    @IBAction func afternoonButtonAction(_ sender: Any) {
        triangleImage.alpha = 1
        
        UIView.animate(withDuration: 1.0) {
            self.triangleImage.center.x = self.afternoonButton.center.x
            
            guard let url = URL(string: "http://10.1.1.32/edumva/Register.php?method=calendergetfood&tablename=food&condition=(date=\(self.pdate))and(month=\(self.pmonth))and(year=\(self.pyear))")
                
                else { return }
            
            let session = URLSession.shared
            session.dataTask(with: url) { (data, response, error) in
                
                if let data = data {
                    do {
                        
                        let json = try JSONSerialization.jsonObject(with: data, options: [])
                        
                        struct outp: Decodable {
                            let resultfield2 : URL
                            let resultfield6 : URL
                            
                            enum CodingKeys : String, CodingKey {
                                case resultfield2 = "resultfield2"
                                case resultfield6 = "resultfield6"
                                
                            }
                        }
                        
                        guard let output = try? JSONDecoder().decode(outp.self, from: data) else {
                            print("Error: Couldn't decode data into Blog")
                            return
                        }
                        
                        print("resultfield2: \(output.resultfield2)")
                        print("resultfield6: \(output.resultfield6)")
                        
                        DispatchQueue.main.async
                            {
                                self.timeLabel.text = "\(output.resultfield2)"
                                let aString = "\(output.resultfield6)"
                                let newString = aString.replacingOccurrences(of: "_", with: " ")
                                let newString2 = newString.replacingOccurrences(of: "/n", with: "\n")
                                print(newString2);
                                self.timeLabelDescription.text = "\(newString2)"
                        }
                        
                        
                    } catch {
                        print(error)
                        
                    }
                    
                }
                }.resume()
            
        }
    }
    
    @IBAction func eveningButtonAction(_ sender: Any) {
        triangleImage.alpha = 1
        
        
        UIView.animate(withDuration: 1.0) {
            self.triangleImage.center.x = self.eveningButton.center.x
            
            guard let url = URL(string: "http://10.1.1.32/edumva/Register.php?method=calendergetfood&tablename=food&condition=(date=\(self.pdate))and(month=\(self.pmonth))and(year=\(self.pyear))")
                
                else { return }
            
            let session = URLSession.shared
            session.dataTask(with: url) { (data, response, error) in
                
                if let data = data {
                    do {
                        
                        let json = try JSONSerialization.jsonObject(with: data, options: [])
                        
                        struct outp: Decodable {
                            let resultfield3 : URL
                            let resultfield7 : URL
                            
                            enum CodingKeys : String, CodingKey {
                                case resultfield3 = "resultfield3"
                                case resultfield7 = "resultfield7"
                                
                            }
                        }
                        
                        guard let output = try? JSONDecoder().decode(outp.self, from: data) else {
                            print("Error: Couldn't decode data into Blog")
                            return
                        }
                        
                        print("resultfield3: \(output.resultfield3)")
                        print("resultfield7: \(output.resultfield7)")
                        
                        DispatchQueue.main.async
                            {
                                self.timeLabel.text = "\(output.resultfield3)"
                                let aString = "\(output.resultfield7)"
                                let newString = aString.replacingOccurrences(of: "_", with: " ")
                                let newString2 = newString.replacingOccurrences(of: "/n", with: "\n")
                                print(newString2);
                                self.timeLabelDescription.text = "\(newString2)"
                        }
                        
                    } catch {
                        print(error)
                        
                    }
                    
                }
                }.resume()
            
        }
        
    }
    
    @IBAction func nightButtonAction(_ sender: Any) {
        triangleImage.alpha = 1
        
        UIView.animate(withDuration: 1.0) {
            self.triangleImage.center.x = self.nightButton.center.x
            
            guard let url = URL(string: "http://10.1.1.32/edumva/Register.php?method=calendergetfood&tablename=food&condition=(date=\(self.pdate))and(month=\(self.pmonth))and(year=\(self.pyear))")
                
                else { return }
            
            let session = URLSession.shared
            session.dataTask(with: url) { (data, response, error) in
                
                if let data = data {
                    do {
                        
                        let json = try JSONSerialization.jsonObject(with: data, options: [])
                        
                        struct outp: Decodable {
                            let resultfield4 : URL
                            let resultfield8 : URL
                            
                            enum CodingKeys : String, CodingKey {
                                case resultfield4 = "resultfield4"
                                case resultfield8 = "resultfield8"
                                
                            }
                        }
                        
                        guard let output = try? JSONDecoder().decode(outp.self, from: data) else {
                            print("Error: Couldn't decode data into Blog")
                            return
                        }
                        
                        print("resultfield4: \(output.resultfield4)")
                        print("resultfield8: \(output.resultfield8)")
                        
                        DispatchQueue.main.async
                            {
                                self.timeLabel.text = "\(output.resultfield4)"
                                let aString = "\(output.resultfield8)"
                                let newString = aString.replacingOccurrences(of: "_", with: " ")
                                let newString2 = newString.replacingOccurrences(of: "/n", with: "\n")
                                print(newString2);
                                self.timeLabelDescription.text = "\(newString2)"
                        }
                        
                    } catch {
                        print(error)
                        
                    }
                    
                    
                }
                }.resume()
            
        }
    }
    
    
    
    @IBAction func event1Action(_ sender: Any) {
        triangleImageEvent.alpha = 1
        labelEvent.text = "Event 1"
        UIView.animate(withDuration: 1.0) {
            self.triangleImageEvent.center.x = self.event1.center.x
            
            guard let url = URL(string: "http://10.1.1.32/edumva/Register.php?method=calendergetfood&tablename=food&condition=(date=\(self.pdate))and(month=\(self.pmonth))and(year=\(self.pyear))")
                
                else { return }
            
            let session = URLSession.shared
            session.dataTask(with: url) { (data, response, error) in
                
                if let data = data {
                    do {
                        
                        let json = try JSONSerialization.jsonObject(with: data, options: [])
                        
                        struct outp: Decodable {
                            let resultfield9 : URL
                            
                            enum CodingKeys : String, CodingKey {
                                case resultfield9 = "resultfield9"
                                
                            }
                        }
                        
                        guard let output = try? JSONDecoder().decode(outp.self, from: data) else {
                            print("Error: Couldn't decode data into Blog")
                            return
                        }
                        
                        print("resultfield9: \(output.resultfield9)")
                        
                        DispatchQueue.main.async
                            {
                                
                                let aString = "\(output.resultfield9)"
                                let newString = aString.replacingOccurrences(of: "_", with: " ")
                                let newString2 = newString.replacingOccurrences(of: "/n", with: "\n")
                                print(newString2);
                                self.labelEventDescription.text = "\(newString2)"
                        }
                        
                    } catch {
                        print(error)
                        
                    }
                    
                    
                }
                }.resume()
            
            
            
        }
    }
    
    @IBAction func event2Action(_ sender: Any) {
        triangleImageEvent.alpha = 1
        
        labelEvent.text = "Event 2"
        UIView.animate(withDuration: 1.0) {
            self.triangleImageEvent.center.x = self.event2.center.x
            
            
            guard let url = URL(string: "http://10.1.1.32/edumva/Register.php?method=calendergetfood&tablename=food&condition=(date=\(self.pdate))and(month=\(self.pmonth))and(year=\(self.pyear))")
                
                else { return }
            
            
            let session = URLSession.shared
            session.dataTask(with: url) { (data, response, error) in
                
                if let data = data {
                    do {
                        
                        let json = try JSONSerialization.jsonObject(with: data, options: [])
                        
                        struct outp: Decodable {
                            let resultfield10 : URL
                            
                            enum CodingKeys : String, CodingKey {
                                case resultfield10 = "resultfield10"
                                
                            }
                        }
                        
                        guard let output = try? JSONDecoder().decode(outp.self, from: data) else {
                            print("Error: Couldn't decode data into Blog")
                            return
                        }
                        
                        print("resultfield10: \(output.resultfield10)")
                        
                        DispatchQueue.main.async
                            {
                                
                                let aString = "\(output.resultfield10)"
                                let newString = aString.replacingOccurrences(of: "_", with: " ")
                                let newString2 = newString.replacingOccurrences(of: "/n", with: "\n")
                                print(newString2);
                                self.labelEventDescription.text = "\(newString2)"
                        }
                        
                    } catch {
                        print(error)
                        
                    }
                    
                }
                }.resume()
        }
    }
    
    @IBAction func event3Action(_ sender: Any) {
        triangleImageEvent.alpha = 1
        
        labelEvent.text = "Event 3"
        
        UIView.animate(withDuration: 1.0) {
            self.triangleImageEvent.center.x = self.event3.center.x
            
            
            guard let url = URL(string: "http://10.1.1.32/edumva/Register.php?method=calendergetfood&tablename=food&condition=(date=\(self.pdate))and(month=\(self.pmonth))and(year=\(self.pyear))")
                
                else { return }
            
            let session = URLSession.shared
            session.dataTask(with: url) { (data, response, error) in
                
                if let data = data {
                    do {
                        
                        let json = try JSONSerialization.jsonObject(with: data, options: [])
                        
                        struct outp: Decodable {
                            let resultfield11 : URL
                            
                            enum CodingKeys : String, CodingKey {
                                case resultfield11 = "resultfield11"
                                
                            }
                        }
                        
                        guard let output = try? JSONDecoder().decode(outp.self, from: data) else {
                            print("Error: Couldn't decode data into Blog")
                            return
                        }
                        
                        print("resultfield11: \(output.resultfield11)")
                        
                        DispatchQueue.main.async
                            {
                                
                                let aString = "\(output.resultfield11)"
                                let newString = aString.replacingOccurrences(of: "_", with: " ")
                                let newString2 = newString.replacingOccurrences(of: "/n", with: "\n")
                                print(newString2);
                                self.labelEventDescription.text = "\(newString2)"
                                
                        }
                        
                    } catch {
                        print(error)
                        
                    }
                    
                }
                }.resume()
        }
    }
    
    @IBAction func event4Action(_ sender: Any) {
        triangleImageEvent.alpha = 1
        
        labelEvent.text = "Event 4"
        UIView.animate(withDuration: 1.0) {
            self.triangleImageEvent.center.x = self.event4.center.x
            
            
            guard let url = URL(string: "http://10.1.1.32/edumva/Register.php?method=calendergetfood&tablename=food&condition=(date=\(self.pdate))and(month=\(self.pmonth))and(year=\(self.pyear))")
                
                
                else { return }
            
            let session = URLSession.shared
            session.dataTask(with: url) { (data, response, error) in
                
                if let data = data {
                    do {
                        
                        let json = try JSONSerialization.jsonObject(with: data, options: [])
                        
                        struct outp: Decodable {
                            let resultfield12 : URL
                            
                            enum CodingKeys : String, CodingKey {
                                case resultfield12 = "resultfield12"
                                
                            }
                        }
                        
                        guard let output = try? JSONDecoder().decode(outp.self, from: data) else {
                            print("Error: Couldn't decode data into Blog")
                            return
                        }
                        
                        print("resultfield12: \(output.resultfield12)")
                        
                        
                        DispatchQueue.main.async
                            {
                                
                                let aString = "\(output.resultfield12)"
                                let newString = aString.replacingOccurrences(of: "_", with: " ")
                                let newString2 = newString.replacingOccurrences(of: "/n", with: "\n")
                                print(newString2);
                                self.labelEventDescription.text = "\(newString2)"
                        }
                        
                    } catch {
                        print(error)
                        
                    }
                    
                }
                }.resume()
        }
    }
    
    @IBAction func event5(_ sender: Any) {
        triangleImageEvent.alpha = 1
        
        labelEvent.text = "Event 5"
        UIView.animate(withDuration: 1.0) {
            self.triangleImageEvent.center.x = self.event5.center.x
            
            guard let url = URL(string: "http://10.1.1.32/edumva/Register.php?method=calendergetfood&tablename=food&condition=(date=\(self.pdate))and(month=\(self.pmonth))and(year=\(self.pyear))")
                
                else { return }
            
            let session = URLSession.shared
            session.dataTask(with: url) { (data, response, error) in
                
                if let data = data {
                    do {
                        
                        let json = try JSONSerialization.jsonObject(with: data, options: [])
                        
                        struct outp: Decodable {
                            let resultfield13 : URL
                            
                            enum CodingKeys : String, CodingKey {
                                case resultfield13 = "resultfield13"
                                
                            }
                        }
                        
                        guard let output = try? JSONDecoder().decode(outp.self, from: data) else {
                            print("Error: Couldn't decode data into Blog")
                            return
                        }
                        
                        print("resultfield13: \(output.resultfield13)")
                        
                        DispatchQueue.main.async
                            {
                                
                                let aString = "\(output.resultfield13)"
                                let newString = aString.replacingOccurrences(of: "_", with: " ")
                                let newString2 = newString.replacingOccurrences(of: "/n", with: "\n")
                                print(newString2);
                                self.labelEventDescription.text = "\(newString2)"
                        }
                        
                    } catch {
                        print(error)
                        
                    }
                    
                }
                }.resume()
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    func hidelabel()
    {
        guard let url = URL(string: "http://10.1.1.32/edumva/Register.php?method=calendergetfood&tablename=food&condition=(date=\(self.pdate))and(month=\(self.pmonth))and(year=\(self.pyear))")
            
            else { return }
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            
            if let data = data {
                do {
                    
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    
                    struct outp: Decodable {
                        let resultfield9 : URL
                        let resultfield10 : URL
                        let resultfield11 : URL
                        let resultfield12 : URL
                        let resultfield13 : URL
                        
                        enum CodingKeys : String, CodingKey {
                            case resultfield9 = "resultfield9"
                            case resultfield10 = "resultfield10"
                            case resultfield11 = "resultfield11"
                            case resultfield12 = "resultfield12"
                            case resultfield13 = "resultfield13"
                            
                        }
                    }
                    
                    guard let output = try? JSONDecoder().decode(outp.self, from: data) else {
                        print("Error: Couldn't decode data into Blog")
                        return
                    }
                    
                    DispatchQueue.main.async
                        {
                            if "\(output.resultfield9)" == "no_record_found!!!"
                            {
                                self.event1.alpha = 0
                                self.labelEvent.alpha = 0
                                self.labelEventDescription.alpha = 0
                                self.triangleImageEvent.alpha = 0
                                self.eventLine.backgroundColor = UIColor.clear
                                self.noevents.text = "No Event "
                            }
                            else
                            {
                                self.event1.alpha = 1
                                self.labelEvent.alpha = 1
                                self.labelEventDescription.alpha = 1
                                self.triangleImageEvent.alpha = 1
                                self.noevents.text = nil
                                self.eventLine.backgroundColor = UIColor(red:0.17, green:0.34, blue:0.55, alpha:1.0)
                            }
                            if "\(output.resultfield10)" == "no_record_found!!!"
                            {
                                self.event2.alpha = 0
                                
                            }
                            else
                            {
                                self.event2.alpha = 1
                                self.noevents.text = nil
                                
                                self.eventLine.backgroundColor = UIColor(red:0.17, green:0.34, blue:0.55, alpha:1.0)
                                
                            }
                            if "\(output.resultfield11)" == "no_record_found!!!"
                            {
                                self.event3.alpha = 0
                                
                            }
                            else
                            {
                                self.event3.alpha = 1
                                self.noevents.text = nil
                                self.eventLine.backgroundColor = UIColor(red:0.17, green:0.34, blue:0.55, alpha:1.0)
                                
                                
                            }
                            if "\(output.resultfield12)" == "no_record_found!!!"
                            {
                                self.event4.alpha = 0
                                
                            }
                            else
                            {
                                self.event4.alpha = 1
                                self.noevents.text = nil
                                self.eventLine.backgroundColor = UIColor(red:0.17, green:0.34, blue:0.55, alpha:1.0)
                                
                                
                            }
                            if "\(output.resultfield13)" == "no_record_found!!!"
                            {
                                self.event5.alpha = 0
                                
                            }
                            else
                            {
                                self.event5.alpha = 1
                                self.noevents.text = nil
                                self.eventLine.backgroundColor = UIColor(red:0.17, green:0.34, blue:0.55, alpha:1.0)
                                
                                
                            }
                    }
                    
                } catch {
                    print(error)
                    
                }
                
            }
            }.resume()
    }
    
    
    
    
    
    
}
