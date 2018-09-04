[![Gem Version](https://badge.fury.io/rb/combinate.svg)](https://badge.fury.io/rb/combinate)
[![Build Status](https://travis-ci.org/azanar/combinate.svg?branch=master)](https://travis-ci.org/azanar/combinate)


# Combinate

A simple utility gem that combines all products of all combinations of an array of arrays, including combinations where some or all of the arrays are not chosen from at all.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'combinate'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install combinate

## Usage


### As a module

    require 'combinate'

    Combinate.combinate([[1,2],[3,4]])
    => [[1], [2], [3], [4], [1, 3], [1, 4], [2, 3], [2, 4]]

### As an extension on `Array`

    require 'combinate/core_ext/array'

    [[1,2],[3,4]].combinate
    => [[1], [2], [3], [4], [1, 3], [1, 4], [2, 3], [2, 4]]

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/azanar/combinate.
