#
# Be sure to run `pod lib lint EasySkeletonView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EasySkeletonView'
  s.version          = '0.1.0'
  s.summary          = 'EasySkeletonView is easy and sweet library that show loader with animation'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
EasySkeletonView is the frameworks that works fine and sweet in your application and give very smooth animate loader when fetch any data from API in app.
                       DESC

  s.homepage         = 'https://github.com/avijitmobi/EasySkeletonView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Avijit Babu' => 'avijitmobi@gmail.com' }
  s.source           = { :git => 'https://github.com/avijitmobi/EasySkeletonView.git', :tag => 'v0.1.0' }
  # s.social_media_url = 'https://www.linkedin.com/in/avijitmobi/'

  s.ios.deployment_target = '12.0'

  s.source_files = 'MyOwnFiles/**/*'
  
  # s.resource_bundles = {
  #   'EasySkeletonView' => ['EasySkeletonView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'Foundation'
  # s.dependency = 'None'
end
