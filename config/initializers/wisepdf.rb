Wisepdf::Configuration.configure do |config|
  config.wkhtmltopdf = if File.exist?('/usr/local/bin/wkhtmltopdf')
   '/usr/local/bin/wkhtmltopdf'
  elsif File.exist?('/usr/bin/wkhtmltopdf')
   '/usr/bin/wkhtmltopdf'
  else
   "#{Gem::Specification.find_by_name('wkhtmltopdf-binary-edge').gem_dir}/bin/wkhtmltopdf"
  end
end