//
//  ContactSectionViewController.swift
//  ContactList
//
//  Created by Evgeni Glushko on 16.12.23.
//

import UIKit

final class ContactSectionViewController: UITableViewController {

    var contactList: [Person]!
}

// MARK: - UITableViewDataSource
extension ContactSectionViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contactCell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        
        let phone = contactList[indexPath.section].phone
        let email = contactList[indexPath.section].email
        
        var content = contactCell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = phone
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = email
            content.image = UIImage(systemName: "envelope")
        }
        
        contactCell.contentConfiguration = content
        return contactCell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return contactList[section].fullName
    }
}

// MARK: - UITableViewDelegate
extension ContactSectionViewController {
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        nil
    }
}
