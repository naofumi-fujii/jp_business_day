# JpBusinessDay

some useful methods for business days in japan.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jp_business_day'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install jp_business_day

## Usage

```ruby
  example ".first_day_of_this_month" do
    date = Date.parse("1993-02-24")
    expect(JpBusinessDay.first_day_of_this_month(date)).to eq Date.parse("1993-02-01")
  end

  example ".last_day_of_this_month" do
    date = Date.parse("1993-02-24")
    expect(JpBusinessDay.last_day_of_this_month(date)).to eq Date.parse("1993-02-28")
  end

  example ".last_business_day_of_this_month" do
    date = Date.parse("2021-10-21")
    expect(JpBusinessDay.last_business_day_of_this_month?(date)).to eq false

    date = Date.parse("2021-10-29")
    expect(JpBusinessDay.last_business_day_of_this_month?(date)).to eq true
  end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/jp_business_day. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/jp_business_day/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the JpBusinessDay project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/jp_business_day/blob/master/CODE_OF_CONDUCT.md).
