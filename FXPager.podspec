Pod::Spec.new do |s|
  s.name             = 'FXPager'
  s.version          = '0.1.0'
  s.summary          = '分类视图'

  s.homepage         = 'https://github.com/feixue299/FXPager'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'feixue299' => '1569485690@qq.com' }
  s.source           = { :git => 'https://github.com/feixue299/FXPager.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '9.0'

  s.source_files = 'Sources/FXPager/**/*'
  
  # s.resource_bundles = {
  #   'FXPager' => ['FXPager/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
