//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Rezan Söylemez on 25.07.2023.
//

import UIKit

final class RMTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Tab Test"
        setUpTabs()
        
        
    }
    private  func setUpTabs(){
        
        let characterVC=RMCharacterViewController()
        let locatioVC=RMLocationViewController()
        let episodeVC=RMEpisodeViewController()
        let settingVC=RMSettingsViewController()
        
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        locatioVC.navigationItem.largeTitleDisplayMode = .automatic
        episodeVC.navigationItem.largeTitleDisplayMode = .automatic
        settingVC.navigationItem.largeTitleDisplayMode = .automatic
    
        
        let nav1 = UINavigationController(rootViewController: characterVC)
        let nav2 = UINavigationController(rootViewController: locatioVC)
        let nav3 = UINavigationController(rootViewController: episodeVC)
        let nav4 = UINavigationController(rootViewController: settingVC)
        
        
                
        setViewControllers([
            nav1, nav2,nav3,nav4
        ],
        animated: true)
    }
    
}
