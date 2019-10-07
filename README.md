# rly

rly is a gem that adds URL shortcuts to your CLI per directory, so that you can save & open URLs conveniently in a given directory.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'urly'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install urly

## Usage

Run `rly` in your CLI. todo: more detailed usage?

Important to note is that this saves shortcuts per directory! So adding a shortcut will mean it's only usable in that directory.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rly.

## Copyright

Copyright (c) 2019 Jeroen Jagt. See [MIT License](LICENSE.txt) for further details.
