//
//  ViewController.swift
//  AHFMEpisodeListVC
//
//  Created by ivsall2012 on 08/01/2017.
//  Copyright (c) 2017 ivsall2012. All rights reserved.
//

import UIKit
import AHServiceRouter
import AHFMNetworking
import AHFMEpisodeListVCServices
import AHFMEpisodeListVCManager

class ViewController: UIViewController {
lazy var networking = AHFMNetworking()
    override func viewDidLoad() {
        super.viewDidLoad()
        AHFMEpisodeListVCManager.activate()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        var type: AHServiceNavigationType
        type = .present(currentVC: self)
        
        AHServiceRouter.navigateVC(AHFMEpisodeListVCServices.service, taskName: AHFMEpisodeListVCServices.taskNavigation, userInfo: [AHFMEpisodeListVCServices.keyShowId : 722], type: type, completion: nil)
    }
}

