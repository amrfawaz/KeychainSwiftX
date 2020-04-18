Pod::Spec.new do |spec|

  spec.name         = "KeychainSwiftX"
  spec.version      = "1.0.0"
  spec.summary      = "Best iOS Keychain generic wrapper."
  spec.description  = "this is the simplest iOS wrapper to use keychain. You just need to import Keychain-Swift and use Keychain.shared instance to use set and get methods."
  spec.homepage     = "https://github.com/amrfawaz/KeychainSwiftX"
  spec.license      = "MIT"
  spec.author       = { "AmrFawaz" => "amr.abdelhakim.fawaz@gmail.com" }
  spec.platform     = :ios, "11.0"
  spec.source       = { :git => "https://github.com/amrfawaz/KeychainSwiftX.git", :tag => "1.0.0" }
  spec.source_files = "KeychainSwiftX/**/*.{h,m,swift}"
end
