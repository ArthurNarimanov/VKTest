//
//  RegisterViewController.swift
//  VKTest
//
//  Created by Ram on 11/06/2019.
//  Copyright © 2019 Arthur Narimanov. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private let models: [HeaderModel] = [.info, .sex, .birthday]

    override func viewDidLoad() {
        super.viewDidLoad()
        Decorator.decorate(self)
        title = "Registration"
        registerCells()
        delegating()
        // Do any additional setup after loading the view.
    }

    private func registerCells(){
        tableView.register(InfoUserTableViewCell.nib, forCellReuseIdentifier: InfoUserTableViewCell.name)
    }
    private func delegating() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
extension RegisterViewController {
    fileprivate enum CellModel {
        case userInfo
        case sex
        case birthday
    }
    fileprivate enum HeaderModel: CellHeaderProtocol {
        typealias cellType = CellModel
        case sex
        case info
        case birthday
        
        var cellModels: [RegisterViewController.CellModel] {
            switch self {
            case .sex:
                return [.sex]
            case .info:
                return [.userInfo]
            case .birthday:
                return [.birthday]
            default:
                return []
            }
        }
    }
}

extension RegisterViewController {
    private static let tableViewTopInset: CGFloat = 18
    fileprivate final class Decorator {
        static func decorate(_ vc: RegisterViewController) {
            vc.tableView.separatorColor = .clear
            
            vc.tableView.backgroundColor = #colorLiteral(red: 0.9450980392, green: 0.9450980392, blue: 0.9450980392, alpha: 1)
            vc.navigationController?.navigationBar.prefersLargeTitles = true
            //create undents
            vc.tableView.contentInset = UIEdgeInsets(top: tableViewTopInset, left: 0, bottom: 0, right: 0)
        }
    }
}

extension RegisterViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let model = models[indexPath.section].cellModels[indexPath.row]
        switch model {
        case .userInfo:
            return 100
        default:
            return 0
        }
    }
}

extension RegisterViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerModel = models[section]
        switch headerModel {
        case .sex:
            let view = HeaderTitleView.loadFromNib()
            view.set(title: "Your gender:")
            return view
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        let headerModel = models[section]
        switch headerModel {
        case .sex:
            return 44
        default:
            return 0
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models[section].cellModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.section].cellModels[indexPath.row]
        switch model {
        case .userInfo:
            if let cell = tableView.dequeueReusableCell(withIdentifier: InfoUserTableViewCell.name, for: indexPath) as? InfoUserTableViewCell {
                return cell
            }
        default:
            break
        }
        return UITableViewCell()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3 
    }
}
