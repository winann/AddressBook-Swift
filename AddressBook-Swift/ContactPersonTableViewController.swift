//
//  ContactPersonTableViewController.swift
//  AddressBook-Swift
//
//  Created by lanou3g on 14-9-3.
//  Copyright (c) 2014年 winann.blog.51cto.com Winann. All rights reserved.
//

import UIKit

class ContactPersonTableViewController: UITableViewController {

    var contactPersons = [ContactPerson]()          // 定义一个数组，用来存放联系人，ContactPerson是类名，不是文件名（不用import，默认创建的类是公有的）
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    @IBAction func addOnePerson(sender: AnyObject) {
        var contactPerson = ContactPerson()
        contactPerson.name = "张三"
        contactPerson.sex = "男"
        contactPerson.phoneNumber = "1234567"
        contactPerson.address = "北京市海淀区清河"
        contactPerson.content = "北京市神马都是浮云集团"
        contactPerson.photoImage = UIImage(named: "qr_tabbar_mine_hl@2x")
        
        contactPersons.append(contactPerson)
        self.tableView.reloadData()
//        self.tableView.insertRowsAtIndexPaths(<#indexPaths: [AnyObject]!#>, withRowAnimation: <#UITableViewRowAnimation#>)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return contactPersons.count
    }

    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cell = tableView.dequeueReusableCellWithIdentifier("ContactPerson", forIndexPath: indexPath) as ContactPersonTableViewCell
        
        // 当确定对象的具体类型的时候，使用“as 类型名称”
        var contactPerson = contactPersons[indexPath.row]
        cell.nameLabel.text = contactPerson.name
        cell.phoneNumberLabel.text = contactPerson.phoneNumber
        cell.photoImageView.image = contactPerson.photoImage

        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView!, canEditRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView!, moveRowAtIndexPath fromIndexPath: NSIndexPath!, toIndexPath: NSIndexPath!) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView!, canMoveRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        
        var detailVC = segue.destinationViewController as DetailInfoViewController
        var cell: ContactPersonTableViewCell = sender as ContactPersonTableViewCell
        
        var indexPath = self.tableView.indexPathForCell(cell)
        var row = indexPath.row
        detailVC.contactPerson = self.contactPersons[row]
    }
    

}
