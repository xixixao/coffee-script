# Compiles
f x

# Pretty-printed
f(x)

# Compiles
f (x) => x

# Pretty-printed
f((x) => x)

# Compiles
f((x) =>
  x)

# Pretty printed
f (x) =>
  x

# Pretty printed
f a, (x) =>
  x

# Compiles
f (x) =>
  x
, b

# Pretty printed
f(
  (x) =>
    x
  b
)
