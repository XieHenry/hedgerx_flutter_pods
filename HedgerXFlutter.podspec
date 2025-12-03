Pod::Spec.new do |s|
  s.name         = 'HedgerXFlutter'
  s.version      = '1.0.1'
  s.summary      = 'HedgerX Flutter Engine & Plugins packaged as xcframeworks'
  s.homepage     = 'https://github.com/XieHenry/hedgerx_flutter_pods'
  s.license      = { :type => 'MIT' }
  s.author       = { 'Henry' => '291964988@qq.com' }
  s.ios.deployment_target = '14.0'

  s.source = {
    :http => 'https://bic-mobile-test.oss-ap-northeast-1.aliyuncs.com/flutter/hedgerx/framework/Release/1.0.1.zip'
  }

  # ⭐ 关键：避免 CocoaPods 冲突检查
  s.preserve_paths = '*.xcframework'

  # ⭐ 明确列出所有 xcframework 文件，避免 glob 触发冲突扫描
  s.vendored_frameworks = [
    'app.xcframework',
    'flutter.xcframework',
    'flutterpluginregistrant.xcframework',
    'device_info_plus.xcframework',
    'package_info_plus.xcframework',
    'webview_flutter_wkwebview.xcframework'
  ]

  s.static_framework = true
  s.requires_arc = true
end

