//
//  ConctactDetailsViewController.swift
//  ContactList
//
//  Created by Evgeni Glushko on 16.12.23.
//

import UIKit

final class ContactDetailsViewController: UIViewController {
    
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = contact.fullName
        
        phoneLabel.text = "Phone: \(contact.phone)"
        emailLabel.text = "Email: \(contact.email)"
    }
}
