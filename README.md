# epf-rails

`epf-rails` provides rails integration for [`epf`].

## Installation

`Gemfile`:

```ruby
gem 'epf-rails'
gem 'epf-source' # specify versioning here to ensure compatibility
```

```sh
$ bundle update
```

Or install directly:

```sh
$ gem install epf-rails
$ gem install epf-source --version '(your desired version)'
```

Add `epf` to sprockets. `application.js`:

```javascript
//= require epf
```

## Usage

Read the [docs][epf site].

See [README][`epf`] at the main `epf` site.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[`epf`]: https://github.com/GroupTalent/epf
[epf site]: http://epf.io
