//
//  SecondViewController.swift
//  TableApp
//
//  Created by comp on 5.12.22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var infoTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoTable.dataSource = self
    }
}
    
extension SecondViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        DataSource.personList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        _ = DataSource.personList[indexPath.row]
        let str = "\(arrayFirstName.randomElement()!)  \(arraySecondName.randomElement()!)"
        let subtitles = "Phone number: +375297878223, Email: dasdadas@mail.com"
        myCell.textLabel?.text = str
        myCell.detailTextLabel?.text = subtitles
        return myCell
    }
    }
    
  

