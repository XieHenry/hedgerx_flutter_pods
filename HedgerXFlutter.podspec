Pod::Spec.new do |s|
  s.name         = 'HedgerXFlutter'
  s.version      = '1.0.1'
  s.summary      = 'HedgerX Flutter Engine & Plugins packaged as xcframeworks'

  s.description  = <<-DESC
    Flutter Engine + Plugins (device_info_plus, package_info_plus, webview_flutter_wkwebview, registrant)
    built as xcframework and distributed via Alibaba Cloud OSS.
  DESC

  s.homepage     = 'https://github.com/XieHenry/hedgerx_flutter_pods'
  s.license      = { :type => 'MIT' }
  s.author       = { 'Henry' => '291964988@qq.com' }

  s.ios.deployment_target = '14.0'

  # ===== ZIP 来源 =====
  s.source       = {
    :http => 'https://bic-mobile-test.oss-ap-northeast-1.aliyuncs.com/flutter/hedgerx/framework/Release/1.0.1.zip'
  }

  # ===== 加载所有 xcframework =====
  s.vendored_frameworks = '**/*.xcframework'

  # ===== 作为静态库处理 =====
  s.static_framework = true
  s.requires_arc = true

  # ⭐ 忽略重复名称框架（关键行）
  s.xcconfig = {
    'OTHER_LDFLAGS' => '$(inherited) -Wl,-force_load'
  }
end


