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
i: Integer;
Tabla:TStrings;
begin
with TFileOpenDialog.Create(nil) do
  try
    //Options := [fdoPickFiles];
    if Execute then
    Tabla.Create;
Tabla := TStringList.Create;
     // ShowMessage(FileName);
      //  GetFileNames(FileName, Files);
     // for i:= 0 to Files.Count-1 do
Tabla.LoadFromFile(Filename);
Memo1.Lines.LoadFromFile(Filename)  ;


  finally
    Free;
  end;

// Tabla.SaveToFile('resultado.txt' );
//Tabla.Free;
end;

end.
