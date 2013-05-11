# Command-Line Plugin Installer
require 'fileutils'

src = File.expand_path(File.join(File.dirname(__FILE__), "../command/motion-doc.rb"))
dst =  File.expand_path("~/Library/RubyMotion/command/motion-doc.rb")
FileUtils.rm dst if File.exist?(dst)
FileUtils.ln_s src, dst


### dummy ###
require 'mkmf'
create_makefile('')
