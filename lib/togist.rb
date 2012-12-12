require "togist/version"
require "Clipboard"

module Togist

end

def togist
  if checkIfPiped
    run2g
  else
    help
  end

end

def help
  puts "ToGist #{Togist::VERSION}, the simple way to gist\n\n"
  puts "Usage:"
  puts "  Output files or commands and pipe them into either shortcut"
  puts "  e.g.:"
  puts "    echo 'foo' | 2g"
  puts "    cat foo.rb | 2g\n\n"
  puts "Shortcuts:"
  puts "  2g : Uploads to private gist and copies gist url to mac clipboard"
  puts "  2gpub : Same as above except public\n\n"
  puts "Tips:"
  puts "  Add an 'o' to the end of a shortcut to make it open your browser to the gist"
  puts "  e.g.:"
  puts "    echo 'foo' | 2go # Will open to the private gist url"
  puts "    echo 'foo' | 2gpubo # Will open to the public gist url"

end

def run2g
  out = `gist -p`

  checkoutput(out)
end

def run2gpub
  out = `gist`

  checkoutput(out)
end

def checkoutput(out)
  if STDIN.tty? || out.include?("Usage: gist [options]")
    puts "Oops, you forgot to pipe something to ToGist\n\n"
    help
  elsif out.include?("getaddrinfo") || out.include?("Error")
    puts "There was an unknown error. Are you sure you can connect to github? \n\n"
    help
  else
    Clipboard.copy(out)
    puts "Gist: #{out} (copied to clipboard)"
    `open #{out}` if @open
  end
end

def checkIfPiped
  return !STDIN.tty?
end
