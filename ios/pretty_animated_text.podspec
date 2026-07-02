#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint pretty_animated_text.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'pretty_animated_text'
  s.version          = '3.1.0'
  s.summary          = 'A Flutter plugin for creating customizable animated text widgets.'
  s.description      = <<-DESC
A Flutter plugin for creating customizable animated text widgets, enhancing app aesthetics with engaging text animations.
                       DESC
  s.homepage         = 'https://pretty-animated-text.vercel.app'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Ye Lwin Oo' => 'yelwinoo.dev@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'pretty_animated_text/Sources/pretty_animated_text/**/*.swift'
  s.resource_bundles = {'pretty_animated_text_privacy' => ['pretty_animated_text/Sources/pretty_animated_text/PrivacyInfo.xcprivacy']}
  s.dependency 'Flutter'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
