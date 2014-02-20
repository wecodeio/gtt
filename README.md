# gtt. git time-traveler

A tool that makes it easier to travel through time inside git repos

## Installation

    $ gem install gtt

## Usage

> **Note:** this gem should be used inside a repo. No commits should be done while traveling through time, unless you really know what you are doing.

* Set the repo for time-traveling

    $ gtt --init
    Initialized gtt-tags. Now you can traverse

When you execute `gtt --init` you get two tags in your repo: one at the very top, and other one at the bottom. Those are your marks to travel through the commits.

* Travel back in time

    $ gtt --prev
    Previous HEAD position was 6fc9bb5... #6
    HEAD is now at 82c2874... #5
    Traveled back in time!

This command moves you one step back in time.

* Travel into the future

    $ gtt --next
    Previous HEAD position was 82c2874... #5
    HEAD is now at 6fc9bb5... #6
    Moved on

This command moves you one step ahead in time.

* Cleanup all the mess before continue working with your repo

    $ gtt --clean
    HEAD is now at 6fc9bb5... #6
    Deleted tag 'gtt-first' (was 2083bac)
    Deleted tag 'gtt-last' (was 6fc9bb5)
    Removed gtt-tags. Now your repo is clean

Cleaning a repo will set you in the present time of the repo, and remove extra tags. In short, it will leave the repo exactly as before using `gtt`.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
