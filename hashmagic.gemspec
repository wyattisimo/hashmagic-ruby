Gem::Specification.new do |s|
  s.name     = "hashmagic"
  s.version  = "0.2"
  s.platform = Gem::Platform::RUBY
  s.homepage = "http://github.com/wyattisimo/hashmagic-ruby"
  s.summary  = "Adds some magical utility methods to the Hash class."
  s.author   = "Jared Wyatt"
  s.email    = "j@wyatt.co"
  s.license  = "MIT"

  s.files        = Dir.glob("lib/*") + %w(LICENSE README.md)
  s.require_path = "lib"
end
