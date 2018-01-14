## Type Annotations

Static type checking can be achieved in CoffeeScript using [Flow](https://flow.org/). You don't have to include the `// @flow` pragma, as the compiler automatically adds it to the top of the file. You can use `# @noflow` instead to disable this behavior.

```
codeFor('type_annotations')
```

As you can see, there are a few differences between Flow and CoffeeScript(Flow) syntax. Objects and classes follow their corresponding CoffeeScript syntax. Annotating declarations requires wrapping the left hand side in parentheses (to disambiguate from object literals); likewise, typecasts use `::` instead of single colon. Luckily, thanks to Flow's powerful inference you rarely need to use these. The most common annotations, those on functions, stay identical to Flow and ES6.

CoffeeScript does not do any type checking itself; the JavaScript output you see above needs to get passed to Flow for it to validate your code. We expect most people will use a [build tool](#es2015plus-output) for this, but here’s how to do it the simplest way possible using the [CoffeeScript](#cli) and [Flow](https://flow.org/en/docs/usage/) command-line tools, assuming you’ve already [installed Flow](https://flow.org/en/docs/install/) and the [latest CoffeeScript](#installation) in your project folder:

```bash
coffee --bare --compile app.coffee && npm run flow
```

If you configure your build chain to compile CoffeeScript and pass the result to Flow in-memory, you can get better performance than this example; and a proper build tool should be able to watch your CoffeeScript files and recompile and type-check them for you on save.
