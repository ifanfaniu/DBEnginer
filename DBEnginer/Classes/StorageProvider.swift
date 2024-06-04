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

extension WaterMarkFixTextModel: Realmable {}

extension WaterMarkFixImageModel: Realmable {}

extension WaterMarkFixCellModel: Realmable {}

extension WaterMarkContentSetModel: Realmable {}

extension WaterMasModel: Realmable {}

extension WaterMarkTextModel: Realmable {}

extension WaterMarkImageModel: Realmable {}

extension WaterMarkViewModel: Realmable {}

extension WaterMarkModel: Realmable {}

extension DraftMainModel: Realmable {}

extension DraftSuperModel: Realmable {}

extension DraftWaterModel: Realmable {}

extension AddressModel: Realmable {}

extension SuperStyleModel: Realmable {}

extension WaterEditLayoutElementModel: Realmable {}

extension WaterEditTextConfigModel: Realmable {}

extension WaterEditLayoutModel: Realmable {}

extension WaterEditTextureConfigModel: Realmable {}

extension ColorItemModel: Realmable {}

extension SuperImportUrlModel: Realmable {}
