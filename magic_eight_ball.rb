require 'pry'
require 'colorize'


@arr = [
  'Try Again', 'What?', 'Yes', 'Oh yeah', 'Not a chance?',
  'Keep dreaming','Signs point to yes', 'Cannot predict now', 'Not really',
  'Three days from now', 'It is a secret', 'It is certain', 'Concentrate and ask again'
]

@user_arr = [
  'Try Again', 'What?', 'Yes', 'Oh yeah', 'Not a chance?',
  'Keep dreaming','Signs point to yes', 'Cannot predict now', 'Not really',
  'Three days from now', 'It is a secret', 'It is certain', 'Concentrate and ask again'
]


def magic
    puts '============== Magic Eight Ball =============='.green
    puts '1) Ask a question, any question...'
    puts '2) Add a custom response'
    puts '3) Ask a question with custom responses'
    puts '4) Quit'
    @user_input = gets.to_i
end

def custom
  puts 'Type your custom response'
  response = gets
  @user_arr << response
  puts 'Your custom response has been added. Select option 3 from the menu to use your custom response set.'
end

def quit
  exit(0)
end

while true
  case magic
  when 1
    puts "\n"
    puts 'Ask Away...'
    puts "\n"
    gets
    puts "\n"
    puts '============== Your Answer Is =============='.light_blue
    puts "\n"
    puts @arr.sample
  when 2
    puts custom
  when 3
    puts "\n"
    puts 'Ask Away...'
    puts "\n"
    gets
    puts "\n"
    puts '============== Your Answer Is =============='.light_blue
    puts "\n"
    puts @user_arr.sample
  when 4
    puts quit
  end
  puts "\n\n"
end