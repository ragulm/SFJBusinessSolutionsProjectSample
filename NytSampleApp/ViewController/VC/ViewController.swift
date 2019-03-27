//
//  ViewController.swift
//  NytSampleApp
//
//  Created by M L Ragul on 27/03/19.
//  Copyright © 2019 M L Ragul. All rights reserved.
//

import UIKit

class ViewController: UIViewController,ViewControllerProtocol,UITableViewDelegate,UITableViewDataSource {
    

    @IBOutlet weak var tblMainViewController: UITableView!
    var nytData: BaseValue? = nil
    var nytDetailsDelegate : NytDelegatesImpl = NytDelegatesImpl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nytDetailsDelegate.viewController = self
        nytDetailsDelegate.getnytDetails()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func handleUpdateSuccess(nytData: BaseValue)
    {
//        self.tblMainViewController.separatorStyle = .none
        self.tblMainViewController.separatorInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        if #available(iOS 11, *) {
            // Maintain iOS 10 style inset
            self.tblMainViewController.separatorInsetReference = .fromAutomaticInsets
        }
        self.tblMainViewController.delegate = self
        self.tblMainViewController.dataSource = self
        self.nytData = nytData
        self.tblMainViewController.reloadData()
    }
    
    
    func handleErrors(error: NSError) {
        print(error)
    }
    
    //MARK: Table view Datasource and Delegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (self.nytData?.results?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TitleCustomCell", for: indexPath) as! MainCustomCell
        
        let getMain = self.nytData?.results![indexPath.row]
        
        cell.lblHeaderTitle.text = getMain?.title
        cell.lblAuthorVal.text = getMain?.byline
        cell.lblSubTitleVal.text = getMain?.source
        cell.lblDateBublishedVal.text = getMain?.published_date
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let getMain = self.nytData?.results![indexPath.row]
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailedViewScene") as! DetailedVCViewController
        vc.nytResultData = getMain
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

