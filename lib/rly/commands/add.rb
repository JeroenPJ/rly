# frozen_string_literal: true

require_relative '../command'
require_relative '../shortcuts'

module Rly
  module Commands
    class Add < Rly::Command
      def initialize(name, url, options)
        @name = name
        @url = url
        @options = options
      end

      def execute(input: $stdin, output: $stdout)
        shortcuts = Rly::Shortcuts.new
        if !shortcuts.exist?(@name) || @options[:force]
          shortcuts.create(@name, @url)
          output.puts "rly #{@name} in this directory will now open #{@url}"
        else
          output.puts "that name is used already. if you want to overwrite, use -f"
        end
      end
    end
  end
end
