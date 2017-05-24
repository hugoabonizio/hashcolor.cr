require "option_parser"
require "../hashcolor"

prefix = nil

OptionParser.parse! do |parser|
  parser.banner = "Usage: hashcolor -p PREFIX [color]"
  parser.on("-p PREFIX", "Prefix to color") { |pre| prefix = pre }
end

puts "#{prefix}#{Hashcolor.generate(ARGV[0]? || rand.to_s)}"
