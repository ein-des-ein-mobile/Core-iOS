Pod::Spec.new do |spec|

  spec.name         = "EinDesEin-CoreIOS"
  spec.version      = "0.11"
  spec.summary      = "A CocoaPods library representing EinDesEin Core"

  spec.description  = <<-DESC
This CocoaPods library helps you perform calculation.
                   DESC

  spec.homepage     = "https://github.com/ein-des-ein-mobile/core-ios"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "jeantimex" => "morbop@gmail.com" }

  spec.ios.deployment_target = "12.1"
  spec.swift_version = "4.2"

  spec.source        = { :git => "https://github.com/ein-des-ein-mobile/core-ios.git", :tag => "#{spec.version}" }
  spec.source_files  = "Core-iOS/**/*.{h,m,swift}"

  spec.subspec "API" do |ss|
    ss.dependency "Moya"
  end

end