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
    var parentView: UIView!
    private var containerView: UIView!
    
    // MARK: - Constants
    
    
    // MARK: - UIView methods
    init(view: UIView, nibName: String) {
        super.init(frame: view.bounds)
        self.configurateUI(view: view, nibName: nibName)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - Utils methods
    private func configurateUI(view: UIView, nibName: String) {
        if let containerView = self.loadXIB(nibName: nibName) {
            self.containerView = containerView
            
            // UIView will be default hide
            self.alpha = 0
            
            view.addSubview(self)
            self.addSubview(self.containerView)
            self.parentView = view
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
    func mostrarView() {
        UIView.animate(withDuration: 0.3, animations: {
            self.alpha = 1
        })
    }
    
    // A simple fade out method for the UIView
    func ocultarView() {
        UIView.animate(withDuration: 0.3, animations: {
            self.alpha = 0
        }, completion: { (success) in
            self.removeFromSuperview()
        })
    }
}
