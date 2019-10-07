require 'json'

module Rly
  # shortcuts repository
  class Shortcuts
    def initialize
      @name = Dir.pwd.tr('/', '')
      @filename = %(/var/lib/rly/#{@name}.json)
      @shortcuts = read
    end

    def all
      @shortcuts
    end

    def find(name)
      @shortcuts[name]
    end

    def exist?(name)
      @shortcuts.key?(name)
    end

    def create(name, url)
      @shortcuts[name] = url
      save
    end

    def destroy(name)
      @shortcuts.delete(name)
      save
    end

    private

    def read
      return {} unless File.file?(@filename)
      f = File.read(@filename)
      return {} if f == ""
      JSON.parse(f)
    end

    def save
      unless File.file?(@filename)

      end

      File.write(@filename, @shortcuts.to_json)
    end
  end
end
