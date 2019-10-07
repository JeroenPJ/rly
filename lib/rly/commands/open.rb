# frozen_string_literal: true

require_relative '../command'
require_relative '../shortcuts'

module Rly
  module Commands
    class Open < Rly::Command
      def initialize(name, options)
        @name = name
        @options = options
      end

      def execute(input: $stdin, output: $stdout)
        shortcuts = Rly::Shortcuts.new
        if shortcuts.exist?(@name)
          open(shortcuts.find(@name))
        else
          output.puts "can't find shortcut with name #{@name}"
        end
      end

      def open(url)
        if RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/
          system "start #{url}"
        elsif RbConfig::CONFIG['host_os'] =~ /darwin/
          system "open #{url}"
        elsif RbConfig::CONFIG['host_os'] =~ /linux|bsd/
          system "xdg-open #{url}"
        end
      end
    end
  end
end
