Pod::Spec.new do |s|
    s.name         = "react-native-superview"
    s.version      = "1.0.0"
    s.summary      = "A React Native component for RNTView"
    s.description  = <<-DESC
                     A React Native component for RNTView
                     DESC
    s.homepage     = "https://github.com/ribsonr/super-view.git"
    s.license      = { :type => "MIT" }
    s.author       = { "Your Name" => "your-email@example.com" }
    s.platform     = :ios, "11.0"
    s.source       = { :git => "https://github.com/ribsonr/super-view.git", :tag => "#{s.version}" }
    s.source_files = "ios/**/*.{h,m,swift}"
    s.requires_arc = true
    s.dependency 'React-Core'
  end
  