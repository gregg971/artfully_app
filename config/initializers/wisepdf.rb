Wisepdf::Configuration.configure do |config|
  spec = Gem::Specification.find_by_name('wkhtmltopdf-binary')
  gem_root = spec.gem_dir
  platform = case RUBY_PLATFORM
    when /x86.*64.*linux/
      'linux_x64'
    when /linux/
      'linux_386'
    when /darwin/
      'darwin_386'
    else
      nil
  end

  binary = "#{gem_root}/bin/wkhtmltopdf"
  binary << "_#{platform}" if platform

  config.wkhtmltopdf = binary
end
