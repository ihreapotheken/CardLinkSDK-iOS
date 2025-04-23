Pod::Spec.new do |s|
  s.name             = 'IACardLink'
  s.version          = '1.6.4'
  s.summary          = 'Podspec for distributing CardLinkSDK.'
  s.homepage         = 'https://4ofthem.eu/'
  s.license          = { :type => 'MIT' }
  s.author           = { 'Four of them LLC' => 'https://4ofthem.eu/' }
  s.source           = { :http => 'https://github.com/ihreapotheken/CardLinkSDK-iOS/releases/download/1.6.4/IACardLink-1.6.4.xcframework.zip' }
  s.ios.deployment_target = '15.0'
  s.vendored_frameworks = ['IACardLink.xcframework']
  s.dependency 'GematikOpenSSL', '4.3.1'
  s.dependency 'IACore', '0.0.20'
end