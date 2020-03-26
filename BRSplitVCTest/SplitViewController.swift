//
//  SplitViewController.swift
//  BRSplitVCTest
//
//  Created by Madrascheck on 11/03/2020.
//  Copyright © 2020 BRBRWorld. All rights reserved.
//

import UIKit

class SplitViewController: UISplitViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //UISplitViewController의 프로퍼티
        
        // If 'YES', hidden view can be presented and dismissed via a swipe gesture. Defaults to 'YES'.
        // 'YES'인 경우 스 와이프 제스처를 통해 숨겨진보기를 표시하거나 닫을 수 있습니다. 기본값은 'YES'입니다.
        self.presentsWithGesture = true
        
        // Specifies whether the split view controller has collapsed its primary and secondary view controllers together
        // 분할 뷰 컨트롤러가 기본 및 보조 뷰 컨트롤러를 축소했는지 여부를 지정합니다.
        self.isCollapsed // 읽음전용 프로퍼티. 연산 프로퍼티

        // An animatable property that controls how the primary view controller is hidden and displayed. A value of `UISplitViewControllerDisplayModeAutomatic` specifies the default behavior split view controller, which on an iPad, corresponds to an overlay mode in portrait and a side-by-side mode in landscape.
        // 기본 뷰 컨트롤러를 숨기고 표시하는 방법을 제어하는 애니메이션 가능 속성입니다. 'UISplitViewControllerDisplayModeAutomatic'값은 기본 동작 분할보기 컨트롤러를 지정합니다. 이는 iPad의 경우 세로의 오버레이 모드와 가로의 나란히 모드에 해당합니다.
        self.preferredDisplayMode = .allVisible

        // 위의 Display 모드를 보는 읽음 전용 프로퍼티
        self.displayMode
        
        
        self.preferredPrimaryColumnWidthFraction = 0.5 // master 와 detail의 비율을 정할 수 있음. 최대값및 최소값은 밑에에 의해 제한됨
        self.minimumPrimaryColumnWidth = 320
        self.maximumPrimaryColumnWidth = 600
        
        self.primaryEdge = .leading // master의 엣지를 어느쪽으로 할것인지
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print("FFF")
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
