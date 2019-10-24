require 'json'

Pod::Spec.new do |s|
  s.name         = "RNDateFormat"
  s.version      = "1.1.18"
  s.summary      = "RNDateFormat"
  s.description  = "Library for datetime format"
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "author" => "Ravindra Methaniya" }
  s.platform     = :ios, "9.0"
  s.ios.deployment_target = '9.0'

  s.source       = { :git => "https://github.com/rmethaniya/RNDateFormat.git", :tag => "v#{s.version}" }
  s.source_files  = "RNDateFormat/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
end

  