import UIKit


/**
 A custom label that has some padding between its frame and its displayed text. Configurable in Interface Builder.
 */
@IBDesignable
class LabelWithPadding: UILabel {

    /** The padding (in points). Will be added to all edges. */
    @IBInspectable var topInset: CGFloat = 8
    @IBInspectable var bottomInset: CGFloat = 8
    @IBInspectable var leftInset: CGFloat = 8
    @IBInspectable var rightInset: CGFloat = 8

    override func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: UIEdgeInsets(top: topInset,
                                                       left: leftInset,
                                                       bottom: bottomInset,
                                                       right: rightInset)))
    }

    override var intrinsicContentSize: CGSize {
        let originalSize = super.intrinsicContentSize
        return CGSize(width: originalSize.width + leftInset + rightInset,
                      height: originalSize.height + topInset + bottomInset)
    }
}
