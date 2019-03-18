Pod::Spec.new do |s|
  s.name = 'CPFUIAdapter'
  s.version = '1.1.0'
  s.summary = 'Swift界面适配'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'chenpengfei' => 'afeiafeia@163.com' }
  s.source = { :git => 'https://github.com/Loadar/CPFUIAdapter.git', :tag => s.version.to_s }
  s.homepage = 'https://github.com/Loadar/CPFUIAdapter'

  s.ios.deployment_target = "8.0"
  s.source_files = 'Classes/*.swift'
  s.requires_arc = true
end
