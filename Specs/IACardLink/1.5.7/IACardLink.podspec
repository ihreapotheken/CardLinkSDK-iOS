Pod::Spec.new do |s|
  s.name             = 'IACardLink'
  s.version          = '1.5.7'
  s.summary          = 'Podspec for distributing CardLinkSDK.'
  s.homepage         = 'https://4ofthem.eu/'
  s.license          = { :type => 'MIT' }
  s.author           = { 'Four of them LLC' => 'https://4ofthem.eu/' }
  s.source           = { :http => 'https://github.com/ihreapotheken/CardLinkSDK-iOS/releases/download/1.5.7/IACardLink-1.5.7.xcframework.zip' }
  s.ios.deployment_target = '15.0'
  s.vendored_frameworks = ['IACardLink.xcframework']
  s.dependency 'GematikOpenSSL'
  s.dependency 'IACore', '0.0.8'
end