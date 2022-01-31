//
//  AddViewController.swift
//  ContactBook
//
//  Created by Nurdana Rakhymova on 1/20/22.
//

import UIKit

class AddViewController: UIViewController {

    
    @IBOutlet weak var newName: UITextField!
    @IBOutlet weak var newNumber: UITextView!

    @IBAction func saveContact(_ sender: UIBarButtonItem) {
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
