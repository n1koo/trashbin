COLOR_NUMS = (30..37).to_a.freeze

def say_colorfully(str)
  c = COLOR_NUMS.sample
  puts "\033[0;#{c}m#{str}\033[0m"
end

things = %w(cats dogs birds books unicorns dvds boxes socks bottles teas backpacks chairs parades ferns raindrops controllers).shuffle!
say_colorfully("------Starting To Speak!-----")

things.each_with_index do |thing, i|
  say_colorfully("How many #{thing}? I'd say #{i}!")
end

say_colorfully("------Done Speaking!-----")
