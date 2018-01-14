# Variable declarations
(foo: string) = "Hello, World!"
(bar: number) = 0

# Function declarations
numVowels = (word: string): number =>
  vowels = new Set("aeiou")
  count = 0
  for char in word if vowels.has(char)
    count++
  count

# Generics
reversed = <T>(array: Array<T>): Array<T> =>
  item for item in array by -1

# Class declarations
class Point
  (sum: number)

  constructor: (x: number, y: number) =>
    @sum = @x + @y

  move: (x: number, y: number) =>
    @x += x
    @y += y

  copy: (): Point =>
    new Point(@x, @y)

  @origin: (): Point =>
    new Point(0, 0)

# Object Type Aliases
type Person =
  name: string
  age: number

type Dictionary =
  [number]: string
  foo: string

type Callable = {
  (x: string) => number
  foo: string
}

# Function Type Aliases
type TimesTwo = (value: number) => number

type Identity = <T>(x: T) => T

# Array types
(arrayOfNumAlt: Array<number>) = []
(arrayOfOptionalNum: Array<?number>) = [null, 0]

(tupleOfStrAndNum: [string, number]) = ["Hi", 42]

# Interfaces
interface Comparable<T>
  compare: (a: T, b: T) => number

# Export and import
export type Foo = string;

import type {Foo} from "./foo"
(foo: Foo) = "Hello"

# Destructured bindings
({a, b: {c}}: {a: string, b: {c: number}}) = {a: "", b: {c: 0}}
([a, b]: [string, number]) = ['Hello', 42]

# Typecasts
(1 + 1 :: number)

obj =
  name: (null :: ?string)

([1, "a", true] :: Array<mixed>).map(x => x)
