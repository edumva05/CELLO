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
    @IBOutlet weak var exit: UIButton!
    
    var originSau1 = CGPoint()
    var originTau1 = CGPoint()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        originSau1 = Sau1.frame.origin
        originTau1 = Tau1.frame.origin
        
        
        
        
        self.Tau1.layer.cornerRadius = 7
        
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
        
        self.Tau1.text = "Swami Vivekananda said,”No nation can become or achieve prosperity without its people developing a sense of self discipline, social responsibilities and cooperative work attitude.” I’m glad that Macro Vision Academy, Burhanpur is working religiously in the field of over all development of a child in true sense.\n Dear Parents, our children live our dreams and every parent’s wishes to give best education to his child. Education is not just a process of giving knowledge for future job but to prepare the child to move independently and boldly. Education from school to university should lead to the highest level of wisdon if the objective of education is to fulfillment. I feel proud to say that Macro Vision Academy is preparing the students of the future by organizing various activities for the students. It’s the activities of the Academy only that its students cleared the NDA exam in one attempt and were able to face the SSB confidently. For me, Education does not mean giving bookish knowledge but to prepare a curious students -a curious student can only do wonders. If an institute is able to make its students understand the meaning of three questions than its work is over. The three questions are: \n \n 1. What: form, responsibilities, perspective (point of view)\n 2. Why: reasoning\n3. How: functioning, change, reflection, connection to life, activity, work.\n Today in the world of cut throat competition the biggest question which comes in front of parents and students is to select the institute which can prepare the child for competitive as well as board exams and develop the overall personality and it is very difficult to get every thing at one place. As a student I was not able to get what I wished due to some personal reasons and that only prompted me to start such an institute where a parent can get what they wish for their child.\nMacro Vision Academy, Burhanpur has been established with sole motto of developing brain; learn to cooperative work, exposure to lead from the front and to learn to prosper through conductive environment. \n The future of the Academy is very bright, besides regular schooling, the Academy is preparing its students for various competitive exams like IIT-JEE, AIEEE, BITS, SCRA, NTSE, AIIMS, CPMT, NDA and many more. The vision mantra is “effort, effort and effort that much effort that even if you wish to do wrong you will not be”our program and activities are guided by our mission and vision. My aim is not to be an administrator or to earn money but to be a true friend, guide, motivator, parent and above all to be a good human being and to inculcate the same in my children i.e students.\n It is my sincere invitation to all parents to visit the Academy and see what we are doing for overall development of the child. Your valuable suggestions are always welcomed for taking the Academy and the child to zenith \n \n Hope to see you in Academy.\n \n With Regards \n \n Mr. Anand Prakash Chouksey \n M.Sc Mathematics (Gold Medalist) "
        
        
        
        
        self.Sau1.image = #imageLiteral(resourceName: "IMG-20180920-WA0016")
        
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
        
        self.Tau1.text = "A NOTE FROM PRINCIPAL…………………….\n Dear Prospective Parents,\n Welcome to Macro Vision Academy, Burhanpur for pupils who wish to excel in Academics and thank you for taking out the time to go through this web site and believes that you will find it informative and will give you a feel for the Academy which in turn enable you to make a decision in respect of your ward. \n MVA is an established educational institution known for the standard of care it affords its pupils and the quality of its teaching and learning. My Academy provides to all pupils the following facilities: \n A caring environment.\n1. Own designed curriculum covering NCERT & Competitive syllabus.\n 2. Excellent Board & Competitive results.\n 3. Excellent team of educators.\n 4.Modern instructional methods using audio visual and multi-media facilities.\n 5.Enrichment workshops.\n 6.Remedial teaching for below average students.\n 6. Fully equipped computer & Science labs.\n 7. Separate Boys & Girls Hostel..\n 7.WiFi campus.\n 8. Fantastic Swad Sansad(Mess) and many more…………… \n I am proud to say that all the members’ management, Teaching and Non –Teaching associated with MVA are strongly committed to the needs and entitlement of the individual child. The whole curriculum and the activities are designed in such a way that it enable our pupils to progress and develop to their maximum potential. We are very much ambitious for our pupils and each and every step of the Academy leads to the benefit of the pupils. We believe in creating positive environment, community welfare and above all Team Work. This team work results in the children receiving the best education possible and a happy school life here at Macro Vision Academy. \n Any information referred to on this official web site may be viewed by contacting the school office. A range of information about general and current topics is regularly updated on this website. \n We very much looking forward to meeting you, and trust that your association with the Academy will be long, happy and rewarding. \n Yours sincerely, \n Jasvir Singh Parmar \n Principal"
        
        self.Sau1.image = #imageLiteral(resourceName: "prin")
        
        
        
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
        
        
        self.Tau1.text = "\n Dear Students & Parents,\n \n Let me take the opportunity to introduce Macro Vision Academy, Burhanpur, a pioneer educational institute which is run by Anand Educational,Technical & Vocational Society which came to exist on 02nd February 1998. The members of the governing body of the society are from the field of education and are preparing the students for various competitive exams like PET, PMT etc. through Sonu Coaching (1991) it was observed that a student is giving separate time & money for school & coaching, why not there should be a system of giving both facility at one place, which will save both time & money. This pious thought gave a birth to Anand Educational,Technical & Vocational Society, Burhanpur and this society gave birth to New vision Higher Secondary School, Burhanpur affiliated to M.P.Board & Macro Vision Academy, Burhanpur affiliated to C.B.S.E. New Delhi.\nMacro Vision Academy, Burhanpur (2002-2003) is affiliated to C.B.S.E. New Delhi, and is running the classes from I to XII. It is a Co-Ed day cum residential school. The school is constructed in the 68 acre of land area at the out skirt of historical city Burhanpur  \n Macro Vision Academy, Burhanpur (2002-2003) is affiliated to C.B.S.E. New Delhi, and is running the classes from I to XII. It is a Co-Ed day cum residential school. The school is constructed in the 68 acre of land area at the out skirt of historical city Burhanpur \n Macro Vision Academy, Burhanpur has been established with a sole motto of developing brain; learn to cooperative work, exposure to lead from the front and to learn to prosper through conducive environment. \n The motto of MVA is: \n \n Parishram Parishram Parishram Aur Itna Parishram Ki Chah Kar Bhi Aap Galat Na Kar Payein \n \n Our program and activities are guided by our vision and mission. Our aim not to be an administrator but to be a true friend, guide, motivator and parent. \n We encourage new and prospective parents to make an appointment to visit our school for a school tour. \n With regards \n Vision Family"
        
        
        self.Sau1.image = #imageLiteral(resourceName: "AU")
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
        
        self.Tau1.text = "ejhbuigubvuewhnuqvhuhhgygfeawkjed5rftvygbhfrdsgx vygb 4ywegursdfhjvx zgyubhjwefsd"
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
        self.Tau1.text = "wkjehgdfuydkabnvjkbv hrbuwvnsk vrfinghn fd"
    }
    
    
    
    @IBAction func exitSV(_ sender: Any) {
        
        self.Sau1.frame.origin = self.originSau1
        self.Tau1.frame.origin = self.originTau1
        
        UIView.animate(withDuration: 0.7) {
            self.Sau1.frame.origin.y -= CGFloat(self.originSau1.y - self.Sau1.frame.width/2)
            self.Tau1.frame.origin.y -= CGFloat(self.originTau1.y - self.Tau1.frame.width/2)
            
            self.aublu.alpha = 0
            self.Sau1.alpha = 0
            self.Tau1.alpha = 0
            
            
            
            
        }
        
        
        
    }

}
