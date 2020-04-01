//
//  SplitViewController.swift
//  BRSplitVCTest
//
//  Created by Madrascheck on 11/03/2020.
//  Copyright © 2020 BRBRWorld. All rights reserved.
//

import UIKit

class SplitViewController: UISplitViewController,UISplitViewControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //UISplitViewController의 프로퍼티
//
//        // If 'YES', hidden view can be presented and dismissed via a swipe gesture. Defaults to 'YES'.
//        // 'YES'인 경우 스 와이프 제스처를 통해 숨겨진보기를 표시하거나 닫을 수 있습니다. 기본값은 'YES'입니다.
        self.presentsWithGesture = true
//
//        // Specifies whether the split view controller has collapsed its primary and secondary view controllers together
//        // 분할 뷰 컨트롤러가 기본 및 보조 뷰 컨트롤러를 축소했는지 여부를 지정합니다.
//        self.isCollapsed // 읽음전용 프로퍼티. 연산 프로퍼티
//
        // An animatable property that controls how the primary view controller is hidden and displayed. A value of `UISplitViewControllerDisplayModeAutomatic` specifies the default behavior split view controller, which on an iPad, corresponds to an overlay mode in portrait and a side-by-side mode in landscape.
        // 기본 뷰 컨트롤러를 숨기고 표시하는 방법을 제어하는 애니메이션 가능 속성입니다. 'UISplitViewControllerDisplayModeAutomatic'값은 기본 동작 분할보기 컨트롤러를 지정합니다. 이는 iPad의 경우 세로의 오버레이 모드와 가로의 나란히 모드에 해당합니다.
        // SplitVC의 display 모드를 설정하는 프로퍼티
        self.preferredDisplayMode = .allVisible
        
        // 위의 display 모드를 보는 읽음 전용 프로퍼티
        self.displayMode
        
        //display 모드를 변경하는 UIBarButtonItem 이다.
        //읽음 전용 프로퍼티
        self.displayModeButtonItem
        
        // An animatable property that can be used to adjust the relative width of the primary view controller in the split view controller. This preferred width will be limited by the maximum and minimum properties (and potentially other system heuristics).
        // master 와 detail의 비율을 정할 수 있음. 최대값및 최소값은 밑에에 의해 제한됨
        // UIScreen Width에서 master가 차지하는 width 비율을 정의함.
        self.preferredPrimaryColumnWidthFraction = 0.1
        
        //master VC의 최소 Width
        self.minimumPrimaryColumnWidth = 320
        
        //master VC의 최대 Width
        self.maximumPrimaryColumnWidth = 600
        
        // The current primary view controller's column width.
        // Master View의 Width 확인하는 읽음 전용 프로퍼티
        self.primaryColumnWidth
        
        // master의 엣지를 leading으로 할것인지 trailing로 할것인지 결정함
        // default 는 leading
//        self.primaryEdge = .leading
        
        
//        if #available(iOS 13.0, *) {
//            // The background style of the primary view controller.
//            //In macOS, the sidebar of a split view shows a blurred desktop behind its view. To achieve this effect in your iPad app when it runs in macOS, set primaryBackgroundStyle to UISplitViewController.BackgroundStyle.sidebar. Set the style to UISplitViewController.BackgroundStyle.none when you want to control the background appearance of the primary view controller.
//            // 구글번역 : macOS에서 분할보기의 사이드 바는보기 뒤에 흐린 데스크탑을 표시합니다. macOS에서 실행될 때 iPad 앱에서이 효과를 얻으려면 primaryBackgroundStyle을 UISplitViewController.BackgroundStyle.sidebar로 설정하십시오. 기본보기 컨트롤러의 배경 모양을 제어하려는 경우 스타일을 UISplitViewController.BackgroundStyle.none으로 설정하십시오.
//            
//            self.primaryBackgroundStyle = .none
//        } else {
//            // Fallback on earlier versions
//        }
        
        //        self.splitViewController?.show( UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "UIViewController"), sender: nil)
        //        self.splitViewController?.showDetailViewController( UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "UIViewController"), sender: nil)
        
        
        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print("FFF")
    }
    
    func splitViewController(
              _ splitViewController: UISplitViewController,
              collapseSecondary secondaryViewController: UIViewController,
              onto primaryViewController: UIViewController) -> Bool {
         // Return true to prevent UIKit from applying its default behavior
         return true
     }
    func primaryViewController(forExpanding splitViewController: UISplitViewController) -> UIViewController? {
        return self.viewControllers.last;
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
