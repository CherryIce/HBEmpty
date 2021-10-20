
 Pod::Spec.new do |spec|
     spec.name         = 'HBEmpty'
     spec.version      = '0.0.1'
     spec.homepage     = 'https://github.com/CherryIce/HBEmpty'
     spec.platform     = :ios,'9.0' 
     spec.authors      = { 'CherryIce' => 'a13530836164@163.com' }
     spec.summary      = 'empty view'
     spec.source       = { :git => 'https://github.com/CherryIce/HBEmpty.git', :tag => 'v0.0.1' }
     spec.source_files = 'HBEmptyClass/**'
     spec.frameworks   = "Foundation", "UIKit"
     spec.ios.deployment_target = "9.0"
 end