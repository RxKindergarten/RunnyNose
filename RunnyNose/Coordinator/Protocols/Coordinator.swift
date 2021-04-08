//
//  Coordinator.swift
//  RunnyNose
//
//  Created by Seungsoo Lee on 2021/04/08.
//

protocol Coordinator: class {
  func start()
  func start(with option: DeepLinkOption?)
}

protocol CoordinatorFinishOutput {
  var finishScene: (() -> Void)? { get set }
}
