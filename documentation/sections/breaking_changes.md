## Breaking Changes From CoffeeScript 2 to (Flow)

CoffeeScript(Flow) aims to output as much idiomatic ES2015+ syntax as possible with as few breaking changes from CoffeeScript 2 as possible, while aligning as close as possible to ES6. Many breaking changes, unfortunately, were unavoidable.

Scoping rules have changed and the reassignment operator has been introduced, see [Lexical Scope](#lexical-scope). Shadowing is now possible, accidental mutation isn't.

Operators are more in line with JavaScript, see [Operators](#operators), and there are is no aliasing.

Interpolation uses `$` instead of `#` to align with JavaScript.

Prototype accessor uses `:::` to avoid ambiguity with a Flow typecast.

`switch` keywords are renamed to align with JavaScript. TODO: might be renamed to `match` to align with [https://github.com/tc39/proposal-pattern-matching](proposal-pattern-matching).

`when` in for loops is renamed to `if` and post-fix conditionals have been removed.

All of Flow syntax is supported, and `// @flow` pragma is automatically added unless supressed, see [Type Annotations](#type-annotations).

### Stylistic non-breaking changes

`=>` functions are now preferred over CoffeeScript 1.x style `->` arrow functions, which should be used only rarely when you specifically want to avoid the bounding behavior of ES6's `=>` (for example due to the runtime overhead of binding class methods).

`f(a, b)` is the preferred syntax for function calls. The only time parentheses-less function calls should be used is when an indented function is passed in as the last argument:

```
codeFor('function_call_parens', 'function_call_parens')
```

Spread syntax follows ES6, so `...` comes first in parameter lists, function calls and destructuring assignments.

Post-fix loops are allowed only when their result is returned/assigned.