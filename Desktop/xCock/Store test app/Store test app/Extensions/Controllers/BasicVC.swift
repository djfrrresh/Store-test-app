//
//  BasicVC.swift
//  Store test app
//
//  Created by Eugene on 13.03.23.
//

import UIKit


class BasicVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupHideKeyboardOnTap() // Убрать клавиатуру при нажатии на экран
        
        self.view.backgroundColor = .white.withAlphaComponent(1)
        self.navigationController?.navigationBar.tintColor = .black
    }
    
    // Создание стака между несколькими элементами
    func setStack(stack: UIStackView, axis: NSLayoutConstraint.Axis, spacing: CGFloat, alignment: UIStackView.Alignment, distribution: UIStackView.Distribution, viewsArray: [UIView]) {
        stack.axis = axis
        stack.spacing = spacing
        stack.alignment = alignment // Выравнивание
        stack.distribution = distribution // Заполнение
        for view in viewsArray {
            stack.addArrangedSubview(view)
        }
    }
    
    func setupHideKeyboardOnTap() {
        self.view.addGestureRecognizer(self.endEditingRecognizer())
        self.navigationController?.navigationBar.addGestureRecognizer(self.endEditingRecognizer())
    }

    private func endEditingRecognizer() -> UIGestureRecognizer {
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(self.view.endEditing(_:)))
        tap.cancelsTouchesInView = false
        return tap
    }
    
}
