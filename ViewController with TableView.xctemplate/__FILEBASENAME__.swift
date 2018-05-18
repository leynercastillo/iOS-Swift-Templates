//
//  ___FILEBASENAMEASIDENTIFIER___.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - Componentes UI
    @IBOutlet weak var yourTableView: UITableView!
    
    // MARK: - Variables
    private var yourArray: [Any]!
    
    // MARK: - Constants
    private let cellIdentifier = "yourCellIdentifier"
    
    // MARK: - UIViewController methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // MARK: - UITableViewDatasource methods
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.yourArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.cellIdentifier)
        
        return cell!
    }
    
    // MARK: - UITableViewDelegate methods
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
