
 Pod::Spec.new do |spec|
     spec.name         = "HBEmpty"
     spec.version      = "1.0"
     spec.homepage     = "https://github.com/CherryIce/HBEmpty"
     spec.platform     = :ios,"9.0" 
     spec.authors      = { "CherryIce" => "a13530836164@163.com" }
     spec.summary      = "empty view"
     spec.source       = { :git => "https://github.com/CherryIce/HBEmpty.git", :tag => "1.0" }
     spec.source_files = "HBEmptyClass/**"
     spec.frameworks   = "Foundation", "UIKit"
 end