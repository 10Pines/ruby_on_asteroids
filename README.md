# RubyOnAsteroids

A gem with useful tools to expand Ruby language and make it more powerful

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruby_on_asteroids'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install ruby_on_asteroids

## Available enhancements

### String

- [`but_last`](lib/ruby_on_asteroids/core_ext/string/accessing.rb): Return a copy of the string without the 
last # of characters requested.

**Note:** All `String` enhancements can be enabled by calling `RubyOnAsteroids.enhance_strings`

### Array

- [`but_last`](lib/ruby_on_asteroids/core_ext/array/accessing.rb): Return a copy of the array without the
  last # of elements requested.

**Note:** All `Array` enhancements can be enabled by calling `RubyOnAsteroids.enhance_arrays`

## Usage

The gem is designed to provide only the enhancements you ask for, that means by default we won't auto-load classes 
that are not needed, nor apply enhancements you didn't ask for.

To enable enhancements you need to first load the gem:

``` ruby
require "ruby_on_asteroids"
```

and then enable the enhancements you want

``` ruby
RubyOnAsteroids.enhance_strings
```

**Tip:** If you use `pry` gem as a Ruby REPL you can enable the enhancements in your 
[`.pryrc`](https://github.com/pry/pry#overview) file in your home directory to benefit from the enhancements during
your REPL sessions even if the gem is not installed in your project. 

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. 
You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the 
version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, 
push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/10pines/ruby_on_asteroids.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
