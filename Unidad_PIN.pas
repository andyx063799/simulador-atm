unit Unidad_PIN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,
  jpeg;

type
  TForma_PIN = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Image2: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure AgregarDigito(Digito: string);
    procedure LimpiarPIN;
  public
    { Public declarations }
  end;

var
  Forma_PIN: TForma_PIN;

implementation

uses Unidad_Bienvenida, Unidad_Menu, MMSystem;

{$R *.dfm}

procedure TForma_PIN.AgregarDigito(Digito: string);
begin
  PlaySound(PChar(ExtractFilePath(Application.ExeName) + 'sonidos\button_click.wav'), 0, SND_FILENAME or SND_ASYNC);
  if Length(Edit1.Text) < 4 then
    Edit1.Text := Edit1.Text + Digito;
end;

procedure TForma_PIN.LimpiarPIN;
begin
  Edit1.Text := '';
end;

procedure TForma_PIN.Button1Click(Sender: TObject);
begin
  if Edit1.Text = PINCorrect then
  begin
    PlaySound(PChar(ExtractFilePath(Application.ExeName) + 'sonidos\load_correct.wav'), 0, SND_FILENAME or SND_ASYNC);
    ShowMessage('PIN correcto. Bienvenido ' + NombreUsuario);
    IntentosRestantes := 3;
    Self.Hide;
    Forma_Menu.Show;
  end
  else
  begin
    IntentosRestantes := IntentosRestantes - 1;
    if IntentosRestantes > 0 then
    begin
      PlaySound(PChar(ExtractFilePath(Application.ExeName) + 'sonidos\load_incorrect.wav'), 0, SND_FILENAME or SND_ASYNC);
      ShowMessage('PIN incorrecto. Intentos restantes: ' + IntToStr(IntentosRestantes));
      LimpiarPIN;
    end
    else
    begin
      PlaySound(PChar(ExtractFilePath(Application.ExeName) + 'sonidos\load_incorrect.wav'), 0, SND_FILENAME or SND_ASYNC);
      ShowMessage('Tarjeta bloqueada. Contacte con su banco.');
      Application.Terminate;
    end;
  end;
end;

procedure TForma_PIN.Button2Click(Sender: TObject);
begin
  PlaySound(PChar(ExtractFilePath(Application.ExeName) + 'sonidos\button_cancel.wav'), 0, SND_FILENAME or SND_ASYNC);
  Self.Hide;
  Forma_Bienvenida.Show;
end;

procedure TForma_PIN.Button3Click(Sender: TObject);
begin
  AgregarDigito('1');
end;

procedure TForma_PIN.Button4Click(Sender: TObject);
begin
  AgregarDigito('2');
end;

procedure TForma_PIN.Button5Click(Sender: TObject);
begin
  AgregarDigito('3');
end;

procedure TForma_PIN.Button6Click(Sender: TObject);
begin
  AgregarDigito('4');
end;

procedure TForma_PIN.Button7Click(Sender: TObject);
begin
  AgregarDigito('5');
end;

procedure TForma_PIN.Button8Click(Sender: TObject);
begin
  AgregarDigito('6');
end;

procedure TForma_PIN.Button9Click(Sender: TObject);
begin
  AgregarDigito('7');
end;

procedure TForma_PIN.Button10Click(Sender: TObject);
begin
  AgregarDigito('8');
end;

procedure TForma_PIN.Button11Click(Sender: TObject);
begin
  AgregarDigito('9');
end;

procedure TForma_PIN.Button12Click(Sender: TObject);
begin
  AgregarDigito('0');
end;

procedure TForma_PIN.Button13Click(Sender: TObject);
begin
  PlaySound(PChar(ExtractFilePath(Application.ExeName) + 'sonidos\button_click.wav'), 0, SND_FILENAME or SND_ASYNC);
  LimpiarPIN;
end;

procedure TForma_PIN.Button14Click(Sender: TObject);
begin
  PlaySound(PChar(ExtractFilePath(Application.ExeName) + 'sonidos\button_click.wav'), 0, SND_FILENAME or SND_ASYNC);
  if Length(Edit1.Text) > 0 then
    Edit1.Text := Copy(Edit1.Text, 1, Length(Edit1.Text) - 1);
end;

procedure TForma_PIN.FormShow(Sender: TObject);
begin
  LimpiarPIN;
end;

procedure TForma_PIN.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
