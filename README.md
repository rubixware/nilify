# Nilify
[![Gem Version](https://badge.fury.io/rb/nilify.svg)](http://badge.fury.io/rb/nilify)


A gem for null object pattern easy implementation on Ruby objects.

## Getting started

Nilify works with Ruby 1.9.3 onwards. Install this gem with:

```ruby
gem install 'nilify'
```

##Example

Let's check an example for the next Item class.

```ruby
class Item
	attr_accessor :sku, :title
end
```

To create his nil counterpart there are two options:

```ruby
#Option 1, on the nil container select the methods to mock
class NilItem
  extend Nilify
  nilify [:sku, :title]
end

#OR option 2, pass use the Item class to mock all the defined methods.
class NilItem
  extend Nilify
  nilify_from Item
end
```

Then you can use the mocked methods like this:

```ruby
> item = Item.new
> item.id
=> nil
> item = NilItem.new
> item.id
=> "id is a mock method"
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

### Devs

* Everardo Medina (https://github.com/everblut)

### Future

* Add better examples
* Add support for ActiveRecord
* Add conditional mocking
* Add expected return value
* Add custom response for mocked methods
* Add wiki


## Credits
Rubixware - hello@rubixware.com

[Follow us](http://twitter.com/rubixware "Follow us")


[Like us on Facebook](https://www.facebook.com/rubixware "Like us on Facebook")


### License

MIT License. Copyright 2015 Rubixware. http://www.rubixware.com
