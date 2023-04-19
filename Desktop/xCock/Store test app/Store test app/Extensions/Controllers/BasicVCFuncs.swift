//
//  BasicVCFuncs.swift
//  Store test app
//
//  Created by Eugene on 23.03.23.
//

import UIKit


extension BasicVC: UITextFieldDelegate {
    
    func setStack(stack: UIStackView, axis: NSLayoutConstraint.Axis, spacing: CGFloat, alignment: UIStackView.Alignment, distribution: UIStackView.Distribution, viewsArray: [UIView]) {
        stack.axis = axis
        stack.spacing = spacing
        stack.alignment = alignment
        stack.distribution = distribution
        for view in viewsArray {
            stack.addArrangedSubview(view)
        }
    }
    
    func setupHideKeyboardOnTap() {
        self.view.addGestureRecognizer(self.endEditingRecognizer())
        self.navigationController?.navigationBar.addGestureRecognizer(self.endEditingRecognizer())
    }
    
    func alert(message: String) {
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in })
        
        let alertView = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        
        alertView.addAction(alertAction)
        self.present(alertView, animated: true, completion: nil)
    }

    private func endEditingRecognizer() -> UIGestureRecognizer {
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(self.view.endEditing(_:)))
        tap.cancelsTouchesInView = false
        return tap
    }
    
}
