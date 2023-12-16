//
//  PersonsListViewController.swift
//  ContactList_HW
//
//  Created by Dmitry Parhomenko on 17.12.2023.
//

import UIKit

final class PersonsListViewController: UIViewController {
    
    var dataStores: DataStore!
    
    @IBOutlet var phone: UILabel!
    @IBOutlet var email: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phone.text = ("Тел: \(dataStores.phoneNumber)")
        email.text = ("E-mail: \(dataStores.email)")
        title = ("\(dataStores.name) \(dataStores.surname)")
        
    }

}
