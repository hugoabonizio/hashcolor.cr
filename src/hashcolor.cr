require "./hashcolor/*"

module Hashcolor
  def self.generate(obj)
    hex = (obj.hash.abs & 0x00FFFFFF).to_s(16).upcase
    "00000"[0, 6 - hex.size] + hex
  end
end
