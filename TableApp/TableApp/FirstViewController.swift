//
//  FirstViewController.swift
//  TableApp
//
//  Created by comp on 5.12.22.
//

import UIKit

class FirstViewController: UIViewController {
    
    let arrayFirstName = ["Dan", "Bob", "Pitter", "Symon", "Alfred", "Kate", "Maria", "Valeria", "George", "Alex"]
    let arraySecondName = ["Krivikov", "Dankou", "Petrov", "Moroz", "Peterson", "Mcgreggor", "Mcdavid", "Fury", "Lopes", "Jenner"]
    
    @IBOutlet weak var tablePersonList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tablePersonList.dataSource = self
    }
    
    // MARK: - Navigation

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let indexPath = tablePersonList.indexPathForSelectedRow,
//       let destVC = segue.destination as? ViewController {
//            destVC.info = DataSource.personList[indexPath.row]
//        }
//    }
}

extension FirstViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        DataSource.personList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        _ = DataSource.personList[indexPath.row]
        let str = "\(arrayFirstName.randomElement()!)  \(arraySecondName.randomElement()!)"
        cell.textLabel?.text = str
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            DataSource.personList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
    }
    }
}

//extension FirstViewController: UITableViewDelegate {
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let indexPath = tableView.indexPathForSelectedRow,
//           let destVC = segue.destination as? V {
//            destVC.track = DataSource.trackList[indexPath.row]
//        }
//    }
//}
//}
    

    


