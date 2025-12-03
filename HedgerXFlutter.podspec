Pod::Spec.new do |s|
  version = '1.0.1'      # ← 版本号只写这里

  s.name         = 'HedgerXFlutter'
  s.version      = version
  s.summary      = 'HedgerX Flutter Engine & Plugins packaged as xcframeworks'
  s.homepage     = 'https://github.com/XieHenry/hedgerx_flutter_pods'
  s.license      = { :type => 'MIT' }
  s.author       = { 'Henry' => '291964988@qq.com' }
  s.ios.deployment_target = '14.0'

  # zip 下载地址也一起用 version
  s.source = {
    :http => "https://bic-mobile-test.oss-ap-northeast-1.aliyuncs.com/flutter/hedgerx/framework/Release/#{version}.zip"
  }

  # 自动匹配 version 目录下所有 xcframework
  s.vendored_frameworks = "#{version}/**/*.xcframework"

  s.requires_arc = true
  s.static_framework = true
end
