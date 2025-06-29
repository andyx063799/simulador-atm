unit Unidad_Bienvenida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TForma_Bienvenida = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Timer1: TTimer;
    Panel2: TPanel;
    Label4: TLabel;
    Image1: TImage;
    Image2: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Forma_Bienvenida: TForma_Bienvenida;
  // Variables globales del ATM
  SaldoCuenta: Currency = 5000.00;
  NumeroTarjeta: string = '1234567890123456';
  PINCorrect: string = '1234';
  NombreUsuario: string = 'JUAN PEREZ';
  NombreCompleto: string = 'Juan Perez Leon';
  CorreoUsuario: string = 'juanperez80@gmail.com';
  TelefonoUsuario: string = '+52 9933883222';
  TipoCuenta: string = 'Cuenta de Ahorros';
  IntentosRestantes: Integer = 3;

implementation

uses Unidad_PIN, MMSystem;

{$R *.dfm}

procedure TForma_Bienvenida.Timer1Timer(Sender: TObject);
begin
  Label4.Caption := FormatDateTime('dd/mm/yyyy hh:nn:ss', Now);
end;

procedure TForma_Bienvenida.FormCreate(Sender: TObject);
begin
  Timer1.Enabled := True;
  Timer1.Interval := 1000;
end;

procedure TForma_Bienvenida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TForma_Bienvenida.Image1Click(Sender: TObject);
begin
  PlaySound(PChar(ExtractFilePath(Application.ExeName) + 'sonidos\check_beep.wav'), 0, SND_FILENAME or SND_ASYNC);
  Self.Hide;
  Forma_PIN.Show;
end;

end.
