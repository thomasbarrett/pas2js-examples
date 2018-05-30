// Implementing an Object Pascal MVC with W


{$mode objfpc}
{$modeswitch externalclass}

program custom_elements;

uses JS, Web;

var
  textLabel: TJSHTMLElement;
  textField: TJSHTMLElement;

function buttonClicked(event: TJSMouseEvent): boolean;
begin
  textLabel.innerHTML := 'Hello ' + toString(TJSObject(textField).properties['value']) + '!';
  result := false;
end;

begin
  textLabel := TJSHTMLElement(document.getElementById('label'));
  textField := TJSHTMLElement(document.getElementById('field'));
  TJSHTMLElement(document.getElementById('button')).onclick := @buttonClicked;
end.
