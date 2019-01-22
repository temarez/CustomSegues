//
//  ScaleSegue.swift
//  CustomSegues
//
//  Created by Artem Rieznikov on 11/19/18.
//  Copyright © 2018 Artem Rieznikov. All rights reserved.
//

import UIKit

class ScaleSegue: UIStoryboardSegue {
    
    override func perform() {
        let toViewConroller = self.destination
        let fromViewConroller = self.source
        
        let containerView = fromViewConroller.view.superview
        let originalCenter = fromViewConroller.view.center
        
        toViewConroller.view.transform = CGAffineTransform(scaleX: 0.05, y: 0.05)
        toViewConroller.view.center = originalCenter
        
        containerView?.addSubview(toViewConroller.view)
        
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {
            toViewConroller.view.transform = CGAffineTransform.identity
        }, completion: { success in
            fromViewConroller.present(toViewConroller, animated: false, completion: nil)
        })
    }

}

class UnwindScaleSegue: UIStoryboardSegue {

    override func perform() {
        let toViewConroller = self.destination
        let fromViewConroller = self.source
        
        fromViewConroller.view.superview?.insertSubview(toViewConroller.view, at: 0)
        
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {
            fromViewConroller.view.transform = CGAffineTransform(scaleX: 0.05, y: 0.05)
        }, completion: { success in
            fromViewConroller.dismiss(animated: false, completion: nil)
        })
    }
}
