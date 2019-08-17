#
# Be sure to run `pod lib lint AMSettingsViewController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AMSettingsViewController'
  s.version          = '1.1.0'
  s.summary          = 'AMSettingsViewController is wrapper of the basic list that consist of Rate the app, contact us mail, Privacy url'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
AMSettingsViewController is wrapper of the basic list that consist of Rate the app, contact us mail, Privacy url. Can load Privacy url on the web view.
                       DESC

  s.homepage         = 'https://github.com/Anumothu/AMSettingsViewController'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Anumothu' => 'anumothu911@gmail.com' }
  s.source           = { :git => 'https://github.com/Anumothu/AMSettingsViewController.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.3'

  s.source_files = 'AMSettingsViewController/Classes/**/*.swift'
  
  s.resource = 'AMSettingsViewController/Classes/**/*.{xib,storyboard}'
   #   s.resource_bundles = {
   #   'AMSettingsViewController' => ['AMSettingsViewController/Classes/**/*.xib']
   # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'AppRating', '>= 0.0.1'
   s.dependency 'BWWalkthrough', '3.0.1'
   
end
