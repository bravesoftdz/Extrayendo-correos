unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Memo2: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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

//function SplitString(const S, Delimiters: string): TStringDynArray;

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
  //MyString := 'word:doc,txt,docx';
  MyString :=  Tabla.Strings[i] ;
Splitted := MyString.Split([':']);
Tabla2.Add(Splitted[0]) ;
//Memo2.Lines.Add(Splitted[0]);
//Memo2.Lines.EndUpdate;
end;

  finally
    Free;
    Tabla2.SaveToFile('Resultado.txt'+Filename );
  end;

// Tabla.SaveToFile('resultado.txt' );
//Tabla.Free;
end;

procedure TForm3.Button2Click(Sender: TObject);
//var
 //*
begin
//*for i := 0 to Tabla1.Count-1 do
 //*        MyString :=  Tabla1.String[i]
  //MyString := 'word:doc,txt,docx';
 //* Splitted := MyString.Split([':']);
//*Memo2.Lines.Add(Splitted[0]);

end;
end.

end.
