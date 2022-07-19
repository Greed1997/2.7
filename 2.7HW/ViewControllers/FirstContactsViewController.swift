//
//  FirstContactsViewController.swift
//  2.7HW
//
//  Created by Александр on 17.07.2022.
//

import UIKit

class FirstContactsViewController: UITableViewController {

    private var contactList = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = editButtonItem
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactsID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        // indexPath.row возвращает индекс ячейки
        // Экземпляр модели contactList
        let contact = contactList[indexPath.row]
        
        content.text = contact.fullName        
        cell.contentConfiguration = content

        return cell
    }

    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .none
    }
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        false
    }
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let currentContact = contactList.remove(at: sourceIndexPath.row)
        contactList.insert(currentContact, at: destinationIndexPath.row)
    }
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactDetailsVC = segue.destination as? ContactDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let contact = contactList[indexPath.row]
        contactDetailsVC.contactDetails = contact
    }

}
