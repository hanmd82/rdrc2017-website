# RedDotRubyConf 2017 Website

[![Build Status](https://travis-ci.org/reddotrubyconf/rdrc2017-website.svg?branch=master)](https://travis-ci.org/reddotrubyconf/rdrc2017-website)

[www.reddotrubyconf.com](http://www.reddotrubyconf.com)


To contribute, [fork the repo](https://help.github.com/articles/fork-a-repo/), then clone it from your fork:

```
$> git clone git@github.com:<your GitHub name>/rdrc2017-website.git
```

Bundle and run the Rails server:

```
$> cd rdrc2017-website
$> bundle install
...
$> bundle exec rake db:create db:migrate db:test:prepare
$> bundle exec rspec
...
$> rails s
```

Develop locally, commit your changes and push to your fork:

```
$> git add .
$> git commit -m 'Your commit message'
$> git push origin master
```

Then issue a [Pull Request through GitHub](https://help.github.com/articles/using-pull-requests/).

Thank you!
