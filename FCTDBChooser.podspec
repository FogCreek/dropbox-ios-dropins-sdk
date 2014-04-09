#!/usr/bin/ruby

Pod::Spec.new do |spec|
    spec.name = 'FCTDBChooser'
    spec.authors = { 'FCTDBChooser' => 'example@example.com' }
    spec.summary = 'FCTDBChooser'
    spec.version = '1.0.0'
    spec.license = { :type => 'MIT' }
    spec.platform = :ios, '7.1'
    spec.homepage = 'https://github.com/FogCreek/dropbox-ios-dropins-sdk'
    spec.source = {
        :git => 'https://github.com/FogCreek/dropbox-ios-dropins-sdk.git',
        :tag => 'v1.0.0',
    }
    spec.source_files = 'DBChooser/**/*.{h,m}'
    spec.frameworks = 'UIKit'
    spec.requires_arc = true
end
