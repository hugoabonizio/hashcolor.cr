# Hashcolor

  Generate color from a given string.

  **Hashcolor** generates a color for a given string using full RGB range or using a limited set of colors.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  hashcolor:
    github: hugoabonizio/hashcolor.cr
```

## Usage

```crystal
require "hashcolor"
puts Hashcolor.generate("Hello world") # => 0179A4

Hashcolor.colors = ["006064", "8BC34A", "FF9800"]
Hashcolor.generate("hugo") # => 8BC34A

# Using explicitly
Hashcolor.generate_random("hugo") # => B2F9FF
Hashcolor.generate_set("hugo") # => 006064
```

### Examples
|String|Generated|
|---|---|
|```Hashcolor.generate("Hello world")```|![#A6755C](https://placehold.it/15/A6755C/000000?text=+)|
|```Hashcolor.generate("Hello world!")```|![#283603](https://placehold.it/15/283603/000000?text=+)|
|```Hashcolor.generate("hugo@email.com")```|![#B3439C](https://placehold.it/15/B3439C/000000?text=+)|
|```Hashcolor.generate("D6772A")```|![#D6772A](https://placehold.it/15/D6772A/000000?text=+)|

## Contributing

1. Fork it ( https://github.com/hugoabonizio/hashcolor.cr/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [hugoabonizio](https://github.com/hugoabonizio) Hugo Abonizio - creator, maintainer
