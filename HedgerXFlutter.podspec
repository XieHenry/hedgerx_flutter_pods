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

  # ⭐ 关键：告诉 CocoaPods framework 在 1.0.1 这个子目录
  s.vendored_frameworks = [
    '1.0.1/App.xcframework',
    '1.0.1/Flutter.xcframework',
    '1.0.1/FlutterPluginRegistrant.xcframework',
    '1.0.1/device_info_plus.xcframework',
    '1.0.1/package_info_plus.xcframework',
    '1.0.1/webview_flutter_wkwebview.xcframework'
  ]

  s.requires_arc = true
  s.static_framework = true
end

