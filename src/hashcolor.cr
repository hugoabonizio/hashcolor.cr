require "./hashcolor/*"

module Hashcolor
  @@colors : Array(String)?

  def self.colors=(colors : Array(String))
    @@colors = colors
  end

  def self.colors
    @@colors
  end

  def self.generate(obj)
    return generate_set(obj) if @@colors
    generate_random(obj)
  end

  def self.generate_random(obj)
    hex = (obj.hash.abs & 0x00FFFFFF).to_s(16).upcase
    "00000"[0, 6 - hex.size] + hex
  end

  def self.generate_set(obj)
    if colors = @@colors
      return colors[obj.hash.abs % colors.size]
    end
    "FFFFFF"
  end
end
