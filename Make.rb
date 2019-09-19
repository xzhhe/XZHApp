

def test
  require 'pp'
  require 'cocoapods'
  require 'cocoapods-core'
  require 'cocoapods/command'
  require 'cocoapods/command/install'
  require 'claide'

  # 1. command line 执行 pod install => ok: 可以使用当前【bundle 环境】
  # pod_install_1

  # 2. 通过 lib/*.rb 执行 pod install => fail: 【无法】使用当前【bundle 环境】
  # pod_install_2

  # 3. 通过 lib/*.rb 执行 pod install => ok: 【无法】使用当前【bundle 环境】
  pod_install_3
end
test
