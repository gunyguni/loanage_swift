//
//  NewCharacterViewController.swift
//  loanage
//
//  Created by Keon Hee Park on 2022/05/11.
//

import UIKit

class NewCharacterViewController: UIViewController {
    
    let guideLabel: UILabel = {
        let label = UILabel()
        label.text = "새로운 캐릭터의 닉네임을 입력해주세요"
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    let textField: UITextField = {
        let field = UITextField()
        field.textColor = .white
        field.backgroundColor = .gray.withAlphaComponent(0.6)
        field.textAlignment = .center
        field.borderStyle = .roundedRect
        return field
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        navigationItem.title = "새 캐릭터 추가"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "뒤로 가기", style: .plain, target: self, action: #selector(dismissSelf))
        navigationController?.navigationBar.tintColor = .white
        
        
        view.addSubview(guideLabel)
        
        guideLabel.frame = CGRect(x: 0, y: view.frame.size.height/4, width: view.frame.size.width, height: 20)
        
        
        view.addSubview(textField)
        
        textField.frame = CGRect(x: 40, y: view.frame.size.height/4 + 30, width: view.frame.size.width-80, height: 55)
        
        
        let doneButton = UIButton(frame: CGRect(x: view.frame.size.width/2 - 20, y: view.frame.size.height/4 + 100, width: 40, height: 30))
        doneButton.setTitle("추가", for: .normal)
        doneButton.setTitleColor(UIColor(rgb: 0xFF1E56) , for: .normal)
        doneButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        view.addSubview(doneButton)
    }
    
    @objc private func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc private func didTapButton() {
        dismissSelf()
    }
    
}
