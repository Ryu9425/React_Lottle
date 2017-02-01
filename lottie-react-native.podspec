require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "lottie-react-native"
  s.version      = package['version']
  s.summary      = "React Native Mapview component for iOS + Android"

  s.authors      = { "intelligibabble" => "leland.m.richardson@gmail.com" }
  s.homepage     = "https://github.com/airbnb/lottie-react-native#readme"
  s.license      = package['license']
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/airbnb/lottie-react-native.git", :tag => "v#{s.version}" }
  s.source_files  = "lib/ios/**/*.{h,m}"

  s.dependency 'React'
  s.dependency 'lottie-ios'
end
