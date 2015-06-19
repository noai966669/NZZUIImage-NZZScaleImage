

Pod::Spec.new do |s|
  s.name             = "NZZUIImage+NZZScaleImage"
  s.version          = "0.0.1"
  s.summary          = "公司内用"
  s.description      = "公司内用,将图片压缩到指定大小"
  s.homepage         = "https://github.com/noai966669/NZZUIImage-NZZScaleImage"
  s.license          = 'MIT'
  s.author           = { "ai966669" => "578172874@qq.com" }
  s.source           = { :git => "https://github.com/noai966669/NZZUIImage-NZZScaleImage.git", :tag => s.version.to_s }
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.source_files = 'Pod/Classes/**/*'
  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks='UIKit'
end
