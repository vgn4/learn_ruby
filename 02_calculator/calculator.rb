def add(x,y)
  x+y
end

def subtract(x,y)
  x-y
end

def sum(x)
  solution = 0
  x.each do |num|
      solution += num
  end
    solution
end

def multiply(num)
  product = 1
  num.each do |i|
    product *= i
  end
  product
end

def power(x, y)
  x**y
end

def factorial(x)
  solution = 1
  if x > 0
    x.downto(1) do |num|
      solution *= num
    end
  elsif x == 0
    solution = 1
  else
    solution = "undefined"
  end
  solution
end