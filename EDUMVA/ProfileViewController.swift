//
//  ProfileViewController.swift
//  EDUMVA
//
//  Created by EDUMVA4 on 22/09/18.
//

import UIKit
import CoreData

 var TransferImage : UIImage!
class ProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var FathersName: UILabel!
    @IBOutlet weak var PhoneNumber: UILabel!
    @IBOutlet weak var MothersName: UILabel!
    @IBOutlet weak var Dob: UILabel!
    @IBOutlet weak var Email: UILabel!
    @IBOutlet weak var Address: UILabel!
    @IBOutlet weak var MyName: UILabel!
    @IBOutlet weak var email2: UILabel!
    @IBOutlet weak var Class: UILabel!
    
    
    
    
    var imagePicker = UIImagePickerController()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 10.0, *) {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "Users", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            
            
            profileImage.layer.cornerRadius = (profileImage.frame.size.width/2)
            profileImage.clipsToBounds = true
            
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
                    if((coreid == nil) || (corename == nil) || (coreuser == nil) || (coreclass == nil) || (corefname == nil) || (coremname == nil) || (coredob == nil) || (corephno == nil) || (coreemail == nil) || (coreaddress == nil)){
                        
                    }else{
                        MyName.text = corename as? String
                        FathersName.text = corefname as? String
                        MothersName.text = coremname as? String
                        PhoneNumber.text = corephno as? String
                        Dob.text = coredob as? String
                        email2.text = coreemail as? String
                        Email.text = coreemail as? String
                        Address.text = coreaddress as? String
                        Class.text = coreclass as? String
                        
                        
                        
                    }
                }
                
            } catch {
                
                //nslog("Failed")
            }
        }else {
            // Fallback on earlier versions
        }
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        let userDefaults = UserDefaults.standard
        let imageData = userDefaults.object(forKey: "Picture") as? NSData
        if let imageData = imageData {
            let picture = UIImage(data: imageData as Data)
            profileImage.image = picture
          //  profileImage.layer.cornerRadius = profileImage.bounds.size.width/2
          //  profileImage.clipsToBounds = true
            TransferImage = picture
            
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        imagePicker.dismiss(animated: true, completion: nil)
        profileImage.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        
        
        let userDefaults = UserDefaults.standard
        if let pickImage = profileImage.image {
            let imageData = UIImagePNGRepresentation(pickImage)
            userDefaults.set(imageData, forKey: "Picture") }
        
        
    }
    
    @IBAction func changeImageButton(_ sender: Any) {
        imagePicker =  UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
}
