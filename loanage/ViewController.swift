//
//  ViewController.swift
//  loanage
//
//  Created by Keon Hee Park on 2022/05/07.
//
// Color Palette (https://colorhunt.co/palette/000000323232ff1e56ffac41)
// #000000 <- Background Color
// #323232 <- Primary Color (grey)
// #FF1E56 <- Secondary Color (살짝 redish?)
// #FFAC41 <- Just In Case

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Properties
    
    private var collectionView: UICollectionView?
    let characters = [Character(nickname: "거니버니", level: 1440, job: "소서리스"),
                      Character(nickname: "헬루", level: 1610, job: "디스트로이어"),
                      Character(nickname: "빼꼼이", level: 408, job: "창술사")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "캐릭터 선택창"
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        let flowlayout = UICollectionViewFlowLayout()
        flowlayout.itemSize = CGSize(width: (view.frame.width - 20 - 40)/2, height: (view.frame.width - 20 - 40)/2)
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowlayout)
        guard let collectionView = collectionView else { return }
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        view.addSubview(collectionView)
        view.backgroundColor = .black
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        collectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        collectionView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        collectionView.backgroundColor = .black
        
        
        collectionView.register(CharacterCVCell.self, forCellWithReuseIdentifier: K.cellId)
    }

}


//MARK: - UICollectionView Delegates

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return characters.count + 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.cellId, for: indexPath) as! CharacterCVCell
        
        if indexPath.row < characters.count {
            cell.configure(nickname: characters[indexPath.row].nickname, lvl: characters[indexPath.row].level, job: characters[indexPath.row].job)

        } else {
            cell.lastCell()
        }
        
        return cell
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row < characters.count {
            let detailVC = DetailedViewController(selectedNickname: characters[indexPath.row].nickname)
            navigationController?.pushViewController(detailVC, animated: true)
        } else {
            let newCharacterVC = NewCharacterViewController()
            present(UINavigationController(rootViewController: newCharacterVC), animated: true)
        }
        
    }
}


//MARK: - UICollectionView Flow layout

extension ViewController: UICollectionViewDelegateFlowLayout {
//    // cell의 width, height를 정하기
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: (view.frame.width - 20 - 40)/2, height: (view.frame.width - 20 - 40)/2)
//    }
    // cell 사이의 간격 정하기
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    // cell 높이 간격 정하기
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    // 전체 padding 정하기
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    }
}
