//
//  ActionButtonsView.swift
//  pyquick_swift
//
//  Created by Rak on 7/29/25.
//

import SwiftUI
@available(macOS 26.0,*)
struct PythonDlView:View {
    @Binding var isKDKSelected: Bool
    @Binding var isInstalling: Bool
    @Binding var isMerging: Bool
    @Binding var hasKextsSelected: Bool
    var downloadAction: () -> Void
    var mergeAction: () -> Void
    var cancelAction: () -> Void
    var openKDKDirectoryAction: () -> Void
    var rebuildCacheAction: () -> Void
    var createSnapshotAction: () -> Void
    var restoreSnapshotAction: () -> Void
    var aboutAction: () -> Void
    var body: some View {
        VStack(spacing: 12){
            HStack(spacing: 12){
                
            }
        }
    }
}
