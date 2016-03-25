# loops.rb
# You can pass values to break and they become the return value of the loop

text = while message = "here's a message"
  break "there's nothing there" if message == ''
end

