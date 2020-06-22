require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-zapt-contact-tracing"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = "react-native-zapt-contact-tracing"
  s.homepage     = "https://www.zapt.tech"
  s.license      = package["license"]
  s.authors      = { "Zapt Tech" => "contato@zapt.tech" }
  s.platforms    = { :ios => "10.0" }
  s.source       = { :git => "https://github.com/zapt-tech/react-native-zapt-contact-tracing.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency 'ZaptContactTracing_iOS_SDK', '1.0.4'
end

