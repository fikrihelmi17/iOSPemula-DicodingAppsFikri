//
//  DetailViewController.swift
//  DicodingAppsFikri
//
//  Created by Fikri on 17/05/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    //IBoutlet menghubungkan view dengan controller
    @IBOutlet weak var titleDetail: UILabel!
    @IBOutlet weak var imageDetail: UIImageView!
    @IBOutlet weak var descDetail: UILabel!
    
    //digunakan untuk menampung data sementara
    var detail: (title: String?, desc: String?, image: UIImage?)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //digunakan untuk mengubah kontek setiap kali membuka halaman detail
        titleDetail.text = detail.title
        descDetail.text = detail.desc
        imageDetail.image = detail.image
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
