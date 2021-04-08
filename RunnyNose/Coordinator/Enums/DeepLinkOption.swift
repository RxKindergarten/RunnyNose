//
//  DeepLinkOption.swift
//  RunnyNose
//
//  Created by Seungsoo Lee on 2021/04/08.
//


struct DeepLinkURLConstants {
  static let auth = "auth"
  static let onboarding = "onboarding"
  static let main = "main"
}

enum DeepLinkOption {
  case auth
  case onboarding
  case main
  
  static func build(with userActivity: NSUserActivity) -> DeepLinkOption? {
    if userActivity.activityType == NSUserActivityTypeBrowsingWeb,
      let url = userActivity.webpageURL,
      let _ = URLComponents(url: url, resolvingAgainstBaseURL: true) {
      //TODO: extract string and match with DeepLinkURLConstants
    }
    return nil
  }
  
  static func build(with dict: [String : AnyObject]?) -> DeepLinkOption? {
    guard let id = dict?["launch_id"] as? String else { return nil }
    
    switch id {
      case DeepLinkURLConstants.auth: return .auth
      case DeepLinkURLConstants.onboarding: return .onboarding
      case DeepLinkURLConstants.main: return .main
      default: return nil
    }
  }
}

