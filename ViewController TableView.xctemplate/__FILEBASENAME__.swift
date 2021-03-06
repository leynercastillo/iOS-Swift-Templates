//
//  ___FILEBASENAMEASIDENTIFIER___.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UIViewController {
    
    // MARK: - Componentes UI
    @IBOutlet weak var yourTableView: UITableView!
    
    // MARK: - Variables
    private var yourArray: [Any]!
    
    // MARK: - Constants
    
    // MARK: - UIViewController methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // MARK: - Helper
    private func setupUI() {
        setupLocalizedText()
    }
    
    private func setupLocalizedText() {
        
    }
}

// MARK: - UITableViewDataSource
extension ___FILEBASENAMEASIDENTIFIER___: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.yourArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "customCell.identifier") else {
            return UITableViewCell()
        }
        
        return cell
    }
}

// MARK: - UITableViewDelegate
extension ___FILEBASENAMEASIDENTIFIER___: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
