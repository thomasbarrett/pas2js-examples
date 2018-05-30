{$mode objfpc}
{$modeswitch externalclass}

type
  CMLocation = record
    line: Integer;
    char: Integer;
  end;

  CMRange = record
    anchor: CMLocation;
    head: CMLocation;
  end;

  CMLineHandle = class external name 'LineHandle'
  end;

  CodeMirror = class external name 'CodeMirror'
  public
    { Content Manipulation Methods }
    function GetValue: String; overload;
    function GetValue(seperator: String): String; overload;
    procedure SetValue(content: String): String; overload;
    function GetRange(from: CMLocation; _to: CMLocation): String; overload;
    function GetRange(from: CMLocation; _to: CMLocation; seperator: String): String; overload;
    function ReplaceRange(replacement: String; from: CMLocation; _to: CMLocation): String; overload;
    function ReplaceRange(replacement: String; from: CMLocation; _to: CMLocation, origin: String): String; overload;
    function GetLine(n: Integer): String;
    function LineCount: Integer;
    function LastLine: Integer;
    function GetLineHandle(num: Integer): CMLineHandle;
    function GetLineNumber(handle: CMLineHandle): Integer;
    procedure EachLine(f: reference to procedure(line: CMLineHandle)) overload;
    procedure EachLine(start: Integer; end: Integer; f: reference to procedure(line: CMLineHandle)) overload;
    procedure MarkClean;
    function ChangeGeneration: Integer; overload;
    function ChangeGeneration(closeEvent: Boolean): Integer; overload;
    function IsClean: Boolean; overload;
    function IsClean(generation: Integer): Boolean; overload;

    { Cursor and Selection methods }
    function GetSelection: String; overload;
    function GetSelection(lineSep: String): String; overload;
    procedure ReplaceSelection(replacement: String); overload;
    procedure ReplaceSelection(replacement: String; select: String); overload;
    procedure ReplaceSelections(replacements: TStringDynArray); overload;
    procedure ReplaceSelections(replacements: TStringDynArray; select: String); overload;
    function GetCursor: CMLocation; overload;
    function GetCursor(start: String): CMLocation; overload;
    function ListSelections: array of CMRange;
    function SomethingSelected: Boolean;
    procedure SetCursor(position: CMLocation); overload;
    procedure SetCursor(position: CMLocation; options: TJSObject); overload;
    procedure SetCursor(line: Integer; ch: Integer); overload;
    procedure SetCursor(line: Integer; ch: Integer; options: TJSObject); overload;
    procedure SetSelection(anchor: CMLocation); overload;
    procedure SetSelection(anchor: CMLocation; head: CMLocation) overload;
    procedure SetSelection(anchor: CMLocation; options: TJSObject); overload;
    procedure SetSelection(anchor: CMLocation; head: CMLocation; options: TJSObject) overload;
    // set selections
    // add selection
    // extend selection
    // extend selections
    // extend selections by
    // set extending
    // has focus
    // find posH
    // find posV
    // fund word at

    {Configuration Methods}
    procedure SetOption(option: String, _value: TJSValue);
    function GetOption(option: String): TJSValue;
    procedure AddKeyMap(map: JSObject, bottom: Boolean);
