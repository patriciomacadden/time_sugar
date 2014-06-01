# TimeSugar [![Build Status](http://img.shields.io/travis/patriciomacadden/time_sugar.svg)](https://travis-ci.org/patriciomacadden/time_sugar) [![Code Climate](http://img.shields.io/codeclimate/github/patriciomacadden/time_sugar.svg)](https://codeclimate.com/github/patriciomacadden/time_sugar) [![Code Climate Coverage](http://img.shields.io/codeclimate/coverage/github/patriciomacadden/time_sugar.svg)](https://codeclimate.com/github/patriciomacadden/time_sugar) [![Dependency Status](http://img.shields.io/gemnasium/patriciomacadden/time_sugar.svg)](https://gemnasium.com/patriciomacadden/time_sugar) [![Gem Version](http://img.shields.io/gem/v/time_sugar.svg)](http://badge.fury.io/rb/time_sugar)

Syntactic sugar for handling time. If you are familiar with [Active Support](https://github.com/rails/rails/tree/master/activesupport),
but you don't want to add the whole library for just handling time,
`time_sugar` may be helpful.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'time_sugar'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install time_sugar
```

## Usage

Time sugar add some utility methods to Fixnum, which are useful for doing
stuff like this:

```ruby
1.second #=> 1
1.minute #=> 60
1.hour #=> 3600
1.day #=> 86400
1.week #=> 604800

Time.now #=> 2014-02-11 23:55:47 -0300
1.minute.ago #=> 2014-02-11 23:55:46 -0300

Time.now #=> 2014-02-11 23:55:47 -0300
1.minute.ago #=> 2014-02-11 23:54:47 -0300

Time.now #=> 2014-02-11 23:55:47 -0300
1.hour.ago #=> 2014-02-11 22:55:47 -0300

Time.now #=> 2014-02-11 23:55:47 -0300
1.day.ago #=> 2014-02-10 23:55:47 -0300

Time.now #=> 2014-02-11 23:55:47 -0300
1.week.ago #=> 2014-02-04 23:55:47 -0300
```

### Is it any good?

I don't know!

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

See the [LICENSE](https://github.com/patriciomacadden/time_sugar/blob/master/LICENSE).
