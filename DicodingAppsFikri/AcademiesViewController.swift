//
//  AcademiesViewController.swift
//  DicodingAppsFikri
//
//  Created by Fikri on 17/05/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class AcademiesViewController: UIViewController {

    @IBOutlet weak var androidAcademy: UIStackView!
    @IBOutlet weak var unityAcademy: UIStackView!
    @IBOutlet weak var cloudAcademy: UIStackView!
    @IBOutlet weak var arvrAcademy: UIStackView!
    
    // Digunakan untuk menampung data item
    var academies = [ ("Android Developer", "Lorem ipsum dolor sit amet", UIImage(named: "android")),
                      ("Unity Game Developer", "Lorem ipsum dolor sit amet", UIImage(named: "unity")),
                        ("AR / VR Developer", "Lorem ipsum dolor sit amet", UIImage(named: "arvr")),
                        ("Cloud Developer", "Lorem ipsum dolor sit amet", UIImage(named: "cloud")),
                        ("Lorem ipsum dolor sit amet", "Lorem ipsum dolor sit amet", UIImage(named: "android"))
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // menambahkan aksi tapped pada stack view
        addTapped(parameter: &androidAcademy)
        addTapped(parameter: &unityAcademy)
        addTapped(parameter: &arvrAcademy)
        addTapped(parameter: &cloudAcademy)
        
    }
    
    func addTapped(parameter: inout UIStackView){
        //menambahkan gestur tap
        parameter.isUserInteractionEnabled = true
        parameter.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.objectTapped)))
    }
    
    @objc func objectTapped(gesture: UIGestureRecognizer) {
        //digunakan menginisialisasi DetailViewController
        
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewControllerScene") as! DetailViewController
        //kode dibawah ini digunakan untuk menentukan stack view mana yang dipilih
        switch gesture.view as? UIStackView {
        case(androidAcademy):
            controller.detail = academies[0]
        case(unityAcademy):
            controller.detail = academies[1]
        case(arvrAcademy):
            controller.detail = academies[2]
        case(cloudAcademy):
            controller.detail = academies[3]
        default:
            controller.detail = academies[4]
        }
        
        //kode dibawah digunakan untuk berpindah ke halaman detail dengan membawa informasi yang sesua
        self.present(controller, animated: true, completion: nil)
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
