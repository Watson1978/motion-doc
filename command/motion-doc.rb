require 'optparse'

module Motion; module Project
  class DocumentGenerateCommand < Command
    VERSION = 0.1
    YARDOC = "yardoc"

    self.name = 'doc'
    self.help = 'Generate a API document'

    def run(args)
      unless File.exist?('Rakefile')
        $stderr.puts "Run on Root Directoy of RubyMotion Project"
        exit 1
      end

      system "#{YARDOC} #{args.join(' ')}"
    end

  end
end; end
