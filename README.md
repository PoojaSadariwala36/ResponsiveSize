# ResponsiveSize

`ResponsiveSize` is a Swift package that helps you create adaptive user interfaces by providing easy-to-use tools for responsive sizing. It allows you to scale views, font sizes, padding, corner radius, and more based on the screen size, making your app UI responsive across different devices.

## Features

- **Responsive Font Size**: Automatically adjusts font sizes according to the screen size.
- **Responsive Spacing**: Scales the spacing between UI elements for a consistent layout.
- **Responsive Frame**: Scales the size of views (e.g., images, buttons) based on the screen size.
- **Responsive Corner Radius**: Adjusts corner radius for different screen sizes.
- **Responsive Padding**: Automatically scales padding to fit the screen size.

## Installation

You can add `ResponsiveSize` to your project using Swift Package Manager.

1. In Xcode, open your project.
2. Go to `File` > `Add Packages...`.
3. Paste the following URL into the "Search or Enter Package URL" field:  
   `https://github.com/PoojaSadariwala36/ResponsiveSize.git`
4. Select the version you want and click **Add Package**.

## Usage

Once you have added the package to your project, you can start using the responsive components right away.

### Example Usage:

```swift
import ResponsiveSize

struct ResponsiveSizeExample: View {
    var body: some View {
        ScrollView {
            VStack(spacing: ResponsiveHelper.shared.scaleDimension(20)) {
                
                VStack(spacing: ResponsiveHelper.shared.scaleDimension(20)) {
                    Text("Responsive Font with Responsive Spacing")
                        .responsiveFontSize(16)
                    
                    Text("Responsive Font with Responsive Spacing")
                        .responsiveFontSize(16, fontName: "Times New Roman")
                    
                    Text("Normal Font with Responsive Spacing")
                        .font(.system(size: 16))
                    
                    Image(systemName: "house.fill")
                        .resizable()
                        .scaledToFit()
                        .responsiveFrame(width: 100, height: 100)
                        .foregroundColor(.blue)
                    
                    Button(action: {}) {
                        Text("Responsive Button")
                            .responsiveFontSize(16)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .responsiveCornerRadius(10)
                    }
                    
                    Rectangle()
                        .responsiveSquare(size: 50)
                        .responsiveCornerRadius(5)
                    
                    Circle()
                        .responsiveFrame(width: 50, height: 50)
                    
                }
                .responsivePadding(20)
                .background(Color.green.opacity(0.2))
            }
        }
    }
}
```

Methods and Properties

scaleDimension(_:)
    •    Scales a given dimension based on the screen size.

```swift
ResponsiveHelper.shared.scaleDimension(20)
```

responsiveFontSize(_:)
    •    Adjusts the font size based on the screen size.
    •    Optionally, you can specify a custom font name.

```swift
Text("Responsive Font")
    .responsiveFontSize(16)
Text("Responsive Font with Custom Font")
    .responsiveFontSize(16, fontName: "Times New Roman")
```

responsiveFrame(width:height:)
    •    Adjusts the frame size of a view based on the screen size.

```swift
Image(systemName: "house.fill")
    .responsiveFrame(width: 100, height: 100)
```

responsiveCornerRadius(_:)
    •    Scales the corner radius based on the screen size.

```swift
Button(action: {}) {
    Text("Responsive Button")
        .responsiveFontSize(16)
        .padding()
        .background(Color.blue)
        .responsiveCornerRadius(10)
}
```

responsiveSquare(size:)
    •    Scales a square view’s size based on the screen size.

```swift
Rectangle()
    .responsiveSquare(size: 50)
```
responsivePadding(_:)
    •    Automatically adjusts padding based on screen size.

```swift
VStack()
    .responsivePadding(20)
```

---

### **Summary of Key Sections:**

- **Title**: `ResponsiveSize`
- **Features**: Overview of the key functionalities (font sizes, spacing, frame, etc.).
- **Installation**: Instructions to install via Swift Package Manager.
- **Usage**: Example code that demonstrates how to use the package in a project.
- **Methods and Properties**: Descriptions of the available methods like `scaleDimension`, `responsiveFontSize`, etc.
