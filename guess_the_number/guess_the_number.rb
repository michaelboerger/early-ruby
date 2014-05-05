def random (max)
  num = rand(max)
end

def prompt (text)
  print "#{text}"
  gets.chomp
end

def checkinput (num)
  if num.to_i <= 0
    num = prompt('YOU ARE INVALID, ERROR ERROR ERROR ERROR PLEASE COMPLY, ENTER A POSITIVE NUMBER: ').to_i
  end
  return (num)
end

max = prompt("Guess the number game! Pick a positive number you want as the maximum: ").to_i
max = checkinput(max)
num = random(max).to_i
num = checkinput(num)
guess = prompt("Guess a number between 0 and #{max}: ").to_i
guess = checkinput(guess)
while num != guess
  if num < guess
    guess = checkinput(guess)
    guess = prompt("Too big, guess again: ").to_i
  else
    guess = checkinput(guess)
    guess = prompt("Too small, guess again: ").to_i
  end
end
  puts "WHAT A WIN!"