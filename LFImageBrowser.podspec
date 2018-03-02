#
#  Be sure to run `pod spec lint LFImageBrowser.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "LFImageBrowser"
  s.version      = "0.0.1"
  s.summary      = "简化图片浏览操作."

  s.description  = <<-DESC
		简单的图片浏览功能封装
                   DESC

  s.homepage     = "https://github.com/LFOpen/LFImageBrowser"
  s.license      = "MIT"
  s.author             = { "archerLj" => "lj0011977@163.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/LFOpen/LFImageBrowser.git", :tag => "#{s.version}" }
  s.source_files  = "LFImageBrowser/LFImageBrowser/*.{h,m}"
  s.requires_arc = true
  s.dependency "SDWebImage"

end
