program dom_test;

uses JS, Web;
// the Web unit defines 3 global variables ( document, window and console )

var
  header: TJSElement;

begin
  header := document.createElement('h1');
  header.innerHTML := 'Hello';
  document.body.append(header);
  document.body.innerHTML += '<h1>Goodbye</h1>';
end.
