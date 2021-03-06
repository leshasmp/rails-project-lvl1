# HexletCode

[![Lint](https://github.com/leshasmp/rails-project-lvl1/actions/workflows/lint.yml/badge.svg)](https://github.com/leshasmp/rails-project-lvl1/actions/workflows/lint.yml)
[![hexlet-check](https://github.com/leshasmp/rails-project-lvl1/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/leshasmp/rails-project-lvl1/actions/workflows/hexlet-check.yml)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hexlet_code'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install hexlet_code

## Usage

```ruby
require "hexlet_code"
```
```ruby
HexletCode::Tag.build('img', src: 'path/to/image')
```
```txt
<img src="path/to/image">
```
```ruby
HexletCode::Tag.build('label', for: 'email') { 'Email' }
```
```txt
<label for="email">Email</label>
```
```ruby
User = Struct.new(:name, :job, :gender, keyword_init: true)
user = User.new name: 'rob', job: 'hexlet', gender: 'm'
HexletCode.form_for user, url: '/users'
```
```txt
<form action="#" method="post"></form>
```
```ruby
HexletCode.form_for @user do |f|
    f.input :name, class: 'user-input'
    f.input :job, as: :text, rows: 50, cols: 50
    f.submit
end
```
```txt
<form action="#" method="post">
    <label for="name">Name</label>
    <input name="name" type="text" value="rob" class="user-input">
    <label for="job">Job</label>
    <textarea cols="50" rows="50" name="job">hexlet</textarea>
    <input name="commit" type="submit" value="Save">
</form>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/hexlet_code.
