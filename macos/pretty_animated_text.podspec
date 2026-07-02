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
  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.15'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
