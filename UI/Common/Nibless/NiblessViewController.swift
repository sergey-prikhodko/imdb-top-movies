import UIKit

/// Base UIViewController for all custom controllers used in this module
open class NiblessViewController: UIViewController {
  
  public init() {
    super.init(nibName: nil, bundle: nil)
  }
  
  @available(*, unavailable)
  required public init?(coder aDecoder: NSCoder) {
    fatalError("Init is not implemented")
  }
}
