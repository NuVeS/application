//
//  SpeechPreviewDisplayCollection.swift
//  CHMeetupApp
//
//  Created by Maxim Globak on 30.03.17.
//  Copyright © 2017 CocoaHeads Community. All rights reserved.
//

import UIKit

protocol SpeechPreviewDisplayCollectionDelegate: class {
  func displayCollectionRequestingUIUpdate()
}

class SpeechPreviewDisplayCollection: DisplayCollection {
  static var modelsForRegistration: [CellViewAnyModelType.Type] {
    return [SpeakerTableViewCellModel.self]
  }

  var numberOfSections: Int {
    return 1
  }

  func numberOfRows(in section: Int) -> Int {
    return 1
  }

  func model(for indexPath: IndexPath) -> CellViewAnyModelType {
    let speaker = UserEntity()
    speaker.name = "Maxim"
    speaker.lastName = "Globak"
    speaker.company = "icnx.ru"
    speaker.position = "iOS Developer"

    return SpeakerTableViewCellModel(speaker: speaker) as CellViewAnyModelType
  }

  func didSelect(indexPath: IndexPath) {

  }
}
