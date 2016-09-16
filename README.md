# pry-yes

Pry plugin for re-running the previous command with corrected typos.
Based on "Did you mean?" (ships with Ruby > 2.3 or as standalone gem) and inspired by https://github.com/nvbn/thefuck

[![asciicast](https://asciinema.org/a/85918.png)](https://asciinema.org/a/85918)

## Installation

    $ gem install pry-yes

## Usage

```
[1] pry(main)> class Application
[1] pry(main)*   def self.status
[1] pry(main)*     "OK!"
[1] pry(main)*   end
[1] pry(main)* end
=> :status
[2] pry(main)> Aplication.stats
NameError: uninitialized constant Aplication
Did you mean?  Application
from (pry):6:in `__pry__'
[4] pry(main)> Application.stats
NoMethodError: undefined method `stats' for Application:Class
Did you mean?  status
from (pry):7:in `__pry__'
[6] pry(main)> Application.status
=> "OK!"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/christofferh/pry-yes.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
