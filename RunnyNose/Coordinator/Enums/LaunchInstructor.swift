//
//  LaunchInstructor.swift
//  RunnyNose
//
//  Created by Seungsoo Lee on 2021/04/08.
//

enum LaunchInstructor {
  case main
  case auth
  
  // MARK: - Public methods
  static func configure(_ isAutorized: Bool = false) -> LaunchInstructor {
    switch isAutorized {
      case false : return .auth
      case true: return .main
    }
  }
}
