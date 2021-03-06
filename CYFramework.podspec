#
# Be sure to run `pod lib lint CYFramework.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'CYFramework'
    s.version          = '0.1.5'
    s.summary          = 'ios9 CYFramework.'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC
        CYFramework是一个用于常用类的基类
        DESC
    
    s.homepage         = 'https://github.com/yanyanforest/CYFramework'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'yanyan' => 'yanyanforest@163.com' }
    s.source           = { :git => 'https://github.com/yanyanforest/CYFramework.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    
    s.ios.deployment_target = '8.0'
    
    s.source_files = 'CYFramework/Classes/*','CYFramework/Classes/**/*','CYFramework/Classes/**/**/*'
    # s.resource_bundles = {
    #   'CYFramework' => ['CYFramework/Assets/*.png']
    # }
    
    s.public_header_files = 'CYFramework/Classes/*.h'
   
   #s.public_header_files = 'CYFramework/Classes/CYFramework.h'

    s.frameworks = 'UIKit', 'MapKit'
    # s.dependency 'AFNetworking', '~> 2.3'
end

