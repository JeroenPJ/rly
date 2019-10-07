# frozen_string_literal: true

require 'thor'

module Rly
  # Handle the application command line parsing
  # and the dispatch to various command objects
  #
  # @api public
  class CLI < Thor
    # Error raised by this runner
    Error = Class.new(StandardError)

    desc 'version', 'rly version'
    def version
      require_relative 'version'
      puts "v#{Rly::VERSION}"
    end
    map %w(--version -v) => :version

    desc 'open NAME', 'Open a shortcut'
    method_option :help, aliases: '-h', type: :boolean,
                         desc: 'Display usage information'
    def open(name)
      if options[:help]
        invoke :help, ['open']
      else
        require_relative 'commands/open'
        Rly::Commands::Open.new(name, options).execute
      end
    end
    desc 'o NAME', 'Alias for rly open NAME'
    alias :o :open

    desc 'list', 'List all shortcuts'
    method_option :help, aliases: '-h', type: :boolean,
                         desc: 'Display usage information'
    def list(*)
      if options[:help]
        invoke :help, ['list']
      else
        require_relative 'commands/list'
        Rly::Commands::List.new(options).execute
      end
    end

    desc 'add NAME URL', 'Add shortcut named NAME which opens URL'
    method_option :help, aliases: '-h', type: :boolean,
                         desc: 'Display usage information'
    method_option :force, aliases: '-f', type: :boolean,
      desc: 'overwrite if shortcut exists'
    def add(name, url)
      if options[:help]
        invoke :help, ['add']
      else
        require_relative 'commands/add'
        Rly::Commands::Add.new(name, url, options).execute
      end
    end

    desc 'remove NAME', 'Remove shortcut'
    method_option :help, aliases: '-h', type: :boolean,
                         desc: 'Display usage information'
    def remove(name)
      if options[:help]
        invoke :help, ['remove']
      else
        require_relative 'commands/remove'
        Rly::Commands::Remove.new(name, options).execute
      end
    end
  end
end
