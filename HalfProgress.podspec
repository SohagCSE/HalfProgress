#
# Be sure to run `pod lib lint HalfProgress.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HalfProgress'
  s.version          = '0.1.3'
  s.summary          = 'HalfProgress is a cocoapod library. It can be use for half progress or slider, tick progress and rating progress.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
'HalfProgress is a cocoapod library. It can be use for half progress or slider, tick progress and rating progress. just import and turn on the accessory'
                       DESC

  s.homepage         = 'https://github.com/NurAhmadullah/HalfProgress'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nur.ahmadullah' => 'nurhstucse@gmail.com' }
  s.source           = { :git => 'https://github.com/NurAhmadullah/HalfProgress.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
#  s.social_media_url = 'https://www.linkedin.com/in/nur-ahmadullah'

  s.ios.deployment_target = '13.0'

#  s.source_files = 'HalfProgress/Classes/**/*'
  s.source_files = 'Classes/**/*.swift'
  s.swift_version = '5.0'
  s.platforms = {
      "ios": "13.0"
  }
  
  # s.resource_bundles = {
  #   'HalfProgress' => ['HalfProgress/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
