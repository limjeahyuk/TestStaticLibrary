Pod::Spec.new do |s|

  s.name         = "TestStaticLibrary"
  s.version      = "1.0.1"
  s.summary      = "A brief description of MyStaticLib."
  s.description  = <<-DESC
                    A longer description of MyStaticLib in Markdown format.
                       * Maybe even with bullet points
                   DESC
  s.homepage     = "https://github.com/limjeahyuk/TestStaticLibrary"
  s.license      = { :type => "Avatye", :text => "Copyright 2023 Avatye Corp." } 
  s.author       = { "limjeahyuk" => "lim0202jh@avatye.com" }
  
  s.ios.deployment_target = "13.0"
  s.source       = { :git => "https://github.com/limjeahyuk/TestStaticLibrary", :tag => "#{s.version.to_s}" }
  s.vendored frameworks = "TestStaticLibrary.xcframework"
  
  s.subspec 'AdPopcornSSP' do |ap|
    ap.vendored_frameworks = "AdPopcornSSP/AdPopcornSSP.framework"
    ap.dependency 'AdPopcornSSP'
  end
  
  s.frameworks = 'UIKit', 'Foundation',  'AdSupport'
  
  s.requires_arc = true
  
  s.static_framework = true
  s.swift_versions = ['5.0']
  
  s.pod_target_xcconfig  = { 'OTHER_LDFLAGS' => '-ObjC' }
end