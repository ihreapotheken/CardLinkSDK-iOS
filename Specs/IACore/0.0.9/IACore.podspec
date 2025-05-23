Pod::Spec.new do |s|
  s.name             = 'IACore'
  s.version          = '0.0.9'
  s.summary          = 'Podspec for distributing IACore.'
  s.homepage         = 'https://4ofthem.eu/'
  s.license          = { :type => 'MIT' }
  s.author           = { 'Four of them LLC' => 'https://4ofthem.eu/' }
  s.source           = { :http => 'https://github.com/ihreapotheken/CardLinkSDK-iOS/releases/download/1.5.8/IACore-0.0.9.xcframework.zip' }
  s.ios.deployment_target = '15.0'
  s.vendored_frameworks = ['IACore.xcframework']
end