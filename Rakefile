require 'pp'
require 'cocoapods'
require 'cocoapods-core'
require 'cocoapods/command'
require 'cocoapods/command/install'
require 'claide'

def pod_install_1
  system('bundle exec pod install')
end

def pod_install_2
  argv = CLAide::ARGV.new([])
  cmd = Pod::Command.new(argv)
  cmd.send :verify_podfile_exists!
  pp cmd.config.sandbox #=> Pod::Sandbox : /Users/xiongzenghui/Desktop/XZHApp/Pods
  pp cmd.config.podfile #=> Pod::Podfile : /Users/xiongzenghui/Desktop/XZHApp/Podfile
  pp cmd.config.lockfile #=> Pod::Lockfile : 第一次 pod install 没有
  installer = Pod::Installer.new(cmd.config.sandbox, cmd.config.podfile, cmd.config.lockfile)
  installer.repo_update = false
  installer.update = false
  installer.install!
end

def pod_install_3
  Pod::Command.run(['install'])
end

task default: %w[test]

task :test do
  # 1. command line 执行 pod install => ok: 可以使用当前【bundle 环境】
  # pod_install_1

  # 2. 通过 lib/*.rb 执行 pod install => fail: 【无法】使用当前【bundle 环境】
  # pod_install_2

  # 3. 通过 lib/*.rb 执行 pod install => ok: 【无法】使用当前【bundle 环境】
  pod_install_3
end
