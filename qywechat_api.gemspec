# frozen_string_literal: true

require_relative "lib/qywechat_api/version"

Gem::Specification.new do |spec|
  spec.name = "qywechat_api"
  spec.version = QywechatApi::VERSION
  spec.authors = ["zyh"]
  spec.email = ["zhenyuhey@gmail.com"]

  spec.summary = %q{qywechat api client}
  spec.description = %q{qywechat api client}
  spec.homepage = "https://github.com/hzyhzy/qywechat_api"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency('http')
end
