//
//  FrameworkGridViewModel.swift
//  Apple-Framework
//
//  Created by Riza Radia Rivaldo on 08/12/23.
//

import Foundation
import SwiftUI

final class FrameworkListViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView = false
    
    var columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
}
