//
//  DetailedViewController.swift
//  loanage
//
//  Created by Keon Hee Park on 2022/05/10.
//

import UIKit

class DetailedViewController: UIViewController {
    
    //MARK: - Properties
    private let selectedNickname: String
    
    //MARK: - Initializer
    init(selectedNickname: String) {
        self.selectedNickname = selectedNickname 
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = selectedNickname
        view.backgroundColor = .black
        navigationController?.navigationBar.tintColor = .white
//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "뒤로 가기", style: .plain, target: self, action: #selector(dismissSelf))
    }
    
    
    
//    @objc private func dismissSelf() {
//        dismiss(animated: true, completion: nil)
//    }
}
