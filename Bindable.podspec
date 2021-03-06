Pod::Spec.new do |s|
  s.name              = "Bindable"
  s.version           = "0.4.1"
  s.summary           = "A Variable<Value> data binding UI"

  s.description       = <<-DESC
                        A `Variable<Value>` data binding UI.
                        DESC

  s.homepage          = "https://github.com/Q42/Bindable"
  s.license           = 'MIT'
  s.author            = { "Tom Lokhorst" => "tom@lokhorst.eu" }
  s.source            = { :git => "https://github.com/Q42/Bindable.git", :tag => s.version }

  s.platform          = :ios, '9.0'
  s.swift_version     = '4.0'
  s.default_subspec   = "Core"
  s.requires_arc      = true

  s.subspec "Core" do |ss|
    ss.source_files  = ["Sources/Core"]
  end

  s.subspec "NSObject" do |ss|
    ss.source_files = ["Sources/NSObject"]
    ss.dependency "Bindable/Core"
  end

  s.subspec "UIKit" do |ss|
    ss.source_files = ["Sources/UIKit"]
    ss.dependency "Bindable/NSObject"
  end
end

