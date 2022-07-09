# iOS15-UiKit-starbucksClone

Create a starbucks clone using UiKit and iOS15.

#
### Add Child ViewController
##### refactor: Replace tableView with scrollView and stackView

<img width="689" alt="Screen Shot 2565-07-03 at 19 19 50" src="https://user-images.githubusercontent.com/57714919/177039417-c9dc38d0-dfee-452a-8e8a-5ed3c47e98e7.png">

detail: [Starbuck Clone#3](https://www.youtube.com/watch?v=xBtQsacfDhQ&list=PLEVREFF3xBv4fLwWvXZoY8cKC6F5P-rlY&index=3).

### Ways to add Child ViewController
![Screen Shot 2565-07-04 at 22 53 17](https://user-images.githubusercontent.com/57714919/177187947-9d356072-b9f9-4933-bbc0-5c3558bf6a87.png)

##### 1. Auto Layout (recommend)
![Screen Shot 2565-07-04 at 22 54 39](https://user-images.githubusercontent.com/57714919/177188175-77fccfb6-29fc-4615-9390-3a48af517d73.png)

##### 2. Auto resize mask (old style)
![Screen Shot 2565-07-04 at 22 55 07](https://user-images.githubusercontent.com/57714919/177188236-bd350dcc-2dfa-4615-96ec-2043c10b017d.png)

##### 3. Full screen take over
![Screen Shot 2565-07-04 at 22 55 38](https://user-images.githubusercontent.com/57714919/177188300-8b6e2a55-0469-43f7-ae8d-e73f6d027ba8.png)

detail: [Starbuck Clone#4](https://www.youtube.com/watch?v=dwnYXPmSZgw&list=PLEVREFF3xBv4fLwWvXZoY8cKC6F5P-rlY&index=5).

#
### Custom button
##### Custom button with image
![Screen Shot 2565-07-07 at 23 35 09](https://user-images.githubusercontent.com/57714919/177825170-66a85549-1caf-458f-a45b-df14b6516ced.png)
###
![Screen Shot 2565-07-07 at 23 33 59](https://user-images.githubusercontent.com/57714919/177824965-1510528e-d4e4-460d-869b-4ae788003c20.png)
    
    func makeRewardsOptionButton() {
        rewardButton.translatesAutoresizingMaskIntoConstraints = false
        rewardButton.addTarget(self, action: #selector(rewardOptionsTapped), for: .primaryActionTriggered)

        let configuration = UIImage.SymbolConfiguration(scale: .small)
        let image = UIImage(systemName: "chevron.down", withConfiguration: configuration)

        rewardButton.setImage(image, for: .normal)
        rewardButton.imageView?.tintColor = .label
        rewardButton.imageView?.contentMode = .scaleAspectFit

        rewardButton.setTitle("Rewards options", for: .normal)
        rewardButton.setTitleColor(.label, for: .normal)
        rewardButton.titleLabel?.font = UIFont.preferredFont(forTextStyle: .footnote)

        rewardButton.semanticContentAttribute = .forceRightToLeft
        rewardButton.imageEdgeInsets = UIEdgeInsets(top: 2, left: 20, bottom: 0, right: 0)
        rewardButton.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 20)
    }

##### Custom button with green background

<img width="68" alt="Screen Shot 2565-07-07 at 23 47 06" src="https://user-images.githubusercontent.com/57714919/177827314-d7a9e1cc-4476-4c60-b144-8d421c1de8b3.png">

<img width="761" alt="Screen Shot 2565-07-07 at 23 46 59" src="https://user-images.githubusercontent.com/57714919/177827285-3f7c1479-353a-45bc-847c-a00037926cb7.png">

    func makeGreenButton(withText text: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        button.layer.cornerRadius = 40/2
        button.backgroundColor = .darkGreen

        return button
    }

##### Custom button with clear background
<img width="79" alt="Screen Shot 2565-07-07 at 23 50 23" src="https://user-images.githubusercontent.com/57714919/177827837-0031a1a4-ebbb-48a9-9400-c0379bd92fa0.png">

<img width="708" alt="Screen Shot 2565-07-07 at 23 50 36" src="https://user-images.githubusercontent.com/57714919/177827869-ba61f570-f913-409a-871e-eb03fbeaa457.png">

    func makeClearButton(withText text: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        button.layer.cornerRadius = 40/2
        button.layer.borderWidth = 0.5

        button.setTitleColor(.label, for: .normal)
        button.layer.borderColor = UIColor.label.cgColor
        button.backgroundColor = .systemBackground

        return button
    }
    
#
### Custom image

<img width="60" alt="Screen Shot 2565-07-07 at 23 55 32" src="https://user-images.githubusercontent.com/57714919/177828914-691404e0-9153-4684-964a-280cdf5093d1.png">

<img width="689" alt="Screen Shot 2565-07-07 at 23 56 56" src="https://user-images.githubusercontent.com/57714919/177828985-3d9e3937-82f9-456a-ab3b-1edf608daa20.png">

<img width="760" alt="Screen Shot 2565-07-07 at 23 55 11" src="https://user-images.githubusercontent.com/57714919/177828687-55c75e8d-08a0-4306-a7db-bd872b3cff1e.png">

    func makeSymbolImageView(systemName: String, scale: UIImage.SymbolScale = .large) -> UIImageView {

        let configuration = UIImage.SymbolConfiguration(scale: scale)
        let image = UIImage(systemName: systemName, withConfiguration: configuration)

        return UIImageView(image: image)
    }
    
#  
### Core graphics
### Rectangle with border
detail: [Starbuck Clone#6](https://www.youtube.com/watch?v=dwnYXPmSZgw&list=PLEVREFF3xBv4fLwWvXZoY8cKC6F5P-rlY&index=5), [Core graphics](https://github.com/jrasmusson/ios-starter-kit/blob/master/basics/CoreGraphics/README.md#rectangle-with-no-border)

![image](https://user-images.githubusercontent.com/57714919/177945265-5f03264b-1144-46d4-9d6e-ba501940179f.png)

    func drawRectangle() {
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 300, height: 300))

        let img = renderer.image { ctx in
            let rectangle = CGRect(x: 0, y: 0, width: 300, height: 300)

            ctx.cgContext.setFillColor(UIColor.red.cgColor)
            ctx.cgContext.setStrokeColor(UIColor.green.cgColor)
            ctx.cgContext.setLineWidth(10)

            ctx.cgContext.addRect(rectangle)
            ctx.cgContext.drawPath(using: .fillStroke)
        }

        imageView.image = img
    }

 ### Rectangle with no border
 ![image](https://user-images.githubusercontent.com/57714919/177945452-e268c032-15b6-4169-94eb-172ef68c184d.png)
        
    func drawRectangle2() {
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 300, height: 300))

        let img = renderer.image { ctx in
            ctx.cgContext.setFillColor(UIColor.red.cgColor)
            ctx.cgContext.fill(CGRect(x: 0, y: 0, width: 300, height: 300))
        }

        imageView.image = img
    }

 ### Circle
 ![image](https://user-images.githubusercontent.com/57714919/177945549-09afc403-7843-4f41-98d2-eae93465e682.png)
 
    func drawCircle() {
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 300, height: 300))

        let img = renderer.image { ctx in
            ctx.cgContext.setFillColor(UIColor.red.cgColor)
            ctx.cgContext.setStrokeColor(UIColor.green.cgColor)
            ctx.cgContext.setLineWidth(10)

            let rectangle = CGRect(x: 0, y: 0, width: 300, height: 300).inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
            ctx.cgContext.addEllipse(in: rectangle)
            ctx.cgContext.drawPath(using: .fillStroke)
        }

        imageView.image = img
    }
    
    > Note: Circles need to be inset because they draw up to rectangle edge
    
### Rotated square  
![image](https://user-images.githubusercontent.com/57714919/177946444-b863eef9-36b0-42f1-8cae-81faae585590.png)

    func drawRotatedSquare() {
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 256, height: 256))

        let img = renderer.image { ctx in

            ctx.cgContext.translateBy(x: 128, y: 128)
            let rotations = 16
            let amount = Double.pi / Double(rotations)

            // add 16 rotated rectangles
            for _ in 0 ..< rotations {
                ctx.cgContext.rotate(by: CGFloat(amount))
                ctx.cgContext.addRect(CGRect(x: -64, y: -64, width: 128, height: 128))
            }

            ctx.cgContext.setStrokeColor(UIColor.systemRed.cgColor)
            ctx.cgContext.strokePath()
        }

        imageView.image = img
    }

### Draw lines 
![image](https://user-images.githubusercontent.com/57714919/177946590-dd8678e3-ffe4-4ee6-9cea-b39e21ba5f95.png)

    func drawLines() {
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 256, height: 256))

        let img = renderer.image { ctx in
            ctx.cgContext.translateBy(x: 128, y: 128)

            var first = true
            var length: CGFloat = 128

            for _ in 0 ..< 128 {
                ctx.cgContext.rotate(by: .pi / 2)
                if first {
                    ctx.cgContext.move(to: CGPoint(x: length, y: 25))
                    first = false
                } else {
                    ctx.cgContext.addLine(to: CGPoint(x: length, y: 25))
                }

                length *= 0.99
            }

            ctx.cgContext.setStrokeColor(UIColor.systemRed.cgColor)
            ctx.cgContext.strokePath()
        }

        imageView.image = img
    }

### Gradient on Text
![image](https://user-images.githubusercontent.com/57714919/177946927-6e5da321-7ae7-49ef-9ff6-d844864dff4f.png)

    import UIKit

    class ViewController: UIViewController {

        let label = GradientLabel()

        override func viewDidLoad() {
            super.viewDidLoad()
            style()
            layout()
        }

        func style() {
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.preferredFont(forTextStyle: .title1).bold()
            label.numberOfLines = 0
            label.lineBreakMode = .byWordWrapping

            label.text = "A NEW WAY TO WORK HAS ARRIVED"

            label.gradientColors = [UIColor.blue.cgColor, UIColor.red.cgColor]
        }

        func layout() {
            view.addSubview(label)

            NSLayoutConstraint.activate([
                label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                label.widthAnchor.constraint(equalToConstant: 300)
            ])
        }
    }


    extension UIFont {
        func withTraits(traits: UIFontDescriptor.SymbolicTraits) -> UIFont {
            let descriptor = fontDescriptor.withSymbolicTraits(traits)
            return UIFont(descriptor: descriptor!, size: 0) //size 0 means keep the size as it is
        }
        func bold() -> UIFont {
            return withTraits(traits: .traitBold)
        }
    }

    class GradientLabel: UILabel {
        var gradientColors: [CGColor] = []

        override func drawText(in rect: CGRect) {
            if let gradientColor = drawGradientColor(in: rect, colors: gradientColors) {
                self.textColor = gradientColor
            }
            super.drawText(in: rect)
        }

        private func drawGradientColor(in rect: CGRect, colors: [CGColor]) -> UIColor? {
            let currentContext = UIGraphicsGetCurrentContext()
            currentContext?.saveGState()
            defer { currentContext?.restoreGState() }

            let size = rect.size
            UIGraphicsBeginImageContextWithOptions(size, false, 0)
            guard let gradient = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(),
                                            colors: colors as CFArray,
                                            locations: nil) else { return nil }

            let context = UIGraphicsGetCurrentContext()
            context?.drawLinearGradient(gradient,
                                        start: CGPoint.zero,
                                        end: CGPoint(x: size.width, y: 0),
                                        options: [])
            let gradientImage = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            guard let image = gradientImage else { return nil }
            return UIColor(patternImage: image)
        }
    }

#  

