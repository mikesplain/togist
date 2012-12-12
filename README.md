# ToGist
A simple app that will send command line output into a private or public gist, copy the url to your clipboard, and (if requested) open that url in your browser.

## Requirements
This gem is designed for use on Mac OSX.


## Installation

Run this command in your terminal:

    gem 'togist'

Or install it yourself:

    $ rake install togist

###Rbenv
You'll probably need to run:
    rbenv rehash

## Usage

Output files or commands and pipe them into either shortcut:
    echo 'foo' | 2g
    cat foo.rb | 2g
###Shortcuts:
    2g : Uploads to private gist and copies gist url to mac clipboard
    2gpub : Same as above except public
###Tips:
Add an 'o' to the end of a shortcut to make it open your browser to the gist
    echo 'foo' | 2go # Will open to the private gist url
    echo 'foo' | 2gpubo # Will open to the public gist url

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
