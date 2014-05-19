Pod::Spec.new do |s|
  s.name     = 'Three20'
  s.version  = '1.0.11'
  s.summary  = 'Three20 is an Objective-C library for iPhone developers.'
  s.homepage = 'http://three20.info/'
  s.author   = { 
    'Alessandro Zummo' => 'a.zummo@towertech.it', 
    'Alexander Saltanov' => 'a@nearbird.ru', 
    'Adar Porat' => 'adar.porat@gmail.com', 
    'aporat' => 'adar.porat@me.com', 
    'Amit Snyderman' => 'amit@amitsnyderman.com', 
    'andy.porat' => 'andy.porat@me.com', 
    'Benedikt Meurer' => 'benedikt.meurer@googlemail.com', 
    'beng' => 'beng@facebook.com', 
    'Blake Watters' => 'blakewatters@gmail.com', 
    'Brandon Walkin' => 'bwalkin@facebook.com', 
    'Brian Chapados' => 'chapados@sciencegeeks.org', 
    'clozach' => 'clozach+github@gmail.com', 
    'crino' => 'cseverini@gmail.com', 
    'David J. Hu' => 'davidjhu@gmail.com', 
    'uprise78' => 'desaro@gmail.com', 
    'Justin DeWind' => 'dewind@atomicobject.com', 
    'Dima Berastau' => 'dima.berastau@gmail.com', 
    'Holtwick' => 'dirk.holtwick@gmail.com', 
    'Chih-Wei Lee' => 'dlackty@gmail.com', 
    'Dan Morrow' => 'dmorrow@maned.com', 
    'Doug Barth' => 'dougbarth@gmail.com', 
    'drewmca' => 'drew@unitdev.com', 
    'Emil Palm' => 'emil@x86.nu', 
    'Eelco Lempsink' => 'eml@tupil.com', 
    'Eric Wolfe' => 'eric.r.wolfe@gmail.com', 
    'Eric Chamberlain' => 'eric@rf.com', 
    'Drync Wine' => 'github@drync.com', 
    'Greg Haines' => 'gresrun@gmail.com', 
    'Hwee-Boon Yar' => 'hboon@motionobj.com', 
    'Cemal Eker' => 'hello@cemaleker.com', 
    'Jeroen Houtzager' => 'houtzager@gmail.com', 
    'Jarno Antikainen' => 'jarno.antikainen@iki.fi', 
    'Jason Cabot' => 'jasoncabot@gmail.com', 
    'Jean Regisser' => 'jean.regisser@gmail.com', 
    'Joe Hewitt' => 'joe@joehewitt.com', 
    'Jeff Verkoeyen' => 'jverkoey@gmail.com', 
    'John Wang' => 'jwang392@gmail.com', 
    'Matt Crocker' => 'matt@rd.io', 
    'Matt Newberry' => 'matt@shopify.com', 
    'Brian Donovan' => 'me@brian-donovan.com', 
    'Peter Steinberger' => 'me@petersteinberger.com', 
    'Mike Morearty' => 'mike@morearty.com', 
    'NanoTech' => 'nanotech008@gmail.com', 
    'Joachim Bengtsson' => 'nevyn@spotify.com', 
    'Oleguer Huguet' => 'olegueret@gmail.com', 
    'Owen Yamauchi' => 'oyamauchi@fb.com', 
    'Paulo Oliveira' => 'paulo@seqoy.com', 
    'Pavel Bocharov' => 'pavel@wheely.com', 
    'Petr Reichl' => 'petr@tapmates.com', 
    'PEZ' => 'pez@pezius.com', 
    'Pavel Repin' => 'prepin@gmail.com', 
    'alexleutgoeb' => 'privat@alexleutgoeb.com', 
    'Phillip Verheyden' => 'pverheyden@gmail.com', 
    'Rafael Alba' => 'ralba@socialcast.com', 
    'Rodrigo Mazzilli' => 'rodrigo@wellknown.as', 
    'Roger Chapman' => 'roger@stormid.com', 
    'Rusty Zarse' => 'rusty@levo.us', 
    'Savanah Cummings' => 'savanah.cummings@gmail.com', 
    'Shaheen Gandhi' => 'shaheen@devrs109.snc1.facebook.com', 
    'Skotch Vail' => 'skotch.git@brushthedog.com', 
    'Stephan Diederich' => 'stephan.diederich@googlemail.com', 
    'Sumeru Chatterjee' => 'sumeru@ufl.edu', 
    'Thomas Weisbach' => 'tee.aye.w@gmail.com', 
    'Tobias Klonk' => 'tobias.klonk@tklonk.net', 
    'Tobias Rundström' => 'tobias.rundstrom@purplescout.se', 
    'Tony Lewis' => 'tonylewis@dailytest.portland.4tellsolutions.com', 
    'vguerci' => 'vguerci@gmail.com', 
    'wbailey' => 'wi11.bai1ey@facebook.com', 
    'Wiley Kestner' => 'wiley.kestner@gmail.com',
  }
  s.license  = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }
  s.source   = { :git => 'https://github.com/facebook/three20.git', :tag => '1.0.11' }
  s.platform = :ios
  
  s.source_files = 'src/Three20/{Sources,Headers}/*.{h,m}'
  #s.header_mappings_dir = 'src/Three20/Headers'
  s.resources = 'src/Three20.bundle'
  
  s.preferred_dependency = 'UI'

  # Full name: Three20/Core
  s.subspec 'Core' do |cs|
    cs.source_files = 'src/Three20Core/{Sources,Headers}/**/*.{h,m}'
    cs.private_header_files = 'src/Three20Core/Headers/TTExtensionInfoPrivate.h'
    cs.header_dir = 'Three20Core'
    cs.header_mappings_dir = 'src/Three20Core/Headers'
  end
  
  # Full name: Three20/Network
  s.subspec 'Network' do |ns|
    ns.source_files = 'src/Three20Network/{Sources,Headers}/**/*.{h,m}'
    ns.private_header_files = 'src/Three20Network/Headers/{TTRequestLoader,TTURLRequestQueueInternal}.h'
    ns.header_dir = 'Three20Network'
    ns.header_mappings_dir = 'src/Three20Network/Headers'
    ns.dependency 'Three20/Core'
  end
  
  # Full name: Three20/Style
  s.subspec 'Style' do |ss|
    ss.source_files = 'src/Three20Style/{Sources,Headers}/**/*.{h,m}'
    ss.private_header_files = 'src/Three20Style/Headers/{TTShapeInternal,TTStyledNodeInternal,TTStyleInternal}.h'
    ss.header_dir = 'Three20Style'
    ss.header_mappings_dir = 'src/Three20Style/Headers'
    ss.dependency 'Three20/Core'
    ss.dependency 'Three20/Network'
  end
  
  # Full name: Three20/UICommon
  s.subspec 'UICommon' do |ucs|
    ucs.source_files = source_files = 'src/Three20UICommon/{Sources,Headers}/**/*.{h,m}'
    ucs.private_header_files = 'src/Three20UICommon/Headers/UIViewControllerGarbageCollection.h'
    ucs.header_dir = 'Three20UICommon'
    ucs.header_mappings_dir = 'src/Three20UICommon/Headers'
    ucs.dependency 'Three20/Core'
    ucs.framework = 'UIKit', 'CoreGraphics'
  end
  
  # Full name: Three20/UINavigator
  s.subspec 'UINavigator' do |uns|
    uns.source_files = 'src/Three20UINavigator/{Sources,Headers}/**/*.{h,m}'
    uns.private_header_files = 'src/Three20UINavigator/Headers/{TTBaseNavigatorInternal,TTURLArguments,' \
                               'TTURLArgumentType,TTURLLiteral,TTURLPatternInternal,TTURLPatternText,' \
                               'TTURLSelector,TTURLWildcard,UIViewController+TTNavigatorGarbageCollection}.h'
    uns.header_dir = 'Three20UINavigator'
    uns.header_mappings_dir = 'src/Three20UINavigator/Headers'
    uns.dependency 'Three20/Core'
    uns.dependency 'Three20/UICommon'
  end

  # Full name: Three20/UI
  s.subspec 'UI' do |us|
    us.source_files = 'src/Three20UI/{Sources,Headers}/**/*.{h,m}'
    us.private_header_files = 'src/Three20UI/Headers/{TTButtonContent,TTImageLayer,TTImageViewInternal,' \
                              'TTLauncherHighlightView,TTLauncherScrollView,TTNavigatorWindow,' \
                              'TTSearchTextFieldInternal,TTTabBarInternal,TTTextEditorInternal,TTTextView}.h'
    us.header_dir = 'Three20UI'
    us.header_mappings_dir = 'src/Three20UI/Headers'
    us.framework = 'QuartzCore'
    us.dependency 'Three20/Core'
    us.dependency 'Three20/Network'
    us.dependency 'Three20/Style'
    us.dependency 'Three20/UICommon'
    us.dependency 'Three20/UINavigator'
  end
  
  # Extensions
  s.subspec 'ext' do |ext|
    # Full name: Three20/ext/CSSStyle
    ext.subspec 'CSSStyle' do |css|
      css.source_files = 'src/extThree20CSSStyle/{Sources,Headers,ThirdPart}/*.{h,m}'
      css.private_header_files = 'src/extThree20CSSStyle/Headers/CssTokens.h'
      css.header_dir = 'extThree20CSSStyle'
      css.header_mappings_dir = 'src/extThree20CSSStyle/Headers'
      css.resources = 'src/extThree20CSSStyle/Resources/extThree20CSSStyle.bundle'
      css.dependency 'Three20/Core'
      css.dependency 'Three20/Network'
      css.dependency 'Three20/Style'
    end

    # Full name: Three20/ext/JSON
    ext.subspec 'JSON' do |js|
      js.source_files = 'src/extThree20JSON/{Source,Headers}/**/*.{h,m}'
      js.header_dir = 'extThree20JSON'
      js.header_mappings_dir = 'src/extThree20JSON/Headers'
      js.dependency 'Three20/Core'
      js.dependency 'Three20/Network'
    end

    # Full name: Three20/ext/SBJSON
    # This extension cannot be used with Three20/ext/YAJL
    ext.subspec 'SBJSON' do |sbs|
      sbs.source_files = 'src/extThree20JSON/Vendors/JSON/*.{h,m}'
      sbs.header_dir = 'extThree20JSON'
      sbs.xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) EXTJSON_SBJSON' }
      sbs.dependency 'Three20/ext/JSON'
    end

    # Full name: Three20/ext/YAJL
    # This extension cannot be used with Three20/ext/SBJSON
    ext.subspec 'YAJL' do |ys|
      ys.source_files = 'src/extThree20JSON/Vendors/YAJL/*.{h,m}', 
                        'src/extThree20JSON/Vendors/YAJL/{GHKit,GTM}/*.{h,m}',
                        'src/extThree20JSON/Vendors/YAJL/yajl/src/**/*.{h,c}'
      ys.private_header_files = 'src/extThree20JSON/Vendors/YAJL/{GHKit,GTM}/*.h',
                                'src/extThree20JSON/Vendors/YAJL/yajl/src/*.h' 
      ys.header_dir = 'extThree20JSON'
      ys.xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) EXTJSON_YAJL' }
      ys.dependency 'Three20/ext/JSON'
    end

    # Full name: Three20/ext/XML
    ext.subspec 'XML' do |xs|
      xs.source_files = 'src/extThree20XML/{Source,Headers}/*.{h,m}'
      xs.header_dir = 'extThree20XML'
      xs.dependency 'Three20/Core'
      xs.dependency 'Three20/Network'
    end
  end
  s.requires_arc = false

  s.prepare_command = 'echo "This Pod relies on the removed \`pre_install\` or \`post_install\` hooks and therefore will no longer continue to work. Please try updating to the latest version of this Pod or updating the Pod specification. See http://blog.cocoapods.org/CocoaPods-Trunk/ for more details." && exit 1'
end
