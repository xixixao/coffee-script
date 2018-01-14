## Lexical Scoping and Variable Safety

The CoffeeScript compiler takes care to make sure that all of your variables are properly declared within lexical scope — you never need to write `var`, `let` or `const` yourself.

```
codeFor('scope', 'inner')
```

`outer` is not redeclared within the inner function, because it’s using the explicit `:=` reassingment operator; `inner` within the function, on the other hand, should not be able to change the value of the external variable of the same name, and therefore has a declaration of its own.

Because every normal assignment is essentially treated as declaring a new `const`, there is no way to accidentally reuse the name of and mutate an external variable, even if you’re writing a deeply nested function. To mutate an external variable, you have to use the reassignment operator `:=`, or one of the compound operators: `&&=`, `?=`, `+=`, `++` etc.

CoffeeScript(Flow) retains function scoping of vanilla ES5 JavaScript, but allows multiple declarations of the same variable provided it is in a child block (branch). Although loops compile with block scoped variables, they can be referenced outside of the loop, provided that the surrounding function scope doesn't declare the same name already.

```
codeFor('scope_lifting')
```


Although suppressed within this documentation for clarity, all CoffeeScript output (except in files with `import` or `export` statements) is wrapped in an anonymous function: `(function(){ … })();`. This safety wrapper, combined with the automatic generation of the `var` keyword, make it exceedingly difficult to pollute the global namespace by accident. (The safety wrapper can be disabled with the [`bare` option](#usage), and is unnecessary and automatically disabled when using modules.)

If you’d like to create top-level variables for other scripts to use, attach them as properties on `window`; attach them as properties on the `exports` object in CommonJS; or use an [`export` statement](#modules). If you’re targeting both CommonJS and the browser, the [existential operator](#existential-operator) (covered below), gives you a reliable way to figure out where to add them: `exports ? this`.

Since CoffeeScript takes care of all variable declaration, it is not necessary to declare variables with ES2015’s `let` or `const`.