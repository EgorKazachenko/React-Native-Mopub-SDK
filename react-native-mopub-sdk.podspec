require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
    s.name         = "react-native-mopub-sdk"
    s.version      = package["version"]
    s.summary      = package["description"]
    s.description  = <<-DESC
    react-native-mopub-sdk
    DESC
    s.homepage     = "https://github.com/aliasad106/React-Native-Mopub-SDK"
    s.license      = "MIT"
    # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
    s.author       = { "author" => "author@domain.cn" }
    s.platform     = :ios, "7.0"
    s.source       = { :git => "https://github.com/aliasad106/React-Native-Mopub-SDK", :tag => "#{s.version}" }
    
    s.source_files = "ios/**/*.{h,m}"
    s.requires_arc = true
    
    s.dependency "React"
    
    s.subspec "MoPub" do |ss|
        
        ss.dependency 'mopub-ios-sdk', '~> 5.13.0'
        
        s.static_framework = true
    end

    s.subspec "AdColony" do |ss|
        
        ss.dependency 'MoPub-AdColony-Adapters', '~> 4.3.1.0'
        
    end

    s.subspec "AdMob" do |ss|
        
        ss.dependency 'MoPub-AdMob-Adapters', '~> 7.64.0.1'
        
    end

    s.subspec "AppLovin" do |ss|
        
        ss.dependency 'MoPub-Applovin-Adapters', '~> 6.13.4.0'
        
    end

    s.subspec "FacebookAudienceNetwork" do |ss|
        
        ss.dependency 'MoPub-FacebookAudienceNetwork-Adapters', '~> 5.10.1.1'
        
    end

    s.subspec "ironSource" do |ss|
        
        ss.dependency 'MoPub-IronSource-Adapters', '~> 6.18.0.2.0'
        
    end
end

