Pod::Spec.new do |s|
  s.name             = 'CardLinkSDK'
  s.version          = '1.4.2'
  s.summary          = 'Podspec for distributing CardLinkSDK.'
  s.homepage         = 'https://4ofthem.eu/'
  s.license          = { :type => 'MIT' }
  s.author           = { 'Four of them LLC' => 'https://4ofthem.eu/' }
  s.source           = { :http => 'https://github.com/ihreapotheken/CardLinkSDK-iOS/releases/download/1.4.2/CardLinkSDK-1.4.2.xcframework.zip' }
  s.ios.deployment_target = '15.0'
  s.vendored_frameworks = ['CardLinkSDK.xcframework']
  s.dependency 'GematikOpenSSL'
end