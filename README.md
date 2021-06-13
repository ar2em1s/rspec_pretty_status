# RspecPrettyStatus

Pretty controller specs with rails statuses in pure rspec.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec_pretty_status'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rspec_pretty_status


Then include in RSpec:

```ruby
require 'rspec_pretty_status'

RSpec.configure do |config|
  config.include RSpecPrettyStatus
end
```
## Usage

In controller specs:

```ruby
it { expect(response).to have_http_status(:ok) }
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Ar2emis/rspec_pretty_status.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
