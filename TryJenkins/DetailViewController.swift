//
//  DetailViewController.swift
//  TryJenkins
//
//  Created by PIXERF_SG_WS_12 on 26/4/18.
//  Copyright © 2018 PIXERF_SG_WS_12. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func alertMe(_ sender: Any) {
        let alert = UIAlertController(title: "Hey, Jenkins", message: "this is an alert", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        
        present(alert, animated: true, completion: nil)
    }
}
