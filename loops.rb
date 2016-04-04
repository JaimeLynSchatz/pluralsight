# loops.rb
# You can pass values to break and they become the return value of the loop

text = while message = "here's a message"
  break "there's nothing there" if message == ''
end

# check out the redo loop, too
# could be useful when getting input from the user

