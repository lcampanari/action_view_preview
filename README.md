# ActionViewPreview
Short description and motivation.
## Installation
Add this line to your application's Gemfile:

```ruby
gem 'action_view_preview'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install action_view_preview
```

## Usage
1. Mount the engine in your `routes.rb`:

```ruby
Rails.application.routes.draw do
  # Add the line below
  mount ActionViewPreview::Engine => "/action_view_preview"
end
```

2. Create files `*_preview.rb` on `test/views/previews/`, e.g. `hello_preview.rb`:

```ruby
class HelloViewPreview < ActionViewPreview::Preview
  def hello
    '<b>Hello world</b>'
  end
end
```

3. Access the route `/action_view_preview/preview` to see the available previews

## Develop

1. Clone this repo
2. `rails s` on the root dir
3. Add view previews on `test/dummy/test/views/previews`
4. See view previews on `http://localhost:3000/action_view_preview/preview`
## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
