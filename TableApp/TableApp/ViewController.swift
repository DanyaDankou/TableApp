//
//  ViewController.swift
//  TableApp
//
//  Created by comp on 5.12.22.
//

import UIKit

class ViewController: UIViewController {
    
    var info: DataSource?
    
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var email: UILabel!
    
    let personInfo = PersonInfo.init(email: randomFirstName, phoneNumber: randomSecondName)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumber.text = "Phone number: \(personInfo.phoneNumber)"
    }
}


   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


