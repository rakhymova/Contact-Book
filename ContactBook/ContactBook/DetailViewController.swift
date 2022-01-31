//
//  DetailViewController.swift
//  ContactBook
//
//  Created by Nurdana Rakhymova on 1/20/22.
//

import UIKit

class DetailViewController: UIViewController {


    @IBOutlet weak var nameSurnameLabel: UILabel!
    @IBOutlet weak var numberLable: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    
    var name_surname: String?
    var number: String?
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameSurnameLabel.text=name_surname
        numberLable.text=number
        imageLabel.image=image

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
