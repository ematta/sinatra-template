# Debugging

We are using `pry` and `pry-remote` for our debugging. Add `binding.remote_pry` to the line of code you are wanting to break at then, in a new terminal, run `bundle exec pry-remote`. Leaving this in will hang rack.