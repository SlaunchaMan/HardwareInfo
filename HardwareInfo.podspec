Pod::Spec.new do |s|
  s.name    = "HardwareInfo"
  s.version = "0.0.1"
  s.summary = "Identifying Apple hardware your code runs on."

  s.description = <<-DESC
                  DESC

  # s.homepage    = "http://EXAMPLE/HardwareInfo"
  # s.screenshots = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license = "MIT"

  s.author           = { "Jeff Kelley" => "SlaunchaMan@gmail.com" }
  s.social_media_url = "http://twitter.com/SlaunchaMan"

  s.ios.deployment_target = "8.0"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"

  s.source = { :git => "http://github.com/SlaunchaMan/HardwareInfo.git", :tag => "#{s.version}" }

  s.source_files = "Source/*.swift"

  s.ios.source_files = "Source/iOS/*.swift"
  s.watchos.source_files = "Source/watchOS/*.swift"
  s.tvos.source_files = "Source/tvOS/*.swift"
end
