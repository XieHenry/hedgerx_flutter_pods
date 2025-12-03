Pod::Spec.new do |s|
  s.name         = 'HedgerXFlutter'
  s.version      = '1.0.1'
  s.summary      = 'HedgerX Flutter Engine & Plugins packaged as xcframeworks'

  s.description  = <<-DESC
    Flutter Engine + Plugins (device_info_plus, package_info_plus, webview_flutter_wkwebview, registrant)
    built as xcframework and distributed via Alibaba Cloud OSS.
  DESC

  s.homepage     = 'https://github.com/your-company/hedgerx_flutter_pods'
  s.license      = { :type => 'MIT' }
  s.author       = { 'Henry' => '291964988@qq.com' }

  s.ios.deployment_target = '14.0'

  # === Framework ZIP from OSS ===
  s.source       = {
    :http => 'https://bic-mobile-test.oss-ap-northeast-1.aliyuncs.com/flutter/hedgerx/framework/Release/1.0.1.zip'
  }

  # === 解压的目录 ===
  s.vendored_frameworks = '1.0.1/*.xcframework'

  # Flutter XCFramework 均为静态库
  s.static_framework = true
  s.requires_arc = true
end

