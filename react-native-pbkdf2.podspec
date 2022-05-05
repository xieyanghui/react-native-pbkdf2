require 'json'
package_json = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name          = 'react-native-pbkdf2'
  s.version       = package_json["version"]
  s.summary       = package_json["description"]
  s.author        = package_json["author"]
  s.license       = package_json["license"]
  s.requires_arc  = true
  s.homepage      = 'https://github.com/react-native-cryptocurrencies/react-native-pbkdf2'
  s.source        = { :git => "https://github.com/react-native-cryptocurrencies/react-native-pbkdf2" }
  s.platform      = :ios, '8.0'
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency "React"
end
