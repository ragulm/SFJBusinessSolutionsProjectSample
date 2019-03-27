//
//  DetailedVCViewController.swift
//  NytSampleApp
//
//  Created by M L Ragul on 27/03/19.
//  Copyright © 2019 M L Ragul. All rights reserved.
//

import UIKit

class DetailedVCViewController: UIViewController {
    
    
    @IBOutlet weak var lblTitleVal: UILabel!
    @IBOutlet weak var lblSourceVal: UILabel!
    @IBOutlet weak var lvlDateVal: UILabel!
    @IBOutlet weak var lblAuthorVal: UILabel!
    @IBOutlet weak var imgPictureHolder: UIImageView!
    @IBOutlet weak var txtContentHolder: UITextView!
    
    var nytResultData: Results? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        print(self.nytResultData)
        
        self.lblTitleVal.text = self.nytResultData?.title
        self.lblSourceVal.text = self.nytResultData?.source
        self.lvlDateVal.text = self.nytResultData?.published_date
        self.lblAuthorVal.text = self.nytResultData?.byline
        
        if let path = self.nytResultData?.media![0].mediametadata![0].url  {
            print(path)
            HttpClient.sharedInstance.requestImage(path: path, completionHandler: {image in
                self.imgPictureHolder.image = image
            })
        }
        self.txtContentHolder.text = self.nytResultData?.abstract
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
