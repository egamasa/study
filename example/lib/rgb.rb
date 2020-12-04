
# def to_hex(r, g, b)
#   hex = '#'
#   [r, g, b].each do |n|
#     hex += n.to_s(16).rjust(2, '0')
#   end
#   hex
# end

# def to_hex(r, g, b)
#   [r, g, b].inject('#') do |hex, n|
#     hex += n.to_s(16).rjust(2, '0')
#   end
# end

def to_hex(r, g, b)
  "##{[r, g, b].map { |n| n.to_s(16).rjust(2, '0') }.join}"
end

# def to_ints(hex)
#   r = hex[1..2]
#   g = hex[3..4]
#   b = hex[5..6]
#   [r, g, b].map { |s| s.hex }
# end

def to_ints(hex)
  hex.scan(/\w\w/).map(&:hex)
end
