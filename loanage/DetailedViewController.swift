//
//  DetailedViewController.swift
//  loanage
//
//  Created by Keon Hee Park on 2022/05/10.
//

import UIKit

class DetailedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemRed
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "뒤로 가기", style: .plain, target: self, action: #selector(dismissSelf))
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @objc private func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }
}