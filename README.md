# Squinty

A ruby gem to control a [Neopixel strip](http://www.adafruit.com/category/168) with build light colours and effects, via a [Moteino](http://lowpowerlab.com/moteino/). It uses the same interface as the [Blinky](https://github.com/perryn/blinky) gem, the idea being that the adapter can take one or the other and you can duck-type yourself into bliss.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'squinty'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install squinty

## Usage

```ruby
require 'rubygems'
require 'squinty'

light = Squinty.new.light

light.success!
light.failure!
light.building!
light.warning!
light.off!
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/squinty/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
