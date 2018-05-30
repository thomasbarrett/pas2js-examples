# pas2js-examples

## Basic Usage

In its most basic use case, pas2js can transpile a subset of Object Pascal to javascript. The builtin `System` unit implements some Pascal standard library functions to javascript. Using the buildin functions, you can use pas2js to write REPL programs that can be interpreted on any platform with a browser or node.js. Once the Pascal is transpiled, there is no need to recompile for different platforms.

```
program hello;

begin
  Writeln('Hello World');
end.
```

## Creating Javascript Objects

The real power behind pas2js is its ability to interact with javascript and the browser DOM. Pascal can be used as a type-safe alternative to javascript. The ability to interact with Javascript can be included in the `JS` unit. Objects are given the pascal type `TJSObject`.

```
program javascript;

uses JS;

var
  foo, bar, baz, qux: TJSObject;

begin

  foo := TJSObject.New;
  bar := New(['name', 'thomas', 'age', 18]);
  baz := TJSObject.Create(bar);
  qux := TJSObject.Create(bar, New([
  'property1', New([
      'value', 42,
      'writable', false
    ])
  ]));

end.
```
# Working with TJSValue

Because javascript is not type-safe, some javascript functions may return values which could be either an object or a builtin type such as string, integer, array, or boolean. The pascal type `TJSValue` represents a value which could be any javascript type. The `toInteger`, `toString`, and `toObject` functions can be used to convert the TJSValue to a specific type. A specific type can be converted to a TJSValue by using a standard pascal type cast such as `TJSValue(foo)`.

```
// value to object
obj := toObject(val);

// object to value
val := TJSValue(obj)
```
