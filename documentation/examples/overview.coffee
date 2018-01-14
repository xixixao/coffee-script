# Assignment:
number   = 42
opposite = true

# Conditions:
if opposite
  number := -42

# Functions:
square = (x) => x * x

# Arrays:
list = [1, 2, 3, 4, 5]

# Objects:
math = {
  root:   Math.sqrt
  square: square
  cube:   (x) => x * square(x)
}

# Splats:
race = (winner, runners...) ->
  print(winner, runners)

# Existence:
if elvis?
  alert("I knew it!")

# Array comprehensions:
cubes = (math.cube(num) for num in list)
