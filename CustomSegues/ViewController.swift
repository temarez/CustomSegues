//
//  ViewController.swift
//  CustomSegues
//
//  Created by Artem Rieznikov on 11/19/18.
//  Copyright © 2018 Artem Rieznikov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        
    }
    
    override func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
        let segue = UnwindScaleSegue(identifier: unwindSegue.identifier, source: unwindSegue.source,
                                     destination: unwindSegue.destination)
        segue.perform()
    }


}

