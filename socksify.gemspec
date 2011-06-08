Gem::Specification.new do |s|
  s.name = 'socksify'
  s.version = "1.4.1"
  s.summary = "Redirect all TCPSockets through a SOCKS5 proxy"
  s.authors = ["Stephan Maka", "Andrey Kouznetsov", "Christopher Thorpe", "Musy Bite", "Yuichi Tateno"]
  s.email = "stephan@spaceboyz.net"
  s.homepage = "http://socksify.rubyforge.org/"
  s.rubyforge_project = 'socksify'
  s.files = %w{COPYING}
  s.files += Dir.glob("{bin,lib,doc}/**/*")
  s.files = s.files.delete_if { |f| f =~ /\~$/ }
  s.require_path = 'lib'
  s.executables = %w{socksify_ruby}
  s.extra_rdoc_files = Dir.glob("doc/**/*") + %w{COPYING}
end
