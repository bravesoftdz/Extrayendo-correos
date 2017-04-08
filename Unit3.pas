{Apuromafo v1.1  07/04/2017}
unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}
procedure GetFileNames(Path: string; TS: TStrings);
var
  sr: TSearchRec;
begin
  if FindFirst(ExtractFilePath(Path)+'*'+ExtractFileExt(Path),32,sr) = 0 then
    repeat
      TS.Add(ExtractFilePath(Path) + sr.Name);
    until FindNext(sr) <> 0;
end;



procedure TForm3.Button1Click(Sender: TObject);
var
i: Int64;
Tabla:TStrings;
Tabla2:TStrings;
MyString: String;
Splitted: TArray<String>;
begin
//Tabla.Create;
Tabla := TStringList.Create;
Tabla.Clear;
Tabla2 := TStringList.Create;
Tabla2.Clear;
with TFileOpenDialog.Create(nil) do
  try
// Options := [fdoPickFolders];
    if Execute then
     // ShowMessage(FileName);
//    GetFileNames(FileName, Files);
//  for i:= 0 to Files.Count-1 do
Tabla.LoadFromFile(Filename);
//Memo1.Lines.LoadFromFile(Filename)  ;
//Memo2.Clear;
//Memo2.Lines.BeginUpdate ;
for i := 0 to Tabla.Count-1 do
begin
MyString :=  Tabla.Strings[i] ;
//MyString :=  Tabla.Strings[i] ;
Splitted := MyString.Split([':']);
Tabla2.Add(Splitted[0]) ;
//Memo2.Lines.Add(Splitted[0]);
//Memo2.Lines.EndUpdate;
end;

  finally
    Free;
    Tabla2.SaveToFile('Resultado.txt');
	// Tabla.SaveToFile('Resultado.txt'+ FileName);
	Tabla.Free;
	Tabla2.Free;
  end;
end;
end.
