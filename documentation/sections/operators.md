## Operators and Aliases

Because the `==` operator frequently causes undesirable coercion, is intransitive, and has a different meaning than in other languages, CoffeeScript compiles `==` into `===`, and `!=` into `!==`.

Logic operators are the same as in JavaScript.

Instead of a newline or semicolon, `then` can be used to separate conditions from expressions, in `while`, `if`/`else`, and `switch`/`case` statements.

As a shortcut for `this.property`, you should use `@property`.

You can use `in` to test for array presence, and `of` to test for JavaScript object-key presence.

In a `for` loop, `from` compiles to the [ES2015 `of`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for...of). (Yes, it’s unfortunate; the CoffeeScript `of` predates the ES2015 `of`.)

To simplify math expressions, `**` can be used for exponentiation and `//` performs floor division. `%` works just like in JavaScript, while `%%` provides [“dividend dependent modulo”](https://en.wikipedia.org/wiki/Modulo_operation):

```
codeFor('modulo')
```

All together now:

| CoffeeScript | JavaScript |
| --- | --- |
| `==` | `===` |
| `!=` | `!==` |
| `!` | `!` |
| `&&` | `&&` |
| `||` | `||` |
| `true` | `true` |
| `false` | `false` |
| `@.` | `this.` |
| `a in b` | `[].indexOf.call(b, a) >= 0` |
| `a of b` | `a in b` |
| `for a from b` | `for (a of b)` |
| `a ** b` | `Math.pow(a, b)` |
| `a // b` | `Math.floor(a / b)` |
| `a %% b` | `(a % b + b) % b` |

```
codeFor('aliases')
```
