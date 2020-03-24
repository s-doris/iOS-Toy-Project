//
//  SecondViewController.swift
//  Amadu_first
//
//  Created by once on 11/03/2020.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    //MARK: 버튼 생성
    let button : UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("CLICK", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.setImage(#imageLiteral(resourceName: "Pro11"), for: .normal)
        //버튼 액션 -> AddressListView로 이동
        button.addTarget(self, action: #selector(clickBtn), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white   //배경 화이트
        view.addSubview(button)         //버튼 추가
        setupButtonLayout()             //오토레이아웃
        
        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(clickBtn2))
        self.navigationItem.rightBarButtonItem = add
    }
    
    //MARK: 오토레이아웃 설정
    func setupButtonLayout(){
//        button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
//        button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
//        button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 200 ).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
//        button.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor).isActive = true
    }
    
    //MARK: 버튼 클릭 이벤트
    @objc func clickBtn(){
        print("click!!")
        let addVC = AddressListViewController()
        addVC.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(addVC, animated: true)
//        self.present(AddressListViewController(), animated: true, completion: nil)
    }
    
    @objc func clickBtn2(){
        let addVC = AddressListViewController()
        addVC.hidesBottomBarWhenPushed = true
//        self.navigationController?.pushViewController(addVC, animated: true)
        self.present(AddressListViewController(), animated: true, completion: nil)
    }
}
