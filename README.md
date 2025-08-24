# My Fashion Style - Flutter App

A beautiful Flutter application showcasing fashion products with smooth animations and hero transitions. The app features an elegant carousel interface and detailed product views with custom animations.

## 🎥 Demo

Check out the app in action. This is the video download link:
(https://github.com/saqibcheema/faashion_image_crousal/blob/master/images/Final%20Video/image_crousal.mp4)

> **Note**: If the video doesn't load above, you can find it in the `images/videos/` folder of this repository.

## ✨ Features

- **Smooth Carousel**: Interactive product carousel with rotation and scaling animations
- **Hero Animations**: Seamless transitions between screens using custom curve animations
- **Responsive Design**: Adapts to different screen sizes
- **Custom Animations**: Fade-in effects and custom transition curves
- **Clean UI**: Modern design with beautiful color schemes

## 🎨 Screenshots

The app includes:
- Home screen with animated carousel
- Product detail view with hero animations
- Smooth page transitions

## 🚀 Getting Started

### Prerequisites

Make sure you have Flutter installed on your machine. If not, follow the [official Flutter installation guide](https://docs.flutter.dev/get-started/install).

### Installation

1. Clone the repository:
```bash
git clone https://github.com/your-username/your-repo-name.git
cd your-repo-name
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## 📱 App Structure

```
lib/
├── main.dart                 # App entry point
├── Models/
│   └── Products.dart         # Product data model
├── Screens/
│   ├── home.dart            # Home screen with carousel
│   └── details.dart         # Product details screen
└── Widgets/
    └── CustomCurve.dart     # Custom animation curves
```

## 🎯 Key Components

### Product Model
- Defines product structure with id, title, image, and price
- Contains sample fashion product data

### Home Screen
- Implements PageView carousel with custom animations
- Features rotation and scaling effects based on scroll position
- Uses Hero widgets for smooth transitions

### Details Screen
- Shows enlarged product images with hero animations
- Includes fade-in animations for text elements
- Custom curved transitions between screens

### Custom Animations
- `CustomCurveRectTween`: Custom curve implementation for hero transitions
- Smooth easeInOut animations for better user experience

## 🎨 Design Features

- **Color Scheme**: 
  - Background: `#F5FAE1` (Light green)
  - Details Background: `#EEE6CA` (Cream)
- **Typography**: Custom 'Condena' font for headers
- **Animations**: Rotation, scaling, and opacity transitions
- **Layout**: Responsive design with proper spacing

## 📂 Assets

The app uses local image assets stored in the `images/` folder:
- `fashion2.jpeg`
- `fashion3.avif`
- `fashion4.avif`
- `fashion5.jpeg`
- `fashion7.jpg`

Video demonstration:
- `images/videos/imagecrousal.mp4`

## 🛠️ Customization

### Adding New Products
To add new products, modify the `products` list in `lib/Models/Products.dart`:

```dart
Product(
  id: 6,
  title: 'Your Product Title',
  image: 'images/your_image.jpg',
  price: '299'
)
```

### Customizing Animations
Modify animation parameters in:
- `home.dart` for carousel animations
- `details.dart` for fade-in effects
- `CustomCurve.dart` for transition curves

## 📋 Requirements

- Flutter SDK: >=3.0.0
- Dart: >=2.17.0

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Design inspiration from modern fashion apps
- Custom animation techniques from Flutter community

---

Made with ❤️ using Flutter
