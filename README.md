# [wyphan.github.io](https://wyphan.github.io)

![Ruby](https://github.com/wyphan/wyphan.github.io/workflows/Ruby/badge.svg)

Repository for wyphan's personal website on GitHub.io

To build and test:
```
bundle config set path 'vendor/cache'
bundle update
bundle install
bundle exec jekyll server --port 4001
```

By default Jekyll serves on port 4000, which is already in use for NoMachine/NX on my systems, thus the custom port 4001.

Licensed under [UnLicense](https://github.com/wyphan/wyphan.github.io/blob/main/LICENSE). Feel free to adapt for your own website!
