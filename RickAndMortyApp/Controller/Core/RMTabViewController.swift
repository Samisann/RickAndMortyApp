//
//  ViewController.swift
//  RickAndMortyApp
//
//  Created by Sam on 01/11/2023.
//

import UIKit

class RMTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        setUpTabs()
    }

    
    private func setUpTabs()
    {
        let characterVC = RMCharacterViewController()
        let locationVC = RMLocationViewController()
        let episodeVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        
        
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let firstNav = UINavigationController(rootViewController: characterVC)
        let secondNav = UINavigationController(rootViewController: episodeVC)
        let thirdNav = UINavigationController(rootViewController: locationVC)
        let fourthNav = UINavigationController(rootViewController: settingsVC)
        
        // set the icons
        firstNav.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        
        secondNav.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 2)
        
        thirdNav.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 3)
        
        fourthNav.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        for nav in [ firstNav, secondNav, thirdNav, fourthNav]
        {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([firstNav,secondNav,thirdNav,fourthNav], animated: true)
    }
}

