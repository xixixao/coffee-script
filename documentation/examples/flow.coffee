
# Variable declarations
() =>
  foo: number = 3

() =>
  (foo: number) = 3

# Function declarations

numVowels = (word: string): number =>
  vowels = new Set("aeiou")
  count = 0
  for char in word
    if vowels.has(char)
      count++
  count

# Generics

reversed = <T>(array: Array<T>): Array<T> =>
  item for item in array by -1

sum = (...xs: Array<number>): number =>
  xs.reduce((a, b) => a + b)

# Destructuring
{a, b: {c}}: {a: string, b: {c: number}} = {a: "", b: {c: 0}}

# Typecasts
("flow":: number)
