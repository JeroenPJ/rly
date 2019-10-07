# frozen_string_literal: true

require_relative '../command'
require_relative '../shortcuts'

module Rly
  module Commands
    class Remove < Rly::Command
      def initialize(name, options)
        @name = name
        @options = options
      end

      def execute(input: $stdin, output: $stdout)
        shortcuts = Rly::Shortcuts.new
        if shortcuts.exist?(@name)
          shortcuts.destroy(@name)
          output.puts "removed #{@name} for this directory"
        else
          output.puts "can't find shortcut with name #{@name}"
        end
      end
    end
  end
end
