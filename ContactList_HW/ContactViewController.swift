//
//  ContactViewController.swift
//  ContactList_HW
//
//  Created by Dmitry Parhomenko on 14.12.2023.
//

import UIKit

final class ContactViewController: UITableViewController {

    let dataStores = getArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 60
    }
        
        //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let PersonListVC = segue.destination as? PersonsListViewController
        PersonListVC?.dataStores = dataStores[indexPath.row]
        }
}
    
    //MARK: - UITableViewDataSource
    
    extension ContactViewController {
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            dataStores.count
        }
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
            let person = dataStores[indexPath.row]
            var content = cell.defaultContentConfiguration()
            content.text = ("\(person.name) \(person.surname)")
            cell.contentConfiguration = content
            
            return cell
        }
        
    }
    

