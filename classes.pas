program classes;

type
  Foo = class
    procedure Bar;
  end;

procedure Foo.Bar;
begin
  Writeln('foo foo foo');
end;

var
  example: Foo;

begin
  example := Foo.Create;
end.
