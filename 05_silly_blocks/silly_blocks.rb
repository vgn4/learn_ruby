
def reverser
  words = yield
  output = []

  words.split.map do |word|
    output << word.reverse
  end
  output.join(" ")
end

def adder(num = 1)
  yield + num
end

def repeater(num = 1)
  num.times do
    yield
  end
end