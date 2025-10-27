//
//  File.swift
//  LoginFeature
//
//  Created by jowill on 23/10/25.
//

import Combine
import Foundation
import SwiftUI

@available(macOS 10.15, *)
@MainActor
public final class LoginViewModel: ObservableObject {
    @Published public var username = ""
    @Published public var password = ""

    public init() {}
}
