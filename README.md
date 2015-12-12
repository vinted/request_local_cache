# RequestLocalCache

Cache data per request basis.

Cache is created on request start and removed on request end.

Wraps `ActiveSupport::Cache::Strategy::LocalCache::LocalStore`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'request_local_cache'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install request_local_cache

## Usage

Call `RequestLocalCache.store` to get the instance of
`ActiveSupport::Cache::Strategy::LocalCache::LocalStore`, it is a in memory local store:
https://github.com/rails/rails/blob/4-2-stable/activesupport/lib/active_support/cache/strategy/local_cache.rb#L36

```ruby
RequestLocalCache.store
=> #<ActiveSupport::Cache::Strategy::LocalCache::LocalStore:0x0055995ed0d8e0 @data={}, @options={}>

RequestLocalCache.store.fetch('key') { :value }
=> :value
```

Public interface

```ruby
ls RequestLocalCache.store
=> ActiveSupport::Cache::Store#methods:
  cleanup  decrement  delete  delete_matched  exist?
  fetch  fetch_multi
  increment  logger  logger=  mute  options
  read  read_multi
  silence  silence!  silence?
  write
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/vinted/request_local_cache.

