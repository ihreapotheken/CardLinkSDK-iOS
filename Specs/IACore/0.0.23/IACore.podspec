Pod::Spec.new do |s|
  s.name             = 'IACore'
  s.version          = '0.0.23'
  s.summary          = 'Podspec for distributing IACore.'
  s.homepage         = 'https://4ofthem.eu/'
  s.license          = { :type => 'MIT' }
  s.author           = { 'Four of them LLC' => 'https://4ofthem.eu/' }
  s.source           = { :http => 'https://github.com/ihreapotheken/CardLinkSDK-iOS/releases/download/2.0.1/IACore-0.0.23.xcframework.zip' }
  s.ios.deployment_target = '15.0'
  s.vendored_frameworks = ['IACore.xcframework']
end