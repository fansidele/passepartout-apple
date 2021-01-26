//
//  Preferences.swift
//  Passepartout
//
//  Created by Davide De Rosa on 9/4/18.
//  Copyright (c) 2021 Davide De Rosa. All rights reserved.
//
//  https://github.com/passepartoutvpn
//
//  This file is part of Passepartout.
//
//  Passepartout is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  Passepartout is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with Passepartout.  If not, see <http://www.gnu.org/licenses/>.
//

import Foundation

public protocol Preferences {
    var launchesOnLogin: Bool? { get }
    
    var confirmsQuit: Bool? { get }
    
    var resolvesHostname: Bool { get }
    
    var disconnectsOnSleep: Bool { get }
}

public class EditablePreferences: Preferences, Codable {
    public var launchesOnLogin: Bool? = false
    
    public var confirmsQuit: Bool? = true

    public var resolvesHostname: Bool = true
    
    public var disconnectsOnSleep: Bool = false
}
