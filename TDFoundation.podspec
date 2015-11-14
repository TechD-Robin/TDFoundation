
Pod::Spec.new do |s|

  s.name         = "TDFoundation"
  s.version      = "0.0.4"
  s.summary      = "The `TDFoundation` is base functional library of Tech.D."

  s.description  = <<-DESC
                   The `TDFoundation` is base functional library of Tech.D..

                   * There are several utilities & methods to simplify call.
                   DESC


  s.homepage     = "https://github.com/TechD-Robin/TDFoundation/"
  s.source       = { :git => "https://github.com/TechD-Robin/TDFoundation.git", :tag => "#{s.version}" }

  s.license            = 'MIT'
  s.author             = { "Robin Hsu" => "robinhsu599+dev@gmail.com" }
  s.social_media_url   = "https://plus.google.com/+RobinHsu"


  s.platform     = :ios, "8.0"
  # s.requires_arc = true
  s.frameworks   = 'Foundation', 'CoreGraphics'

  s.source_files = 'ARCMacros.h', 'TDFoundation/*.{h,m,mm}'

  s.dependency    "Foundation+TechD",     "~> 0.0.3"


end
