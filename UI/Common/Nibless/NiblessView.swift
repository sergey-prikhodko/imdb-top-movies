import UIKit

/// Base View for all custom views used in this module
open class NiblessView: UIView {
  
  public init() {
    super.init(frame: .zero)
  }
  
  @available(*, unavailable)
  required public init?(coder aDecoder: NSCoder) {
    fatalError("Init is not implemented")
  }
}
