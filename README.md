# FlutterToon [FTOON]
### NaverWeebToon 월별 모음집
<img src='CaptureImg/ListScreen(1).png' alt='ListScreen' height=200px/> <img src='CaptureImg/ListScreen(2).png' alt='ListScreen' height=200px/><img src='CaptureImg/DetailScreen(1).png' alt='DetailScreen' height=200px/> <img src='CaptureImg/DetailScreen(2).png' alt='DetailScreen' height=200px/><img src='CaptureImg/SearchScreen.png' alt='Search' height=200px/> <img src='CaptureImg/SearchResultScreen.png' alt='SearchResult' height=200px/><img src='CaptureImg/YoutubeScreen.png' alt='Youtube' height=200px/>

## 프로젝트 요약
![Langauge:Dart](https://img.shields.io/badge/Language-Flutter-blue) ![platform:CrossPlatForm](https://img.shields.io/badge/Platform-CrossPlatfrom-blue)
> 2023.02.01 - 2023.03.08   
 
> **Flutter 개인 프로젝트**
* IMDB와 같이 영화 리스트 목록에서 볼 만한 영화를 검색하는 어플리케이션입니다.
* 어플리케이션 메인 화면에서는 찾는 영화, 순위권 영화, 현재 상영 영화를 페이징 처리 위젯으로 감싸 손가락을 넘기면서 정보를 확인할 수 있도록 하였습니다.
* 해당 영화 목록 상세페이지에서는 영화에 대한 정보 및 예고편 유튜브 영상이 포함되어 있습니다.
* View All 버튼을 누르면 각 영화 목록을 ListView 형태로 볼 수 있습니다.
* 돋보기 아이콘을 누르면 검색 화면으로 넘어가고 특정 단어를 검색하면 그 단어와 관련되어 있는 영화를 모두 ListView로 볼 수 있습니다.
* TMDB Api를 활용하여 해당 서버단(TMDB)에서 어플리케이션으로 정보를 제공합니다.
* 플러터의 Provider 패키지를 활용하여 앱 상태 관리도 가능하게끔 하였습니다.<br>

## Dependency
- `flutter_native_splash`:  <a target="_blank" href="https://pub.dev/packages/flutter_native_splash">https://pub.dev/packages/flutter_native_splash</a>
- `dio`: <a target="_blank" href="https://pub.dev/packages/dio">https://pub.dev/packages/dio</a>
- `provider`: <a target="_blank" href="https://pub.dev/packages/provider">https://pub.dev/packages/provider</a>
- `dartz`: <a target="_blank" href="https://pub.dev/packages/dartz">https://pub.dev/packages/dartz</a>
- `carousel_slider`: <a target="_blank" href="https://pub.dev/packages/carousel_slider">https://pub.dev/packages/carousel_slider</a>
- `infinite_scroll_pagination`: <a target="_blank" href="https://pub.dev/packages/infinite_scroll_pagination">https://pub.dev/packages/infinite_scroll_pagination</a>
- `get_it`: <a target="_blank" href="https://pub.dev/packages/get_it">https://pub.dev/packages/get_it</a>
- `webview_flutter`: <a target="_blank" href="https://pub.dev/packages/webview_flutter">https://pub.dev/packages/webview_flutter</a>
- `youtube_player_flutter`: <a target="_blank" href="https://pub.dev/packages/youtube_player_flutter">https://pub.dev/packages/youtube_player_flutter</a><br>


## 시작하려면
```dart
class AppConstants {
  static const String baseUrl = 'https://api.themoviedb.org/3/';
  static const String imageUrlW500 = 'https://image.tmdb.org/t/p/w500';
  static const String imageUrlOriginal = 'https://image.tmdb.org/t/p/original/';
  static const String apiKey = 'YOUR_API_KEY';
}
```

## 시연영상
https://www.youtube.com/watch?v=2QwAHxyEN48
