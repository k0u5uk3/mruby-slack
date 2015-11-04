MRuby::Gem::Specification.new('mruby-slack') do |spec|
  spec.license = 'MIT'
  spec.authors = 'Kousuke Shimofuji'
  spec.add_dependency('mruby-httprequest')
  spec.add_dependency('mruby-polarssl')
  spec.add_dependency('mruby-http')
  spec.add_dependency('mruby-json')
end
