import 'app_localizations.dart';

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get emailAddress => 'Địa chỉ email';

  @override
  String get password => 'Mật khẩu';

  @override
  String pleaseEnter(String fieldName) {
    return 'Vui lòng nhập $fieldName';
  }

  @override
  String incorrectInputFormat(String inputFormat) {
    return '$inputFormat không hợp lệ.';
  }

  @override
  String passwordNotEnoughLength(int number) {
    return 'Vui lòng nhập mật khẩu nhiều hơn $number ký tự';
  }

  @override
  String get continuee => 'Tiếp tục';

  @override
  String get close => 'Đóng';

  @override
  String get unknownErrorMsg => 'Có lỗi xảy ra, vui lòng thử lại sau.';

  @override
  String get name => 'Tên đầy đủ';

  @override
  String get mailSent => 'Kiểm tra hộp thư';

  @override
  String get signUpSuccessMsg => 'Chúng tôi đã gửi cho bạn một email xác nhận. \nVui lòng kiểm tra hộp thư để hoàn tất đăng ký.';

  @override
  String get createAccount => 'Tạo tài khoản';

  @override
  String get passwordRequirementsMsg => 'Vui lòng nhập nhiều hơn 8 ký tự';

  @override
  String get next => 'Tiếp theo';

  @override
  String get noConnectionTitle => 'Không có kết nối mạng';

  @override
  String get noConnectionMessage => 'Không có kết nối mạng.\nVui lòng kiểm tra đường truyền của bạn\n và thử lại.';

  @override
  String get aboard => 'Aboard';

  @override
  String get about => 'Về chúng tôi';

  @override
  String get aboutLine1 => 'This is an open-source project and can be found on';

  @override
  String get aboutLine2 => 'If you liked my work\nshow some ♥ and ⭐ the repo';

  @override
  String get accent => 'Accent Color & Hue';

  @override
  String get addNew => 'Add New';

  @override
  String get addSomething => 'Go and Add Something';

  @override
  String get addToPlaylist => 'Add to Playlist';

  @override
  String get addToQueue => 'Add to Queue';

  @override
  String get addedBy => 'Added by';

  @override
  String get addedTo => 'Added to';

  @override
  String get addedToFav => 'Added to Favorites';

  @override
  String get addedToPlaylists => 'Added to Playlists';

  @override
  String get addedToQueue => 'Added to Queue';

  @override
  String get adjustSpeed => 'Adjust Speed';

  @override
  String get album => 'Album';

  @override
  String get albumArtist => 'Album Artist';

  @override
  String get albums => 'Albums';

  @override
  String get alphabetical => 'Alphabetical';

  @override
  String get alreadyExists => 'Already Exists';

  @override
  String get alreadyInQueue => 'Already in Queue';

  @override
  String get appTitle => 'BlackHole';

  @override
  String get artist => 'Artist';

  @override
  String get artists => 'Artists';

  @override
  String get autoBack => 'Auto Backup';

  @override
  String get autoBackLocation => 'Auto Backup Location';

  @override
  String get autoBackSub => 'Automatically backup data';

  @override
  String get autoplay => 'Autoplay';

  @override
  String get autoplaySub => 'Automatically add related songs to the queue';

  @override
  String get back => 'Back';

  @override
  String get backNRest => 'Backup & Restore';

  @override
  String get backupSuccess => 'Backup Successful';

  @override
  String get bgGrad => 'Background Gradient';

  @override
  String get bgGradSub => 'Gradient used as background everywhere';

  @override
  String get blacklistedHomeSections => 'Blacklisted Home Sections';

  @override
  String get blacklistedHomeSectionsSub => 'Sections with these titles won\'t be shown on Home Screen';

  @override
  String get bottomGrad => 'Bottom Sheets Gradient';

  @override
  String get bottomGradSub => 'Gradient used in Bottom Sheets';

  @override
  String get buyCoffee => 'Buy me a coffee';

  @override
  String get cache => 'Cache';

  @override
  String get cacheSong => 'Cache Songs';

  @override
  String get cacheSongSub => 'Songs will be cached for future playback. Additional space on your device will be taken';

  @override
  String get cancel => 'Cancel';

  @override
  String get cantAddToQueue => 'Can\'t add Online Song to Offline Queue';

  @override
  String get canvasColor => 'Canvas Color';

  @override
  String get canvasColorSub => 'Color of Background Canvas';

  @override
  String get cardColor => 'Card Color';

  @override
  String get cardColorSub => 'Color of Search Bar, Alert Dialogs, Cards';

  @override
  String get cardGrad => 'Card Gradient';

  @override
  String get cardGradSub => 'Gradient used in Cards';

  @override
  String get changeDefault => 'Change to Default';

  @override
  String get changeOrder => 'Long Press to change order\n';

  @override
  String get chartLocation => 'Spotify Local Charts Location';

  @override
  String get chartLocationSub => 'Country for Top Spotify Local Charts';

  @override
  String get checkingUpdate => 'Checking for Updates…';

  @override
  String get checkUpdate => 'Auto check for Updates';

  @override
  String get checkUpdateSub => 'If you downloaded BlackHole from any app repository like \'F-Droid\', \'IzzyOnDroid\', etc which provide update options, keep this OFF. Whereas, If you downloaded it from \'GitHub\' or any other source which doesn\'t provide auto updates then turn this ON, so as to receive update alerts\n';

  @override
  String get clear => 'Clear';

  @override
  String get clearAll => 'Clear All';

  @override
  String get clearCache => 'Clear Cached Details';

  @override
  String get clearCacheSub => 'Deletes Cached details including Homepage, Spotify Top Charts, YouTube and Last Session Data. Usually app automatically clears them when data become large\n';

  @override
  String get confirmViewable => 'Make sure the playlist is viewable';

  @override
  String get connectingRadio => 'Connecting to Radio…';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get contactUsSub => 'Feedbacks Appreciated!';

  @override
  String get convertingSongs => 'Converting Songs';

  @override
  String get copied => 'Copied to Clipboard!';

  @override
  String get copy => 'Copy';

  @override
  String get countryQue => 'For which country would you like to see Spotify Local Charts?';

  @override
  String get createAlbumFold => 'Create folder for Album & Playlist Download';

  @override
  String get createAlbumFoldSub => 'Creates common folder for Songs when Album or Playlist is downloaded';

  @override
  String get createBack => 'Create Backup';

  @override
  String get createBackSub => 'Create backup of your data';

  @override
  String get createNewPlaylist => 'Create New Playlist';

  @override
  String get createPlaylist => 'Create Playlist';

  @override
  String get createYtFold => 'Create different folder for YouTube Downloads';

  @override
  String get createYtFoldSub => 'Creates a different folder for Songs downloaded from YouTube';

  @override
  String get currentTheme => 'Current Theme';

  @override
  String get darkMode => 'Chế độ tối';

  @override
  String get date => 'Date';

  @override
  String get dateAdded => 'Date Added';

  @override
  String get dec => 'Decreasing';

  @override
  String get delete => 'Delete';

  @override
  String get deleted => 'Deleted';

  @override
  String get deleteTheme => 'Delete Theme';

  @override
  String get deleteThemeSubtitle => 'Are you sure you want to delete?';

  @override
  String get disclaimer => 'Disclaimer :';

  @override
  String get disclaimerText => 'We respect your privacy more than anything else. Only your name, which you will enter here, will be recorded.';

  @override
  String get displayName => 'Display Name';

  @override
  String get donateGpay => 'Facebook';

  @override
  String get donateGpaySub => 'Every small love makes me smile :)\nTap to find or Long press to copy FACEBOOK ID';

  @override
  String get down => 'Download';

  @override
  String get downAgain => 'already exists.\nDo you want to download it again?';

  @override
  String get downDone => 'Download Done';

  @override
  String get downFilename => 'Download Name Format';

  @override
  String get downFilenameSub => 'Songs will be downloaded according to this filename format';

  @override
  String get downLocation => 'Download Location';

  @override
  String get downLyrics => 'Download Lyrics';

  @override
  String get downLyricsSub => 'Downloading lyrics along with song, if available';

  @override
  String get downQuality => 'Download Quality';

  @override
  String get downQualitySub => 'Higher quality uses more disk space';

  @override
  String get downed => 'has been downloaded';

  @override
  String get downingAlbum => 'Downloading Album';

  @override
  String get downloadSomething => 'Download Something';

  @override
  String get downs => 'Tải xuống';

  @override
  String get duration => 'Duration';

  @override
  String get edit => 'Edit';

  @override
  String get enableGesture => 'Enable Artwork Gestures';

  @override
  String get enableGestureSub => 'Enables tap, longress, swipe, etc on the Artwork in Player Screen';

  @override
  String get enforceRepeat => 'Enforce Repeating';

  @override
  String get enforceRepeatSub => 'Keep the same repeat option for every session';

  @override
  String get enterName => 'Enter Your Name';

  @override
  String get enterPlaylistLink => 'Enter Playlist Link';

  @override
  String get enterSongsCount => 'Enter no of Songs';

  @override
  String get enterText => 'Enter Text';

  @override
  String get enterThemeName => 'Enter theme name';

  @override
  String get equalizer => 'Equalizer';

  @override
  String get excluded => 'Excluded';

  @override
  String get excludedDetails => 'Songs from selected folders will not be shown';

  @override
  String get exitConfirm => 'Press Back Again to Exit App';

  @override
  String get export => 'Export';

  @override
  String get exported => 'Exported';

  @override
  String get failedCreateBackup => 'Failed to create Backup';

  @override
  String get failedDelete => 'Failed to Delete';

  @override
  String get failedExport => 'Failed to Export';

  @override
  String get failedImport => 'Failed to Import';

  @override
  String get failedTagEdit => 'Failed to edit tags';

  @override
  String get favorites => 'Favorites';

  @override
  String get favSongs => 'Favorite Songs';

  @override
  String get fetchingStream => 'Fetching Audio Stream';

  @override
  String get finish => 'Finish';

  @override
  String get from => 'from';

  @override
  String get getLyricsOnline => 'Search lyrics of local songs';

  @override
  String get getLyricsOnlineSub => 'Search online if lyrics aren\'t available/downloaded for any offline song';

  @override
  String get genre => 'Genre';

  @override
  String get genres => 'Genres';

  @override
  String get getStarted => 'Get Started';

  @override
  String get global => 'Global';

  @override
  String get gmail => 'Gmail';

  @override
  String get guest => 'Guest';

  @override
  String get home => 'Trang chủ';

  @override
  String get homeGreet => 'Xin chào,';

  @override
  String get importFile => 'Import from File';

  @override
  String get importJioSaavn => 'Import from JioSaavn';

  @override
  String get importPlaylist => 'Import Playlist';

  @override
  String get importPublicPlaylist => 'Import Public Playlist';

  @override
  String get importResso => 'Import from Resso';

  @override
  String get importSpotify => 'Import from Spotify';

  @override
  String get importSuccess => 'Successfully imported';

  @override
  String get importYt => 'Import from YouTube';

  @override
  String get inc => 'Increasing';

  @override
  String get includeExcludeFolder => 'Include/Exclude Folders';

  @override
  String get includeExcludeFolderSub => 'Includes/Excludes selected folders from \'My Music\' Section';

  @override
  String get included => 'Included';

  @override
  String get includedDetails => 'Only songs from selected folders will be shown';

  @override
  String get insta => 'Instagram';

  @override
  String get ipAdd => 'IP Address';

  @override
  String get joinTg => 'Join us on Telegram';

  @override
  String get joinTgSub => 'Want to Test beta versions? Join us now!';

  @override
  String get lang => 'Ngôn ngữ';

  @override
  String get langQue => 'Which language songs would you prefer to listen to?';

  @override
  String get langSub => 'Ngôn ngữ ứng dụng';

  @override
  String get lastAdded => 'Last Added';

  @override
  String get lastModified => 'Last Modified';

  @override
  String get lastSession => 'Last Session';

  @override
  String get latest => 'Congrats! You are using the latest version :)';

  @override
  String get library => 'Library';

  @override
  String get like => 'Like';

  @override
  String get likedWork => 'Liked my work?';

  @override
  String get live => 'LIVE NOW';

  @override
  String get liveSearch => 'Live Search';

  @override
  String get liveSearchSub => 'Search songs as soon as user stops typing';

  @override
  String get loadLast => 'Load Last Session on App Start';

  @override
  String get loadLastSub => 'Automatically load last session when app starts';

  @override
  String get local => 'Local';

  @override
  String get lyrics => 'Lyrics';

  @override
  String get madeBy => 'A Flutter codebase is made with ♥\nby @xuanbach';

  @override
  String get mergePlaylists => 'Merge Playlists';

  @override
  String get minAudioAlert => 'Min Audio Length (in sec)';

  @override
  String get minAudioLen => 'Min Audio Length to search music';

  @override
  String get minAudioLenSub => 'Audios with length smaller than this will not be shown in \'My Music\' Section';

  @override
  String get miniButtons => 'Buttons to show in Mini Player';

  @override
  String get miniButtonsSub => 'Tap to change buttons shown in the Mini Player';

  @override
  String get minutes => 'minutes';

  @override
  String get moreInfo => 'More Info';

  @override
  String get musicLang => 'Music Language';

  @override
  String get musicLangSub => 'To display songs on Home Screen';

  @override
  String get musicPlayback => 'Music & Playback';

  @override
  String get myMusic => 'My Music';

  @override
  String get no => 'No';

  @override
  String get noFolderSelected => 'No Folder selected';

  @override
  String get noLangSelected => 'No Music language selected. Select a language to see songs on Home Screen';

  @override
  String get notAvailable => 'Not Available';

  @override
  String get nothingIs => 'Nothing is ';

  @override
  String get nothingPlaying => 'Nothing is Playing';

  @override
  String get nothingTo => 'Nothing to ';

  @override
  String get nowPlaying => 'Now Playing';

  @override
  String get ok => 'Ok';

  @override
  String get or => 'OR';

  @override
  String get others => 'Others';

  @override
  String get pause => 'Pause';

  @override
  String get play => 'Play';

  @override
  String get playerScreenBackground => 'Player Screen Background';

  @override
  String get playerScreenBackgroundSub => 'Selected Background will be shown in Player Screen';

  @override
  String get playNext => 'Play Next';

  @override
  String get playRadio => 'Play Radio';

  @override
  String get playSomething => 'Go and Play Something';

  @override
  String get playing => 'Playing';

  @override
  String get playingCap => 'PLAYING';

  @override
  String get playlistShareText => 'Have a look at my playlist!';

  @override
  String get playlists => 'Danh sách phát';

  @override
  String get popularity => 'Popularity';

  @override
  String get port => 'Port';

  @override
  String get prefReq => 'Mind telling us a few things?';

  @override
  String get proxySet => 'Proxy Settings';

  @override
  String get proxySetSub => 'Change Proxy IP and Port';

  @override
  String get rememberChoice => 'Remember my choice';

  @override
  String get remove => 'Remove';

  @override
  String get removed => 'Removed';

  @override
  String get removedFrom => 'Removed from';

  @override
  String get removedFromFav => 'Removed from Favorites';

  @override
  String get rename => 'Rename';

  @override
  String get reset => 'Reset';

  @override
  String get resetOnSkip => 'Replay on Skip Previous';

  @override
  String get resetOnSkipSub => 'Replay from start instead of skipping to previous song';

  @override
  String get restore => 'Restore';

  @override
  String get restoreSub => 'Restore your data from Backup.\nYou might need to restart app\n';

  @override
  String get resultsNotFound => 'Results Not Found';

  @override
  String get savePlaylist => 'Save Playlist';

  @override
  String get saveTheme => 'Save Theme';

  @override
  String get search => 'Search';

  @override
  String get searchHome => 'Search Home';

  @override
  String get searchText => 'Songs, albums or artists';

  @override
  String get searchVideo => 'Search Video';

  @override
  String get searchYt => 'Search on YouTube';

  @override
  String get selectBackFile => 'Select Backup File';

  @override
  String get selectBackLocation => 'Select Backup Location';

  @override
  String get selectDownLocation => 'Select Download Location';

  @override
  String get selectDur => 'Select a Duration';

  @override
  String get selectExportLocation => 'Select Export Location';

  @override
  String get selectJsonImport => 'Select JSON file to import';

  @override
  String get settings => 'Cài đặt';

  @override
  String get share => 'Share';

  @override
  String get shareApp => 'Share App';

  @override
  String get shareAppSub => 'Let you friends know about us';

  @override
  String get shareAppText => 'Hey! Check out this cool music player app';

  @override
  String get showHere => 'Show Here';

  @override
  String get showHistory => 'Show Search History';

  @override
  String get showHistorySub => 'Show Search History below Search Bar';

  @override
  String get showLast => 'Show Last Session';

  @override
  String get showLastSub => 'Show Last session on Home Screen';

  @override
  String get showPlaylists => 'Show Playlists on Home Screen';

  @override
  String get showQr => 'Show QR Code';

  @override
  String get shuffle => 'Shuffle';

  @override
  String get size => 'Size';

  @override
  String get skip => 'Skip';

  @override
  String get skipNext => 'Skip Next';

  @override
  String get skipPrevious => 'Skip Previous';

  @override
  String get sleepAfter => 'Sleep after N Songs';

  @override
  String get sleepAfterSub => 'Music will stop after playing selected no of songs';

  @override
  String get sleepDur => 'Sleep after a duration of hh:mm';

  @override
  String get sleepDurSub => 'Music will stop after selected duration';

  @override
  String get sleepTimer => 'Sleep Timer';

  @override
  String get sleepTimerSetFor => 'Sleep Timer set for';

  @override
  String get song => 'Song';

  @override
  String get songInfo => 'Song Info';

  @override
  String get songPath => 'Song Path';

  @override
  String get songs => 'Songs';

  @override
  String get sorry => 'SORRY';

  @override
  String get sponsor => 'Sponsor this project';

  @override
  String get spotifyCharts => 'Spotify Charts';

  @override
  String get spotifyPublic => 'Spotify Public';

  @override
  String get spotifyTopCharts => 'Spotify Top Charts';

  @override
  String get stopDown => 'Stop Download';

  @override
  String get stopOnClose => 'Stop music on App Close';

  @override
  String get stopOnCloseSub => 'If turned off, music won\'t stop even after app is \'closed\', until you press stop button. This option is for app \'close\' not when app is in \'background\'. Music will always play in background you don\'t need to change any setting for that.\n';

  @override
  String get streamQuality => 'Streaming Quality';

  @override
  String get streamQualitySub => 'Higher quality uses more data';

  @override
  String get successTagEdit => 'Successfully edited tags !';

  @override
  String get supportEq => 'Support Equalizer';

  @override
  String get supportEqSub => 'Keep this off if you are unable to play songs (in both online and offline mode)';

  @override
  String get tg => 'Telegram';

  @override
  String get tgCh => 'Telegram Channel';

  @override
  String get tgGp => 'Telegram Group';

  @override
  String get theme => 'Theme';

  @override
  String get themeDeleted => 'Theme deleted!';

  @override
  String get themeSaved => 'Theme saved!';

  @override
  String get title => 'Title';

  @override
  String get top => 'Top';

  @override
  String get topCharts => 'Top Charts';

  @override
  String get trendingSearch => 'Trending Search';

  @override
  String get ui => 'App UI';

  @override
  String get undo => 'Undo';

  @override
  String get unknown => 'Unknown';

  @override
  String get unlike => 'Unlike';

  @override
  String get update => 'Update';

  @override
  String get updateAvailable => 'Update Available!';

  @override
  String get upiCopied => 'FACEBOOK ID COPIED!';

  @override
  String get upNext => 'Up Next';

  @override
  String get useAmoled => 'Use Amoled Dark Mode Settings';

  @override
  String get useDenseMini => 'Use Dense Miniplayer';

  @override
  String get useDenseMiniSub => 'Miniplayer height will be reduced';

  @override
  String get useBlurForNowPlayingSub => 'Blur with a lower Opacity will be used as the Background of the Now Playing Section';

  @override
  String get useDown => 'Stream Downloaded Songs, If available';

  @override
  String get useDownSub => 'If song is already downloaded, downloaded song will be played instead of streaming online';

  @override
  String get useHome => 'Use Main Section for Better Quality and Download Support';

  @override
  String get useProxy => 'Use Proxy';

  @override
  String get useProxySub => 'Turn this on if you are not from India and having issues with search, like getting only Indian Songs or not getting any results, etc. You can even use VPN with Indian Server\n';

  @override
  String get useSystemTheme => 'Use System Theme';

  @override
  String get useVpn => 'Not from India? Try using VPN with Indian Server';

  @override
  String get version => 'Version';

  @override
  String get versionSub => 'Tap to check for updates';

  @override
  String get viewAlbum => 'View Album';

  @override
  String get viewArtist => 'View Artist';

  @override
  String get viewAll => 'View All';

  @override
  String get viral => 'Viral';

  @override
  String get watchVideo => 'Watch Video';

  @override
  String get welcome => 'Welcome';

  @override
  String get willPlayNext => 'will Play Next';

  @override
  String get year => 'Year';

  @override
  String get yes => 'Yes';

  @override
  String get yesReplace => 'Yes, but replace old';

  @override
  String get youTube => 'YouTube';

  @override
  String get yourPlaylists => 'Your Playlists';

  @override
  String get ytDownQuality => 'YouTube Download Quality';

  @override
  String get ytDownQualitySub => 'Higher quality uses more disk space';

  @override
  String get ytLiveAlert => 'Video is live. Please wait until the live stream finishes and try again.';

  @override
  String get ytStreamQuality => 'YouTube Streaming Quality';

  @override
  String get ytStreamQualitySub => 'Higher quality uses more data';
}
