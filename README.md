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
