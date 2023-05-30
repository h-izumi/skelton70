# skelton70

My Ruby on Rails 7.0 boilerplate.

* Ruby 3.2.2
* Ruby on Rails 7.0.5
  * `rails new . -T`-c=bootstrap
* Haml
  * with [Hamlit](https://github.com/k0kubun/hamlit)
* FontAwesome
* Active Record Session Store
* Config
* dotenv
* Whenever
* Awesome Print
* Annotate
* rack-dev-mark
* rack-mini-profiler
* RSpec
* DatabaseRewinder
* factory_bot
* Guard
* SimpleCov
* Brakeman
* rails_best_practices
etc...

## How to use

Use [setup.rb](https://raw.githubusercontent.com/h-izumi/skelton70/main/setup.rb):

```shell
cd /path/to/app-parent
curl -L https://raw.githubusercontent.com/h-izumi/skelton70/main/setup.rb | APP_NAME="app-name" ruby
```

* Set `NO_COMMIT=true` to skip `git commit`.

```shell
curl -L https://raw.githubusercontent.com/h-izumi/skelton70/main/setup.rb | APP_NAME="app-name" NO_COMMIT=true ruby
```

or Manually:

```shell
cd /path/to/app-parent
curl -L -o skelton70.zip https://github.com/h-izumi/skelton70/archive/main.zip
unzip skelton70.zip
mv skelton70-main app-name
rm skelton70.zip
cd app-name
find . -type f -print0 | xargs -0 sed -i -e 's/SKELTON70/APP_NAME/g'
find . -type f -print0 | xargs -0 sed -i -e 's/skelton70/app_name/g'
find . -type f -print0 | xargs -0 sed -i -e 's/Skelton70/AppName/g'
rm README.md
rm LICENSE.txt
rm setup.rb
git init
git add .
git commit -m "initial."
```

If use on macOS, you should set argument ` ''` after `sed -i`, like `sed -i '' -e`.

## License

[CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/deed).

You probably should remove `LICENSE.txt` file when use this repo on your work.
