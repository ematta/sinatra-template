# Debugging

We are using `pry` and `pry-remote` for our debugging. Add `binding.remote_pry` to the line of code you are wanting to break at then, in a new terminal, run `bundle exec pry-remote`. Leaving this in will hang rack.

# v8, therubyracer, and coffee-script

To get this installed (when you run into issues) execute

```
$ brew install v8@3.15
$ bundle config build.libv8 --with-system-v8
$ bundle config build.therubyracer --with-v8-dir=$(brew --prefix v8@3.15)
$ bundle install
```

Solution from [here](https://gist.github.com/fernandoaleman/868b64cd60ab2d51ab24e7bf384da1ca)