//
//  ___FILEBASENAMEASIDENTIFIER___.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UIView {
    
    // MARK: - Componentes UI
    
    
    // MARK: - Variables
    private var containerView: UIView!
    
    // MARK: - Constants
    // The XIB should have the same name than the class name
    private let nibName = String(describing: ___FILEBASENAMEASIDENTIFIER___.self)
    
    // MARK: - UIView methods
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configurateUI(nibName: nibName)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - Helper methods
    private func configurateUI(nibName: String) {
        if let containerView = self.loadXIB(nibName: nibName) {
            self.containerView = containerView
            self.addSubview(self.containerView)
        }
    }
    
    private func loadXIB(nibName: String) -> UIView? {
        let nib = UINib(nibName: nibName, bundle: nil)
        if let customView = nib.instantiate(withOwner: self, options: nil)[0] as? UIView {
            customView.frame = self.bounds
            customView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            
            return customView
        }
        
        return nil
    }
    
    // MARK: - Object methods
    // A simple fade in method for the UIView
    func showView() {
        UIView.animate(withDuration: 0.3, animations: {
            self.alpha = 1
        })
    }
    
    // A simple fade out method for the UIView
    func hideView() {
        UIView.animate(withDuration: 0.3, animations: {
            self.alpha = 0
        }, completion: { (success) in
            self.removeFromSuperview()
        })
    }
}
