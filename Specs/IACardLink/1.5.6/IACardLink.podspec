Pod::Spec.new do |s|
  s.name             = 'IACardLink'
  s.version          = '1.5.6'
  s.summary          = 'Podspec for distributing CardLinkSDK.'
  s.homepage         = 'https://4ofthem.eu/'
  s.license          = { :type => 'MIT' }
  s.author           = { 'Four of them LLC' => 'https://4ofthem.eu/' }
  s.source           = { :http => 'https://github.com/ihreapotheken/CardLinkSDK-iOS/releases/download/1.5.6/IACardLink-1.5.6.xcframework.zip' }
  s.ios.deployment_target = '15.0'
  s.vendored_frameworks = ['IACardLink.xcframework']
  s.dependency 'GematikOpenSSL', '4.3.0'
  s.dependency 'IACore', '0.0.5'
end
