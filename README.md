# FastFormater 0.1.3

THis gem convert Ruby Hashs into XML and JSON types of data.
I did not made the json converter, just packed it up.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fast_formater'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install fast_formater

## Usage

  After adding the gem:

```ruby
h = {
  font: "Arial",
  size: 17,
  style: "bold",
  title: "text-expects"
}

f = FastFormater::Formater.new

f.getXml(h)  #This will create XML type of data
f.getJson(h) #This will create JSON type of data

f.makeXml(h)  #This will create XML file called 'format.xml'
f.makeJson(h) #This will create JSON file called 'format.json'

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/joaomarcuslf/fast_formater. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

