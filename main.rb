require 'pp'
require 'cocoapods'
require 'json'

pp " 💙 " * 30
spec = Pod::Specification.from_file('/Users/xiongzenghui/Desktop/AFNetworking/AFNetworking.podspec')
pp spec.to_pretty_json
