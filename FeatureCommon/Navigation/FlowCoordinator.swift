import UIKit

public protocol FlowCoordinator: AnyObject {
  
  var containerViewController: UIViewController? { get set }
  
  @discardableResult
  func createFlow() -> UIViewController
}

// MARK: - navigationController

public extension FlowCoordinator {
  
  var navigationController: UINavigationController? {
    return containerViewController as? UINavigationController
  }
}
