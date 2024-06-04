//
//  StorageProvider.swift
//  Example with Abstraction
//
//  Created by Artur Mkrtchyan on 2/26/20.
//  Copyright © 2020 arturdev. All rights reserved.
//

import Foundation
import Unrealm

typealias Storage = LocalStorage
typealias StorageResults = LocalStorageResults
typealias NotificationToken = StorageNotificationToken
struct StorageProvider {

	enum ProviderType {
		case realm
		case coredata //coming soon
		case sqlite //coming soon
	}
	
	static func provide(type: ProviderType) -> Storage {
		switch type {
		case .realm:
			return RealmStorage.default
		default: fatalError() //coming soon
		}
	}
}

