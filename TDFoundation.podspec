
Pod::Spec.new do |s|

  s.name         = "TDFoundation"
  s.version      = "0.0.2"
  s.summary      = "A base functional library of Tech.D."

  s.homepage     = "https://git.techd.idv.tw:5001"
  s.source       = { :git => "git://git.techd.idv.tw/Libraries/TDFoundation.git", :tag => "#{s.version}" }

  s.license      = { :type=> "No License", :file => "LICENSE" }
  s.author       = { "Robin Hsu" => "robinhsu599+dev@gmail.com" }


  s.platform     = :ios, "8.0"
  # s.requires_arc = true
  s.frameworks   = 'Foundation', 'CoreGraphics'

  s.source_files = 'ARCMacros.h', 'TDFoundation/*.{h,m,mm}'

  s.dependency    "Foundation+TechD",     "~> 0.0.1"


end
