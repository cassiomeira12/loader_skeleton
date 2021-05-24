# SkeletonLoader


A Facebook & Twitter Like Card Loading Shimmer Skeleton Library.


## 💻 Installation

In the `dependencies:` section of your `pubspec.yaml`, add the following line:

```yaml
loader_skeleton: <latest_version>
```

## ❔ Usage

## Light Theme

### CardSkeleton

<img height="300px"  src="https://raw.githubusercontent.com/djade007/loader_skeleton/master/gifs/g1.gif"/>

```dart
import 'package:loader_skeleton/loader_skeleton.dart';

//Widget
CardSkeleton(
  isCircularImage: true,
  isBottomLinesActive: true,
)

```

### CardListSkeleton

<img height="300px"  src="https://raw.githubusercontent.com/djade007/loader_skeleton/master/gifs/g2.gif"/>

```dart
import 'package:loader_skeleton/loader_skeleton.dart';

//Widget
CardListSkeleton(
  isCircularImage: true,
  isBottomLinesActive: true,
  length: 10,
)

```

### CardProfileSkeleton

<img height="300px"  src="https://raw.githubusercontent.com/djade007/loader_skeleton/master/gifs/g3.gif"/>

```dart
import 'package:loader_skeleton/loader_skeleton.dart';

//Widget
CardProfileSkeleton(
  isCircularImage: true,
  isBottomLinesActive: true,
)

```
### CardPageSkeleton

<img height="300px"  src="https://raw.githubusercontent.com/djade007/loader_skeleton/master/gifs/g4.gif"/>

```dart
import 'package:loader_skeleton/loader_skeleton.dart';

//Widget
CardPageSkeleton(
  totalLines: 5,
)

```

## Dark Theme

To use dark theme in your app.
Simply provide brightness to dark in your Material App Widget or use Theme Widget.

Enable Dark Theme

```
 ThemeData(
  brightness: Brightness.dark,  
),
```

### DarkCardSkeleton

<img height="300px"  src="https://raw.githubusercontent.com/djade007/loader_skeleton/master/gifs/g5.gif"/>

```dart
import 'package:loader_skeleton/loader_skeleton.dart';

//Widget
DarkCardSkeleton(
  isCircularImage: true,
  isBottomLinesActive: true,
)

```
### DarkCardListSkeleton

<img height="300px"  src="https://raw.githubusercontent.com/djade007/loader_skeleton/master/gifs/g6.gif"/>

```dart
import 'package:loader_skeleton/loader_skeleton.dart';

//Widget
DarkCardListSkeleton(
  isCircularImage: true,
  isBottomLinesActive: true,
  length: 10,
)

```

### DarkCardProfileSkeleton

<img height="300px"  src="https://raw.githubusercontent.com/djade007/loader_skeleton/master/gifs/g7.gif"/>

```dart
import 'package:loader_skeleton/loader_skeleton.dart';

//Widget
DarkCardProfileSkeleton(
  isCircularImage: true,
  isBottomLinesActive: true,
)

```
### DarkCardPageSkeleton

<img height="300px"  src="https://raw.githubusercontent.com/djade007/loader_skeleton/master/gifs/g8.gif"/>

```dart
import 'package:loader_skeleton/loader_skeleton.dart';

//Widget
DarkCardPageSkeleton(
  totalLines: 5,
)

```


# 👍 How to Contribute

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.dev/).

For help on editing package code, view the [documentation](https://flutter.dev/developing-packages/).
