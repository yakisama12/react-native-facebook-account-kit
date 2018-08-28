require 'json'

package = JSON.parse(File.read('../package.json'))

Pod::Spec.new do |s|
  s.name                = 'RNAccountKit'
  s.version             = package['version']
  s.summary             = package['description']
  s.homepage            = package['homepage']
  s.license             = package['license']
  s.author              = package['author']
  s.source              = { :git => package["repository"]["url"] }
  s.platform            = :ios, "7.0"
  s.source_files        = "*.{h,m}"
  s.preserve_paths      = "*.js"
  s.dependency 'React'
  s.dependency 'AccountKit'
end