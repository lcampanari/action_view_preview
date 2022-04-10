# ActionViewPreview
Sometimes being able to preview a view might come in handy, like when a view is going to be used only inside a PDF, for example.

This gem allows a setup similar `ActionMailer::Preview`, and provides a development tool for rendering and debugging views that wouldn't otherwise be rendered in your application.

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
### Command Line Install

Run `rails generate action_view_preview:install` and the generator should create a `hello_preview.rb` and mount the route in your `routes.rb` file, similar to the steps shown below in the manual install.

### Manual Install
1. Mount the engine in your `routes.rb`:

```ruby
Rails.application.routes.draw do
  # Add the line below
  mount ActionViewPreview::Engine => "/action_view_preview"
end
```

2. Create files `*_preview.rb` on `test/views/previews/`, e.g. `hello_preview.rb`:

```ruby
class HelloViewPreview < ActionViewPreview::Base
  def hello
    '<b>Hello world</b>'
  end
end
```

3. Access the route `/action_view_preview` to see the available previews

## Configuration

Use `config.action_view_preview` on `config/application.rb` to add custom configuration. For example, if you want to place the preview files in `lib/view_previews`: 

```ruby
config.action_view_preview.preview_path = "#{Rails.root}/lib/view_previews"
```

Possible config values:

| Config | Default | Description |
| - | - | - |
| `preview_path` | `test/views/previews` | Path to the preview files |

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
