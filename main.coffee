previous_value = 0
threshold  = 10

changed_significantly = (new_value) ->
  if new_value >= previous_value + threshold or new_value <= previous_value - threshold
    previous_value = new_value
    yes
  else
    previous_value = new_value
    no


console.log if changed_significantly(3) then "Big change!" else "No signficant change."
console.log if changed_significantly(10) then "Big change!" else "No signficant change."
console.log if changed_significantly(20) then "Big change!" else "No signficant change."
console.log if changed_significantly(22) then "Big change!" else "No signficant change."
console.log if changed_significantly(12) then "Big change!" else "No signficant change."
console.log if changed_significantly(22) then "Big change!" else "No signficant change."
console.log if changed_significantly(0) then "Big change!" else "No signficant change."


stack =
  storage: 0
  max_number_size: 100
  add: (number) -> if number < @.max_number_size then @.storage = @.storage * @.max_number_size + number
  peak: () -> @.storage % @.max_number_size
  pop: () ->
    number = @.storage % @.max_number_size
    @.storage = @.storage // @.max_number_size
    number

stack.add 3
stack.add 94
console.log stack.peak()
console.log stack.pop()
console.log stack.peak()
console.log stack.add 102
console.log stack.pop()

stack.max_number_size = 256

stack.add 3
stack.add 94
console.log stack.peak()
console.log stack.pop()
console.log stack.peak()
console.log stack.add 102
console.log stack.peak()
console.log 