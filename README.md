# PerVersion

Manage your application version with per-version.

## Installation

Add `gem "per-version"` to your Gemfile and then run `bundle install`.

Once installed, you'll have to run this generator script:

``` bash
$ rails g version_file
```

That will stick a file named VERSION in the root directory of your application which looks
like this:

``` ruby
VERSION = "0.0.1"
```

## Show current version

So anytime you're working away and you want to know the current working version
of your application run `rake version:show`

`Current Version: 2.0.1`

## Release a new version

So you've added a bunch of awesome features and want to launch a new version.

1. Make sure your git commits are up to date.
2. Change VERSION to show the next version number.
3. `git commit -am "Updated version for new release"`
4. `rake version:release`

Questions and suggestions welcome [Gavin Morrice]("mailto:gavin@gavinmorice.com")

This project rocks and uses MIT-LICENSE.