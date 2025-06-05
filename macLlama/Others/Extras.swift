//
//  Extras.swift
//  macLlama
//
//  Created by Minyoung Yoo on 5/14/25.
//

import Foundation

@MainActor
final class ServerStatus: ObservableObject {
    @Published private(set) var isOnline: Bool = false
    
    init() {
        Task {
            try await self.updateServerStatus()
        }
    }
    
    ///Check server status using OllamaNetworkService.isServerOnline() and update Boolean value to ServerStatus's indicator property.
    func updateServerStatus() async throws {
        let serverStatus = try await OllamaNetworkService.isServerOnline()
        self.isOnline = serverStatus
    }
}
