def echo(arg)
  arg
end

def shout(arg)
  arg.upcase
end

def repeat(arg, time = 2)
  ((arg + " ")* time).strip
end

def start_of_word(arg, time)
  arg[0..time-1]
end

def first_word(arg)
  wordd = arg.split(" ")
  wordd = wordd[0]
end

def titleize(arg)
  words= arg.split(" ")
  little_words = ['jaws','david copperfield','war and peace','the bridge over the river kwai']
  result = ""

  words.each do |word|
    if ((little_words).include?(word))
      word.downcase
    else
      word.capitalize!
    end
  end
  words[0].capitalize!

  words.each do |word|
    result += word + " "
  end

  return result.strip
end