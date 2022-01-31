//
//  ViewController.swift
//  ContactBook
//
//  Created by Nurdana Rakhymova on 1/20/22.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var contacts=[Contact.init("Nurdana Rakhymova", "87873859732", UIImage.init(named: "female")!),
                  Contact.init("Vasya Pupkin", "89873647324", UIImage.init(named: "female")!)]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "myCell") as? CustomCell
        
        cell?.contactName.text = contacts[indexPath.row].name_surname
        cell?.contactNumber.text=contacts[indexPath.row].number
        cell?.contactImageView.image=contacts[indexPath.row].image
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    
    

    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.beginUpdates()
            contacts.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let index = myTableView.indexPathForSelectedRow?.row
        if let destination = segue.destination as? DetailViewController {
            destination.name_surname=contacts[index!].name_surname
            destination.number=contacts[index!].number
            destination.image=contacts[index!].image
            
            myTableView.deselectRow(at: myTableView.indexPathForSelectedRow!, animated: true)
        }
    }
}

