
import UIKit

// Example about protocol associatetype
enum ScrollDirection {
    case scrollUp, scrollLeft, scrollDown, scrollRight, none
}

protocol ScrollDirectionDetectable {
    // Restrict ScrollViewType which inherits UIScrollView
    associatedtype ScrollViewType: UIScrollView

    var scrollView: ScrollViewType { get }
    var scrollDirection: ScrollDirection { get set }
    var lastContentOffset: CGPoint { get set }
}

extension ScrollDirectionDetectable {
    var scrollView: ScrollViewType {
        return self.scrollView
    }
}

class VC: UIViewController, ScrollDirectionDetectable {
    typealias ScrollViewType = UIScrollView
    var scrollDirection: ScrollDirection = .none
    var lastContentOffset: CGPoint = .zero
}

extension VC: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {

        // Update ScrollView direction
        if self.lastContentOffset.y > scrollView.contentOffset.y {
            scrollDirection = .scrollUp
        } else if self.lastContentOffset.y < scrollView.contentOffset.y {
            scrollDirection = .scrollDown
        }
        self.lastContentOffset.y = scrollView.contentOffset.y
    }
}
