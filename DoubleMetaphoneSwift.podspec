#
#  Be sure to run `pod spec lint DoubleMetaphoneSwift.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "DoubleMetaphoneSwift"
  s.version      = "0.0.1"
  s.summary      = "A Swift implementation of the Double Metaphone algorithm"
  s.description  = <<-DESC
This CocoaPod uses the double metaphone algorithm to calculate primary and secondary values of a passed string. It is based the PostgreSQL double metaphone C library, but matches the output of other double metaphone algorithms as well.
DESC
  s.homepage     = "https://github.com/ZebulonFrantzich/DoubleMetaphoneSwift"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.author             = { 'Zebulon Frantzich' => 'zeb.frantzich@agapered.com' }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.ios.deployment_target = '8.0'

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source       = { :git => 'https://github.com/ZebulonFrantzich/DoubleMetaphoneSwift.git', :tag => s.version.to_s }

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.requires_arc = true

  s.source_files = 'DoubleMetaphoneSwift/*.{swift,h}', 'DoubleMetaphoneSwift/double_metaphone/*.{c,h,m}', 'DoubleMetaphoneSwift/double_metaphone/aes/*.{c,h,m}'
  s.public_header_files = 'DoubleMetaphoneSwift/*.h'
  s.pod_target_xcconfig = {'SWIFT_INCLUDE_PATHS' => '$(SRCROOT)/DoubleMetaphoneSwift/DoubleMetaphoneSwift/double_metaphone/**','LIBRARY_SEARCH_PATHS' => '$(SRCROOT)/DoubleMetaphoneSwift/DoubleMetaphoneSwift/'}
  s.libraries = 'z'
  s.preserve_paths  = 'DoubleMetaphoneSwift/double_metaphone/module.modulemap'

end
