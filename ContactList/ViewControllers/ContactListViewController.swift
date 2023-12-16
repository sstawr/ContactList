//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Evgeni Glushko on 16.12.23.
//

import UIKit

final class ContactListViewController: UITableViewController {

    private let contactList = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}

// MARK: - UITableViewDataSource
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contactCell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let contact = contactList[indexPath.row]
        
        var content = contactCell.defaultContentConfiguration()
        content.text = contact.fullName
        
        contactCell.contentConfiguration = content
        return contactCell
    }
}
