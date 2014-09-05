//
//  DetailInfoViewController.swift
//  AddressBook-Swift
//
//  Created by lanou3g on 14-9-3.
//  Copyright (c) 2014年 winann.blog.51cto.com Winann. All rights reserved.
//

import UIKit

class DetailInfoViewController: UIViewController {

    
    var contactPerson = ContactPerson()             // 声明一个实例，用来接收传递过来的联系人信息
    @IBOutlet var photoImageView: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var sexLabel: UILabel!
    
    @IBOutlet var phoneNumberLabel: UILabel!
    
    @IBOutlet var addressLabel: UILabel!
    
    @IBOutlet var contentTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.photoImageView.image = contactPerson.photoImage
        self.nameLabel.text = contactPerson.name
        self.sexLabel.text = contactPerson.sex
        self.phoneNumberLabel.text = contactPerson.phoneNumber
        self.addressLabel.text = contactPerson.address
        self.contentTextView.text = contactPerson.content
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
