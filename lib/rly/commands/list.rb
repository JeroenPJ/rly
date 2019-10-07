# frozen_string_literal: true

require_relative '../command'
require_relative '../shortcuts'

module Rly
  module Commands
    class List < Rly::Command
      def initialize(options)
        @options = options
      end

      def execute(input: $stdin, output: $stdout)
        shortcuts = Rly::Shortcuts.new
        if shortcuts.all.empty?
          output.puts "no shortcuts added yet for current directory (#{Dir.pwd})"
        else
          shortcuts.all.each do |name, url|
            output.puts "#{name} => #{url}\n"
          end
        end
      end
    end
  end
end
