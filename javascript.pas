program javascript;

uses JS;

var
  foo, bar, baz, qux: TJSObject;

begin

  foo := TJSObject.New;
  bar := new(['name', 'thomas', 'age', 18]);
  baz := TJSObject.Create(bar);
  qux := TJSObject.Create(bar, new([
  'property1', new([
      'value', 42,
      'writable', false
    ])
  ]));

end.
