import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_vi.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localization/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('vi')
  ];

  /// No description provided for @emailAddress.
  ///
  /// In en, this message translates to:
  /// **'Email address'**
  String get emailAddress;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @pleaseEnter.
  ///
  /// In en, this message translates to:
  /// **'Please enter {fieldName}'**
  String pleaseEnter(String fieldName);

  /// No description provided for @incorrectInputFormat.
  ///
  /// In en, this message translates to:
  /// **'Invalid {inputFormat}'**
  String incorrectInputFormat(String inputFormat);

  /// No description provided for @passwordNotEnoughLength.
  ///
  /// In en, this message translates to:
  /// **'Please input exactly {number} characters for your password'**
  String passwordNotEnoughLength(int number);

  /// No description provided for @continuee.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continuee;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @unknownErrorMsg.
  ///
  /// In en, this message translates to:
  /// **'An error has occurred.\nPlease try again after a while.'**
  String get unknownErrorMsg;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get name;

  /// No description provided for @mailSent.
  ///
  /// In en, this message translates to:
  /// **'Email transmission complete'**
  String get mailSent;

  /// No description provided for @signUpSuccessMsg.
  ///
  /// In en, this message translates to:
  /// **'We have sent you an email confirmation. \nPlease follow the link provided to register your account'**
  String get signUpSuccessMsg;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create account'**
  String get createAccount;

  /// No description provided for @passwordRequirementsMsg.
  ///
  /// In en, this message translates to:
  /// **'Please enter at least 8 characters'**
  String get passwordRequirementsMsg;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @noConnectionTitle.
  ///
  /// In en, this message translates to:
  /// **'No internet connection.'**
  String get noConnectionTitle;

  /// No description provided for @noConnectionMessage.
  ///
  /// In en, this message translates to:
  /// **'No internet connection.\nPlease check your network connection\n and try again.'**
  String get noConnectionMessage;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @aboard.
  ///
  /// In en, this message translates to:
  /// **'Aboard'**
  String get aboard;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @aboutLine1.
  ///
  /// In en, this message translates to:
  /// **'This is an open-source project and can be found on'**
  String get aboutLine1;

  /// No description provided for @aboutLine2.
  ///
  /// In en, this message translates to:
  /// **'If you liked my work\nshow some ♥ and ⭐ the repo'**
  String get aboutLine2;

  /// No description provided for @accent.
  ///
  /// In en, this message translates to:
  /// **'Accent Color & Hue'**
  String get accent;

  /// No description provided for @addNew.
  ///
  /// In en, this message translates to:
  /// **'Add New'**
  String get addNew;

  /// No description provided for @addSomething.
  ///
  /// In en, this message translates to:
  /// **'Go and Add Something'**
  String get addSomething;

  /// No description provided for @addToPlaylist.
  ///
  /// In en, this message translates to:
  /// **'Add to Playlist'**
  String get addToPlaylist;

  /// No description provided for @addToQueue.
  ///
  /// In en, this message translates to:
  /// **'Add to Queue'**
  String get addToQueue;

  /// No description provided for @addedBy.
  ///
  /// In en, this message translates to:
  /// **'Added by'**
  String get addedBy;

  /// No description provided for @addedTo.
  ///
  /// In en, this message translates to:
  /// **'Added to'**
  String get addedTo;

  /// No description provided for @addedToFav.
  ///
  /// In en, this message translates to:
  /// **'Added to Favorites'**
  String get addedToFav;

  /// No description provided for @addedToPlaylists.
  ///
  /// In en, this message translates to:
  /// **'Added to Playlists'**
  String get addedToPlaylists;

  /// No description provided for @addedToQueue.
  ///
  /// In en, this message translates to:
  /// **'Added to Queue'**
  String get addedToQueue;

  /// No description provided for @adjustSpeed.
  ///
  /// In en, this message translates to:
  /// **'Adjust Speed'**
  String get adjustSpeed;

  /// No description provided for @album.
  ///
  /// In en, this message translates to:
  /// **'Album'**
  String get album;

  /// No description provided for @albumArtist.
  ///
  /// In en, this message translates to:
  /// **'Album Artist'**
  String get albumArtist;

  /// No description provided for @albums.
  ///
  /// In en, this message translates to:
  /// **'Albums'**
  String get albums;

  /// No description provided for @alphabetical.
  ///
  /// In en, this message translates to:
  /// **'Alphabetical'**
  String get alphabetical;

  /// No description provided for @alreadyExists.
  ///
  /// In en, this message translates to:
  /// **'Already Exists'**
  String get alreadyExists;

  /// No description provided for @alreadyInQueue.
  ///
  /// In en, this message translates to:
  /// **'Already in Queue'**
  String get alreadyInQueue;

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'BlackHole'**
  String get appTitle;

  /// No description provided for @artist.
  ///
  /// In en, this message translates to:
  /// **'Artist'**
  String get artist;

  /// No description provided for @artists.
  ///
  /// In en, this message translates to:
  /// **'Artists'**
  String get artists;

  /// No description provided for @autoBack.
  ///
  /// In en, this message translates to:
  /// **'Auto Backup'**
  String get autoBack;

  /// No description provided for @autoBackLocation.
  ///
  /// In en, this message translates to:
  /// **'Auto Backup Location'**
  String get autoBackLocation;

  /// No description provided for @autoBackSub.
  ///
  /// In en, this message translates to:
  /// **'Automatically backup data'**
  String get autoBackSub;

  /// No description provided for @autoplay.
  ///
  /// In en, this message translates to:
  /// **'Autoplay'**
  String get autoplay;

  /// No description provided for @autoplaySub.
  ///
  /// In en, this message translates to:
  /// **'Automatically add related songs to the queue'**
  String get autoplaySub;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @backNRest.
  ///
  /// In en, this message translates to:
  /// **'Backup & Restore'**
  String get backNRest;

  /// No description provided for @backupSuccess.
  ///
  /// In en, this message translates to:
  /// **'Backup Successful'**
  String get backupSuccess;

  /// No description provided for @bgGrad.
  ///
  /// In en, this message translates to:
  /// **'Background Gradient'**
  String get bgGrad;

  /// No description provided for @bgGradSub.
  ///
  /// In en, this message translates to:
  /// **'Gradient used as background everywhere'**
  String get bgGradSub;

  /// No description provided for @blacklistedHomeSections.
  ///
  /// In en, this message translates to:
  /// **'Blacklisted Home Sections'**
  String get blacklistedHomeSections;

  /// No description provided for @blacklistedHomeSectionsSub.
  ///
  /// In en, this message translates to:
  /// **'Sections with these titles won\'t be shown on Home Screen'**
  String get blacklistedHomeSectionsSub;

  /// No description provided for @bottomGrad.
  ///
  /// In en, this message translates to:
  /// **'Bottom Sheets Gradient'**
  String get bottomGrad;

  /// No description provided for @bottomGradSub.
  ///
  /// In en, this message translates to:
  /// **'Gradient used in Bottom Sheets'**
  String get bottomGradSub;

  /// No description provided for @buyCoffee.
  ///
  /// In en, this message translates to:
  /// **'Buy me a coffee'**
  String get buyCoffee;

  /// No description provided for @cache.
  ///
  /// In en, this message translates to:
  /// **'Cache'**
  String get cache;

  /// No description provided for @cacheSong.
  ///
  /// In en, this message translates to:
  /// **'Cache Songs'**
  String get cacheSong;

  /// No description provided for @cacheSongSub.
  ///
  /// In en, this message translates to:
  /// **'Songs will be cached for future playback. Additional space on your device will be taken'**
  String get cacheSongSub;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @cantAddToQueue.
  ///
  /// In en, this message translates to:
  /// **'Can\'t add Online Song to Offline Queue'**
  String get cantAddToQueue;

  /// No description provided for @canvasColor.
  ///
  /// In en, this message translates to:
  /// **'Canvas Color'**
  String get canvasColor;

  /// No description provided for @canvasColorSub.
  ///
  /// In en, this message translates to:
  /// **'Color of Background Canvas'**
  String get canvasColorSub;

  /// No description provided for @cardColor.
  ///
  /// In en, this message translates to:
  /// **'Card Color'**
  String get cardColor;

  /// No description provided for @cardColorSub.
  ///
  /// In en, this message translates to:
  /// **'Color of Search Bar, Alert Dialogs, Cards'**
  String get cardColorSub;

  /// No description provided for @cardGrad.
  ///
  /// In en, this message translates to:
  /// **'Card Gradient'**
  String get cardGrad;

  /// No description provided for @cardGradSub.
  ///
  /// In en, this message translates to:
  /// **'Gradient used in Cards'**
  String get cardGradSub;

  /// No description provided for @changeDefault.
  ///
  /// In en, this message translates to:
  /// **'Change to Default'**
  String get changeDefault;

  /// No description provided for @changeOrder.
  ///
  /// In en, this message translates to:
  /// **'Long Press to change order\n'**
  String get changeOrder;

  /// No description provided for @chartLocation.
  ///
  /// In en, this message translates to:
  /// **'Spotify Local Charts Location'**
  String get chartLocation;

  /// No description provided for @chartLocationSub.
  ///
  /// In en, this message translates to:
  /// **'Country for Top Spotify Local Charts'**
  String get chartLocationSub;

  /// No description provided for @checkingUpdate.
  ///
  /// In en, this message translates to:
  /// **'Checking for Updates…'**
  String get checkingUpdate;

  /// No description provided for @checkUpdate.
  ///
  /// In en, this message translates to:
  /// **'Auto check for Updates'**
  String get checkUpdate;

  /// No description provided for @checkUpdateSub.
  ///
  /// In en, this message translates to:
  /// **'If you downloaded BlackHole from any app repository like \'F-Droid\', \'IzzyOnDroid\', etc which provide update options, keep this OFF. Whereas, If you downloaded it from \'GitHub\' or any other source which doesn\'t provide auto updates then turn this ON, so as to receive update alerts\n'**
  String get checkUpdateSub;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @clearAll.
  ///
  /// In en, this message translates to:
  /// **'Clear All'**
  String get clearAll;

  /// No description provided for @clearCache.
  ///
  /// In en, this message translates to:
  /// **'Clear Cached Details'**
  String get clearCache;

  /// No description provided for @clearCacheSub.
  ///
  /// In en, this message translates to:
  /// **'Deletes Cached details including Homepage, Spotify Top Charts, YouTube and Last Session Data. Usually app automatically clears them when data become large\n'**
  String get clearCacheSub;

  /// No description provided for @confirmViewable.
  ///
  /// In en, this message translates to:
  /// **'Make sure the playlist is viewable'**
  String get confirmViewable;

  /// No description provided for @connectingRadio.
  ///
  /// In en, this message translates to:
  /// **'Connecting to Radio…'**
  String get connectingRadio;

  /// No description provided for @contactUs.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get contactUs;

  /// No description provided for @contactUsSub.
  ///
  /// In en, this message translates to:
  /// **'Feedbacks Appreciated!'**
  String get contactUsSub;

  /// No description provided for @convertingSongs.
  ///
  /// In en, this message translates to:
  /// **'Converting Songs'**
  String get convertingSongs;

  /// No description provided for @copied.
  ///
  /// In en, this message translates to:
  /// **'Copied to Clipboard!'**
  String get copied;

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// No description provided for @countryQue.
  ///
  /// In en, this message translates to:
  /// **'For which country would you like to see Spotify Local Charts?'**
  String get countryQue;

  /// No description provided for @createAlbumFold.
  ///
  /// In en, this message translates to:
  /// **'Create folder for Album & Playlist Download'**
  String get createAlbumFold;

  /// No description provided for @createAlbumFoldSub.
  ///
  /// In en, this message translates to:
  /// **'Creates common folder for Songs when Album or Playlist is downloaded'**
  String get createAlbumFoldSub;

  /// No description provided for @createBack.
  ///
  /// In en, this message translates to:
  /// **'Create Backup'**
  String get createBack;

  /// No description provided for @createBackSub.
  ///
  /// In en, this message translates to:
  /// **'Create backup of your data'**
  String get createBackSub;

  /// No description provided for @createNewPlaylist.
  ///
  /// In en, this message translates to:
  /// **'Create New Playlist'**
  String get createNewPlaylist;

  /// No description provided for @createPlaylist.
  ///
  /// In en, this message translates to:
  /// **'Create Playlist'**
  String get createPlaylist;

  /// No description provided for @createYtFold.
  ///
  /// In en, this message translates to:
  /// **'Create different folder for YouTube Downloads'**
  String get createYtFold;

  /// No description provided for @createYtFoldSub.
  ///
  /// In en, this message translates to:
  /// **'Creates a different folder for Songs downloaded from YouTube'**
  String get createYtFoldSub;

  /// No description provided for @currentTheme.
  ///
  /// In en, this message translates to:
  /// **'Current Theme'**
  String get currentTheme;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get darkMode;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @dateAdded.
  ///
  /// In en, this message translates to:
  /// **'Date Added'**
  String get dateAdded;

  /// No description provided for @dec.
  ///
  /// In en, this message translates to:
  /// **'Decreasing'**
  String get dec;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @deleted.
  ///
  /// In en, this message translates to:
  /// **'Deleted'**
  String get deleted;

  /// No description provided for @deleteTheme.
  ///
  /// In en, this message translates to:
  /// **'Delete Theme'**
  String get deleteTheme;

  /// No description provided for @deleteThemeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete?'**
  String get deleteThemeSubtitle;

  /// No description provided for @disclaimer.
  ///
  /// In en, this message translates to:
  /// **'Disclaimer :'**
  String get disclaimer;

  /// No description provided for @disclaimerText.
  ///
  /// In en, this message translates to:
  /// **'We respect your privacy more than anything else. Only your name, which you will enter here, will be recorded.'**
  String get disclaimerText;

  /// No description provided for @displayName.
  ///
  /// In en, this message translates to:
  /// **'Display Name'**
  String get displayName;

  /// No description provided for @donateGpay.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get donateGpay;

  /// No description provided for @donateGpaySub.
  ///
  /// In en, this message translates to:
  /// **'Every small love makes me smile :)\nTap to find or Long press to copy FACEBOOK ID'**
  String get donateGpaySub;

  /// No description provided for @down.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get down;

  /// No description provided for @downAgain.
  ///
  /// In en, this message translates to:
  /// **'already exists.\nDo you want to download it again?'**
  String get downAgain;

  /// No description provided for @downDone.
  ///
  /// In en, this message translates to:
  /// **'Download Done'**
  String get downDone;

  /// No description provided for @downFilename.
  ///
  /// In en, this message translates to:
  /// **'Download Name Format'**
  String get downFilename;

  /// No description provided for @downFilenameSub.
  ///
  /// In en, this message translates to:
  /// **'Songs will be downloaded according to this filename format'**
  String get downFilenameSub;

  /// No description provided for @downLocation.
  ///
  /// In en, this message translates to:
  /// **'Download Location'**
  String get downLocation;

  /// No description provided for @downLyrics.
  ///
  /// In en, this message translates to:
  /// **'Download Lyrics'**
  String get downLyrics;

  /// No description provided for @downLyricsSub.
  ///
  /// In en, this message translates to:
  /// **'Downloading lyrics along with song, if available'**
  String get downLyricsSub;

  /// No description provided for @downQuality.
  ///
  /// In en, this message translates to:
  /// **'Download Quality'**
  String get downQuality;

  /// No description provided for @downQualitySub.
  ///
  /// In en, this message translates to:
  /// **'Higher quality uses more disk space'**
  String get downQualitySub;

  /// No description provided for @downed.
  ///
  /// In en, this message translates to:
  /// **'has been downloaded'**
  String get downed;

  /// No description provided for @downingAlbum.
  ///
  /// In en, this message translates to:
  /// **'Downloading Album'**
  String get downingAlbum;

  /// No description provided for @downloadSomething.
  ///
  /// In en, this message translates to:
  /// **'Download Something'**
  String get downloadSomething;

  /// No description provided for @downs.
  ///
  /// In en, this message translates to:
  /// **'Downloads'**
  String get downs;

  /// No description provided for @duration.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get duration;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @enableGesture.
  ///
  /// In en, this message translates to:
  /// **'Enable Artwork Gestures'**
  String get enableGesture;

  /// No description provided for @enableGestureSub.
  ///
  /// In en, this message translates to:
  /// **'Enables tap, longress, swipe, etc on the Artwork in Player Screen'**
  String get enableGestureSub;

  /// No description provided for @enforceRepeat.
  ///
  /// In en, this message translates to:
  /// **'Enforce Repeating'**
  String get enforceRepeat;

  /// No description provided for @enforceRepeatSub.
  ///
  /// In en, this message translates to:
  /// **'Keep the same repeat option for every session'**
  String get enforceRepeatSub;

  /// No description provided for @enterName.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Name'**
  String get enterName;

  /// No description provided for @enterPlaylistLink.
  ///
  /// In en, this message translates to:
  /// **'Enter Playlist Link'**
  String get enterPlaylistLink;

  /// No description provided for @enterSongsCount.
  ///
  /// In en, this message translates to:
  /// **'Enter no of Songs'**
  String get enterSongsCount;

  /// No description provided for @enterText.
  ///
  /// In en, this message translates to:
  /// **'Enter Text'**
  String get enterText;

  /// No description provided for @enterThemeName.
  ///
  /// In en, this message translates to:
  /// **'Enter theme name'**
  String get enterThemeName;

  /// No description provided for @equalizer.
  ///
  /// In en, this message translates to:
  /// **'Equalizer'**
  String get equalizer;

  /// No description provided for @excluded.
  ///
  /// In en, this message translates to:
  /// **'Excluded'**
  String get excluded;

  /// No description provided for @excludedDetails.
  ///
  /// In en, this message translates to:
  /// **'Songs from selected folders will not be shown'**
  String get excludedDetails;

  /// No description provided for @exitConfirm.
  ///
  /// In en, this message translates to:
  /// **'Press Back Again to Exit App'**
  String get exitConfirm;

  /// No description provided for @export.
  ///
  /// In en, this message translates to:
  /// **'Export'**
  String get export;

  /// No description provided for @exported.
  ///
  /// In en, this message translates to:
  /// **'Exported'**
  String get exported;

  /// No description provided for @failedCreateBackup.
  ///
  /// In en, this message translates to:
  /// **'Failed to create Backup'**
  String get failedCreateBackup;

  /// No description provided for @failedDelete.
  ///
  /// In en, this message translates to:
  /// **'Failed to Delete'**
  String get failedDelete;

  /// No description provided for @failedExport.
  ///
  /// In en, this message translates to:
  /// **'Failed to Export'**
  String get failedExport;

  /// No description provided for @failedImport.
  ///
  /// In en, this message translates to:
  /// **'Failed to Import'**
  String get failedImport;

  /// No description provided for @failedTagEdit.
  ///
  /// In en, this message translates to:
  /// **'Failed to edit tags'**
  String get failedTagEdit;

  /// No description provided for @favorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// No description provided for @favSongs.
  ///
  /// In en, this message translates to:
  /// **'Favorite Songs'**
  String get favSongs;

  /// No description provided for @fetchingStream.
  ///
  /// In en, this message translates to:
  /// **'Fetching Audio Stream'**
  String get fetchingStream;

  /// No description provided for @finish.
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get finish;

  /// No description provided for @from.
  ///
  /// In en, this message translates to:
  /// **'from'**
  String get from;

  /// No description provided for @getLyricsOnline.
  ///
  /// In en, this message translates to:
  /// **'Search lyrics of local songs'**
  String get getLyricsOnline;

  /// No description provided for @getLyricsOnlineSub.
  ///
  /// In en, this message translates to:
  /// **'Search online if lyrics aren\'t available/downloaded for any offline song'**
  String get getLyricsOnlineSub;

  /// No description provided for @genre.
  ///
  /// In en, this message translates to:
  /// **'Genre'**
  String get genre;

  /// No description provided for @genres.
  ///
  /// In en, this message translates to:
  /// **'Genres'**
  String get genres;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// No description provided for @global.
  ///
  /// In en, this message translates to:
  /// **'Global'**
  String get global;

  /// No description provided for @gmail.
  ///
  /// In en, this message translates to:
  /// **'Gmail'**
  String get gmail;

  /// No description provided for @guest.
  ///
  /// In en, this message translates to:
  /// **'Guest'**
  String get guest;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @homeGreet.
  ///
  /// In en, this message translates to:
  /// **'Hi There,'**
  String get homeGreet;

  /// No description provided for @importFile.
  ///
  /// In en, this message translates to:
  /// **'Import from File'**
  String get importFile;

  /// No description provided for @importJioSaavn.
  ///
  /// In en, this message translates to:
  /// **'Import from JioSaavn'**
  String get importJioSaavn;

  /// No description provided for @importPlaylist.
  ///
  /// In en, this message translates to:
  /// **'Import Playlist'**
  String get importPlaylist;

  /// No description provided for @importPublicPlaylist.
  ///
  /// In en, this message translates to:
  /// **'Import Public Playlist'**
  String get importPublicPlaylist;

  /// No description provided for @importResso.
  ///
  /// In en, this message translates to:
  /// **'Import from Resso'**
  String get importResso;

  /// No description provided for @importSpotify.
  ///
  /// In en, this message translates to:
  /// **'Import from Spotify'**
  String get importSpotify;

  /// No description provided for @importSuccess.
  ///
  /// In en, this message translates to:
  /// **'Successfully imported'**
  String get importSuccess;

  /// No description provided for @importYt.
  ///
  /// In en, this message translates to:
  /// **'Import from YouTube'**
  String get importYt;

  /// No description provided for @inc.
  ///
  /// In en, this message translates to:
  /// **'Increasing'**
  String get inc;

  /// No description provided for @includeExcludeFolder.
  ///
  /// In en, this message translates to:
  /// **'Include/Exclude Folders'**
  String get includeExcludeFolder;

  /// No description provided for @includeExcludeFolderSub.
  ///
  /// In en, this message translates to:
  /// **'Includes/Excludes selected folders from \'My Music\' Section'**
  String get includeExcludeFolderSub;

  /// No description provided for @included.
  ///
  /// In en, this message translates to:
  /// **'Included'**
  String get included;

  /// No description provided for @includedDetails.
  ///
  /// In en, this message translates to:
  /// **'Only songs from selected folders will be shown'**
  String get includedDetails;

  /// No description provided for @insta.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get insta;

  /// No description provided for @ipAdd.
  ///
  /// In en, this message translates to:
  /// **'IP Address'**
  String get ipAdd;

  /// No description provided for @joinTg.
  ///
  /// In en, this message translates to:
  /// **'Join us on Telegram'**
  String get joinTg;

  /// No description provided for @joinTgSub.
  ///
  /// In en, this message translates to:
  /// **'Want to Test beta versions? Join us now!'**
  String get joinTgSub;

  /// No description provided for @lang.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get lang;

  /// No description provided for @langQue.
  ///
  /// In en, this message translates to:
  /// **'Which language songs would you prefer to listen to?'**
  String get langQue;

  /// No description provided for @langSub.
  ///
  /// In en, this message translates to:
  /// **'App Text Language'**
  String get langSub;

  /// No description provided for @lastAdded.
  ///
  /// In en, this message translates to:
  /// **'Last Added'**
  String get lastAdded;

  /// No description provided for @lastModified.
  ///
  /// In en, this message translates to:
  /// **'Last Modified'**
  String get lastModified;

  /// No description provided for @lastSession.
  ///
  /// In en, this message translates to:
  /// **'Last Session'**
  String get lastSession;

  /// No description provided for @latest.
  ///
  /// In en, this message translates to:
  /// **'Congrats! You are using the latest version :)'**
  String get latest;

  /// No description provided for @library.
  ///
  /// In en, this message translates to:
  /// **'Library'**
  String get library;

  /// No description provided for @like.
  ///
  /// In en, this message translates to:
  /// **'Like'**
  String get like;

  /// No description provided for @likedWork.
  ///
  /// In en, this message translates to:
  /// **'Liked my work?'**
  String get likedWork;

  /// No description provided for @live.
  ///
  /// In en, this message translates to:
  /// **'LIVE NOW'**
  String get live;

  /// No description provided for @liveSearch.
  ///
  /// In en, this message translates to:
  /// **'Live Search'**
  String get liveSearch;

  /// No description provided for @liveSearchSub.
  ///
  /// In en, this message translates to:
  /// **'Search songs as soon as user stops typing'**
  String get liveSearchSub;

  /// No description provided for @loadLast.
  ///
  /// In en, this message translates to:
  /// **'Load Last Session on App Start'**
  String get loadLast;

  /// No description provided for @loadLastSub.
  ///
  /// In en, this message translates to:
  /// **'Automatically load last session when app starts'**
  String get loadLastSub;

  /// No description provided for @local.
  ///
  /// In en, this message translates to:
  /// **'Local'**
  String get local;

  /// No description provided for @lyrics.
  ///
  /// In en, this message translates to:
  /// **'Lyrics'**
  String get lyrics;

  /// No description provided for @madeBy.
  ///
  /// In en, this message translates to:
  /// **'A Flutter codebase is made with ❤️\nby @xuanbach'**
  String get madeBy;

  /// No description provided for @mergePlaylists.
  ///
  /// In en, this message translates to:
  /// **'Merge Playlists'**
  String get mergePlaylists;

  /// No description provided for @minAudioAlert.
  ///
  /// In en, this message translates to:
  /// **'Min Audio Length (in sec)'**
  String get minAudioAlert;

  /// No description provided for @minAudioLen.
  ///
  /// In en, this message translates to:
  /// **'Min Audio Length to search music'**
  String get minAudioLen;

  /// No description provided for @minAudioLenSub.
  ///
  /// In en, this message translates to:
  /// **'Audios with length smaller than this will not be shown in \'My Music\' Section'**
  String get minAudioLenSub;

  /// No description provided for @miniButtons.
  ///
  /// In en, this message translates to:
  /// **'Buttons to show in Mini Player'**
  String get miniButtons;

  /// No description provided for @miniButtonsSub.
  ///
  /// In en, this message translates to:
  /// **'Tap to change buttons shown in the Mini Player'**
  String get miniButtonsSub;

  /// No description provided for @minutes.
  ///
  /// In en, this message translates to:
  /// **'minutes'**
  String get minutes;

  /// No description provided for @moreInfo.
  ///
  /// In en, this message translates to:
  /// **'More Info'**
  String get moreInfo;

  /// No description provided for @musicLang.
  ///
  /// In en, this message translates to:
  /// **'Music Language'**
  String get musicLang;

  /// No description provided for @musicLangSub.
  ///
  /// In en, this message translates to:
  /// **'To display songs on Home Screen'**
  String get musicLangSub;

  /// No description provided for @musicPlayback.
  ///
  /// In en, this message translates to:
  /// **'Music & Playback'**
  String get musicPlayback;

  /// No description provided for @myMusic.
  ///
  /// In en, this message translates to:
  /// **'My Music'**
  String get myMusic;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @noFolderSelected.
  ///
  /// In en, this message translates to:
  /// **'No Folder selected'**
  String get noFolderSelected;

  /// No description provided for @noLangSelected.
  ///
  /// In en, this message translates to:
  /// **'No Music language selected. Select a language to see songs on Home Screen'**
  String get noLangSelected;

  /// No description provided for @notAvailable.
  ///
  /// In en, this message translates to:
  /// **'Not Available'**
  String get notAvailable;

  /// No description provided for @nothingIs.
  ///
  /// In en, this message translates to:
  /// **'Nothing is '**
  String get nothingIs;

  /// No description provided for @nothingPlaying.
  ///
  /// In en, this message translates to:
  /// **'Nothing is Playing'**
  String get nothingPlaying;

  /// No description provided for @nothingTo.
  ///
  /// In en, this message translates to:
  /// **'Nothing to '**
  String get nothingTo;

  /// No description provided for @nowPlaying.
  ///
  /// In en, this message translates to:
  /// **'Now Playing'**
  String get nowPlaying;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get ok;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'OR'**
  String get or;

  /// No description provided for @others.
  ///
  /// In en, this message translates to:
  /// **'Others'**
  String get others;

  /// No description provided for @pause.
  ///
  /// In en, this message translates to:
  /// **'Pause'**
  String get pause;

  /// No description provided for @play.
  ///
  /// In en, this message translates to:
  /// **'Play'**
  String get play;

  /// No description provided for @playerScreenBackground.
  ///
  /// In en, this message translates to:
  /// **'Player Screen Background'**
  String get playerScreenBackground;

  /// No description provided for @playerScreenBackgroundSub.
  ///
  /// In en, this message translates to:
  /// **'Selected Background will be shown in Player Screen'**
  String get playerScreenBackgroundSub;

  /// No description provided for @playNext.
  ///
  /// In en, this message translates to:
  /// **'Play Next'**
  String get playNext;

  /// No description provided for @playRadio.
  ///
  /// In en, this message translates to:
  /// **'Play Radio'**
  String get playRadio;

  /// No description provided for @playSomething.
  ///
  /// In en, this message translates to:
  /// **'Go and Play Something'**
  String get playSomething;

  /// No description provided for @playing.
  ///
  /// In en, this message translates to:
  /// **'Playing'**
  String get playing;

  /// No description provided for @playingCap.
  ///
  /// In en, this message translates to:
  /// **'PLAYING'**
  String get playingCap;

  /// No description provided for @playlistShareText.
  ///
  /// In en, this message translates to:
  /// **'Have a look at my playlist!'**
  String get playlistShareText;

  /// No description provided for @playlists.
  ///
  /// In en, this message translates to:
  /// **'Playlists'**
  String get playlists;

  /// No description provided for @popularity.
  ///
  /// In en, this message translates to:
  /// **'Popularity'**
  String get popularity;

  /// No description provided for @port.
  ///
  /// In en, this message translates to:
  /// **'Port'**
  String get port;

  /// No description provided for @prefReq.
  ///
  /// In en, this message translates to:
  /// **'Mind telling us a few things?'**
  String get prefReq;

  /// No description provided for @proxySet.
  ///
  /// In en, this message translates to:
  /// **'Proxy Settings'**
  String get proxySet;

  /// No description provided for @proxySetSub.
  ///
  /// In en, this message translates to:
  /// **'Change Proxy IP and Port'**
  String get proxySetSub;

  /// No description provided for @rememberChoice.
  ///
  /// In en, this message translates to:
  /// **'Remember my choice'**
  String get rememberChoice;

  /// No description provided for @remove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get remove;

  /// No description provided for @removed.
  ///
  /// In en, this message translates to:
  /// **'Removed'**
  String get removed;

  /// No description provided for @removedFrom.
  ///
  /// In en, this message translates to:
  /// **'Removed from'**
  String get removedFrom;

  /// No description provided for @removedFromFav.
  ///
  /// In en, this message translates to:
  /// **'Removed from Favorites'**
  String get removedFromFav;

  /// No description provided for @rename.
  ///
  /// In en, this message translates to:
  /// **'Rename'**
  String get rename;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @resetOnSkip.
  ///
  /// In en, this message translates to:
  /// **'Replay on Skip Previous'**
  String get resetOnSkip;

  /// No description provided for @resetOnSkipSub.
  ///
  /// In en, this message translates to:
  /// **'Replay from start instead of skipping to previous song'**
  String get resetOnSkipSub;

  /// No description provided for @restore.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get restore;

  /// No description provided for @restoreSub.
  ///
  /// In en, this message translates to:
  /// **'Restore your data from Backup.\nYou might need to restart app\n'**
  String get restoreSub;

  /// No description provided for @resultsNotFound.
  ///
  /// In en, this message translates to:
  /// **'Results Not Found'**
  String get resultsNotFound;

  /// No description provided for @savePlaylist.
  ///
  /// In en, this message translates to:
  /// **'Save Playlist'**
  String get savePlaylist;

  /// No description provided for @saveTheme.
  ///
  /// In en, this message translates to:
  /// **'Save Theme'**
  String get saveTheme;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @searchHome.
  ///
  /// In en, this message translates to:
  /// **'Search Home'**
  String get searchHome;

  /// No description provided for @searchText.
  ///
  /// In en, this message translates to:
  /// **'Songs, albums or artists'**
  String get searchText;

  /// No description provided for @searchVideo.
  ///
  /// In en, this message translates to:
  /// **'Search Video'**
  String get searchVideo;

  /// No description provided for @searchYt.
  ///
  /// In en, this message translates to:
  /// **'Search on YouTube'**
  String get searchYt;

  /// No description provided for @selectBackFile.
  ///
  /// In en, this message translates to:
  /// **'Select Backup File'**
  String get selectBackFile;

  /// No description provided for @selectBackLocation.
  ///
  /// In en, this message translates to:
  /// **'Select Backup Location'**
  String get selectBackLocation;

  /// No description provided for @selectDownLocation.
  ///
  /// In en, this message translates to:
  /// **'Select Download Location'**
  String get selectDownLocation;

  /// No description provided for @selectDur.
  ///
  /// In en, this message translates to:
  /// **'Select a Duration'**
  String get selectDur;

  /// No description provided for @selectExportLocation.
  ///
  /// In en, this message translates to:
  /// **'Select Export Location'**
  String get selectExportLocation;

  /// No description provided for @selectJsonImport.
  ///
  /// In en, this message translates to:
  /// **'Select JSON file to import'**
  String get selectJsonImport;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @shareApp.
  ///
  /// In en, this message translates to:
  /// **'Share App'**
  String get shareApp;

  /// No description provided for @shareAppSub.
  ///
  /// In en, this message translates to:
  /// **'Let you friends know about us'**
  String get shareAppSub;

  /// No description provided for @shareAppText.
  ///
  /// In en, this message translates to:
  /// **'Hey! Check out this cool music player app'**
  String get shareAppText;

  /// No description provided for @showHere.
  ///
  /// In en, this message translates to:
  /// **'Show Here'**
  String get showHere;

  /// No description provided for @showHistory.
  ///
  /// In en, this message translates to:
  /// **'Show Search History'**
  String get showHistory;

  /// No description provided for @showHistorySub.
  ///
  /// In en, this message translates to:
  /// **'Show Search History below Search Bar'**
  String get showHistorySub;

  /// No description provided for @showLast.
  ///
  /// In en, this message translates to:
  /// **'Show Last Session'**
  String get showLast;

  /// No description provided for @showLastSub.
  ///
  /// In en, this message translates to:
  /// **'Show Last session on Home Screen'**
  String get showLastSub;

  /// No description provided for @showPlaylists.
  ///
  /// In en, this message translates to:
  /// **'Show Playlists on Home Screen'**
  String get showPlaylists;

  /// No description provided for @showQr.
  ///
  /// In en, this message translates to:
  /// **'Show QR Code'**
  String get showQr;

  /// No description provided for @shuffle.
  ///
  /// In en, this message translates to:
  /// **'Shuffle'**
  String get shuffle;

  /// No description provided for @size.
  ///
  /// In en, this message translates to:
  /// **'Size'**
  String get size;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @skipNext.
  ///
  /// In en, this message translates to:
  /// **'Skip Next'**
  String get skipNext;

  /// No description provided for @skipPrevious.
  ///
  /// In en, this message translates to:
  /// **'Skip Previous'**
  String get skipPrevious;

  /// No description provided for @sleepAfter.
  ///
  /// In en, this message translates to:
  /// **'Sleep after N Songs'**
  String get sleepAfter;

  /// No description provided for @sleepAfterSub.
  ///
  /// In en, this message translates to:
  /// **'Music will stop after playing selected no of songs'**
  String get sleepAfterSub;

  /// No description provided for @sleepDur.
  ///
  /// In en, this message translates to:
  /// **'Sleep after a duration of hh:mm'**
  String get sleepDur;

  /// No description provided for @sleepDurSub.
  ///
  /// In en, this message translates to:
  /// **'Music will stop after selected duration'**
  String get sleepDurSub;

  /// No description provided for @sleepTimer.
  ///
  /// In en, this message translates to:
  /// **'Sleep Timer'**
  String get sleepTimer;

  /// No description provided for @sleepTimerSetFor.
  ///
  /// In en, this message translates to:
  /// **'Sleep Timer set for'**
  String get sleepTimerSetFor;

  /// No description provided for @song.
  ///
  /// In en, this message translates to:
  /// **'Song'**
  String get song;

  /// No description provided for @songInfo.
  ///
  /// In en, this message translates to:
  /// **'Song Info'**
  String get songInfo;

  /// No description provided for @songPath.
  ///
  /// In en, this message translates to:
  /// **'Song Path'**
  String get songPath;

  /// No description provided for @songs.
  ///
  /// In en, this message translates to:
  /// **'Songs'**
  String get songs;

  /// No description provided for @sorry.
  ///
  /// In en, this message translates to:
  /// **'SORRY'**
  String get sorry;

  /// No description provided for @sponsor.
  ///
  /// In en, this message translates to:
  /// **'Sponsor this project'**
  String get sponsor;

  /// No description provided for @spotifyCharts.
  ///
  /// In en, this message translates to:
  /// **'Spotify Charts'**
  String get spotifyCharts;

  /// No description provided for @spotifyPublic.
  ///
  /// In en, this message translates to:
  /// **'Spotify Public'**
  String get spotifyPublic;

  /// No description provided for @spotifyTopCharts.
  ///
  /// In en, this message translates to:
  /// **'Spotify Top Charts'**
  String get spotifyTopCharts;

  /// No description provided for @stopDown.
  ///
  /// In en, this message translates to:
  /// **'Stop Download'**
  String get stopDown;

  /// No description provided for @stopOnClose.
  ///
  /// In en, this message translates to:
  /// **'Stop music on App Close'**
  String get stopOnClose;

  /// No description provided for @stopOnCloseSub.
  ///
  /// In en, this message translates to:
  /// **'If turned off, music won\'t stop even after app is \'closed\', until you press stop button. This option is for app \'close\' not when app is in \'background\'. Music will always play in background you don\'t need to change any setting for that.\n'**
  String get stopOnCloseSub;

  /// No description provided for @streamQuality.
  ///
  /// In en, this message translates to:
  /// **'Streaming Quality'**
  String get streamQuality;

  /// No description provided for @streamQualitySub.
  ///
  /// In en, this message translates to:
  /// **'Higher quality uses more data'**
  String get streamQualitySub;

  /// No description provided for @successTagEdit.
  ///
  /// In en, this message translates to:
  /// **'Successfully edited tags !'**
  String get successTagEdit;

  /// No description provided for @supportEq.
  ///
  /// In en, this message translates to:
  /// **'Support Equalizer'**
  String get supportEq;

  /// No description provided for @supportEqSub.
  ///
  /// In en, this message translates to:
  /// **'Keep this off if you are unable to play songs (in both online and offline mode)'**
  String get supportEqSub;

  /// No description provided for @tg.
  ///
  /// In en, this message translates to:
  /// **'Telegram'**
  String get tg;

  /// No description provided for @tgCh.
  ///
  /// In en, this message translates to:
  /// **'Telegram Channel'**
  String get tgCh;

  /// No description provided for @tgGp.
  ///
  /// In en, this message translates to:
  /// **'Telegram Group'**
  String get tgGp;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @themeDeleted.
  ///
  /// In en, this message translates to:
  /// **'Theme deleted!'**
  String get themeDeleted;

  /// No description provided for @themeSaved.
  ///
  /// In en, this message translates to:
  /// **'Theme saved!'**
  String get themeSaved;

  /// No description provided for @title.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get title;

  /// No description provided for @top.
  ///
  /// In en, this message translates to:
  /// **'Top'**
  String get top;

  /// No description provided for @topCharts.
  ///
  /// In en, this message translates to:
  /// **'Top Charts'**
  String get topCharts;

  /// No description provided for @trendingSearch.
  ///
  /// In en, this message translates to:
  /// **'Trending Search'**
  String get trendingSearch;

  /// No description provided for @ui.
  ///
  /// In en, this message translates to:
  /// **'App UI'**
  String get ui;

  /// No description provided for @undo.
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get undo;

  /// No description provided for @unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get unknown;

  /// No description provided for @unlike.
  ///
  /// In en, this message translates to:
  /// **'Unlike'**
  String get unlike;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @updateAvailable.
  ///
  /// In en, this message translates to:
  /// **'Update Available!'**
  String get updateAvailable;

  /// No description provided for @upiCopied.
  ///
  /// In en, this message translates to:
  /// **'FACEBOOK ID COPIED!'**
  String get upiCopied;

  /// No description provided for @upNext.
  ///
  /// In en, this message translates to:
  /// **'Up Next'**
  String get upNext;

  /// No description provided for @useAmoled.
  ///
  /// In en, this message translates to:
  /// **'Use Amoled Dark Mode Settings'**
  String get useAmoled;

  /// No description provided for @useDenseMini.
  ///
  /// In en, this message translates to:
  /// **'Use Dense Miniplayer'**
  String get useDenseMini;

  /// No description provided for @useDenseMiniSub.
  ///
  /// In en, this message translates to:
  /// **'Miniplayer height will be reduced'**
  String get useDenseMiniSub;

  /// No description provided for @useBlurForNowPlayingSub.
  ///
  /// In en, this message translates to:
  /// **'Blur with a lower Opacity will be used as the Background of the Now Playing Section'**
  String get useBlurForNowPlayingSub;

  /// No description provided for @useDown.
  ///
  /// In en, this message translates to:
  /// **'Stream Downloaded Songs, If available'**
  String get useDown;

  /// No description provided for @useDownSub.
  ///
  /// In en, this message translates to:
  /// **'If song is already downloaded, downloaded song will be played instead of streaming online'**
  String get useDownSub;

  /// No description provided for @useHome.
  ///
  /// In en, this message translates to:
  /// **'Use Main Section for Better Quality and Download Support'**
  String get useHome;

  /// No description provided for @useProxy.
  ///
  /// In en, this message translates to:
  /// **'Use Proxy'**
  String get useProxy;

  /// No description provided for @useProxySub.
  ///
  /// In en, this message translates to:
  /// **'Turn this on if you are not from India and having issues with search, like getting only Indian Songs or not getting any results, etc. You can even use VPN with Indian Server\n'**
  String get useProxySub;

  /// No description provided for @useSystemTheme.
  ///
  /// In en, this message translates to:
  /// **'Use System Theme'**
  String get useSystemTheme;

  /// No description provided for @useVpn.
  ///
  /// In en, this message translates to:
  /// **'Not from India? Try using VPN with Indian Server'**
  String get useVpn;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// No description provided for @versionSub.
  ///
  /// In en, this message translates to:
  /// **'Tap to check for updates'**
  String get versionSub;

  /// No description provided for @viewAlbum.
  ///
  /// In en, this message translates to:
  /// **'View Album'**
  String get viewAlbum;

  /// No description provided for @viewArtist.
  ///
  /// In en, this message translates to:
  /// **'View Artist'**
  String get viewArtist;

  /// No description provided for @viewAll.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get viewAll;

  /// No description provided for @viral.
  ///
  /// In en, this message translates to:
  /// **'Viral'**
  String get viral;

  /// No description provided for @watchVideo.
  ///
  /// In en, this message translates to:
  /// **'Watch Video'**
  String get watchVideo;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// No description provided for @willPlayNext.
  ///
  /// In en, this message translates to:
  /// **'will Play Next'**
  String get willPlayNext;

  /// No description provided for @year.
  ///
  /// In en, this message translates to:
  /// **'Year'**
  String get year;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @yesReplace.
  ///
  /// In en, this message translates to:
  /// **'Yes, but replace old'**
  String get yesReplace;

  /// No description provided for @youTube.
  ///
  /// In en, this message translates to:
  /// **'YouTube'**
  String get youTube;

  /// No description provided for @yourPlaylists.
  ///
  /// In en, this message translates to:
  /// **'Your Playlists'**
  String get yourPlaylists;

  /// No description provided for @ytDownQuality.
  ///
  /// In en, this message translates to:
  /// **'YouTube Download Quality'**
  String get ytDownQuality;

  /// No description provided for @ytDownQualitySub.
  ///
  /// In en, this message translates to:
  /// **'Higher quality uses more disk space'**
  String get ytDownQualitySub;

  /// No description provided for @ytLiveAlert.
  ///
  /// In en, this message translates to:
  /// **'Video is live. Please wait until the live stream finishes and try again.'**
  String get ytLiveAlert;

  /// No description provided for @ytStreamQuality.
  ///
  /// In en, this message translates to:
  /// **'YouTube Streaming Quality'**
  String get ytStreamQuality;

  /// No description provided for @ytStreamQualitySub.
  ///
  /// In en, this message translates to:
  /// **'Higher quality uses more data'**
  String get ytStreamQualitySub;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'vi': return AppLocalizationsVi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
