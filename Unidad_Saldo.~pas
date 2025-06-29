unit Unidad_Saldo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg;

type
  TForma_Saldo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button2: TButton;
    Image2: TImage;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Forma_Saldo: TForma_Saldo;

implementation

{$R *.dfm}

uses Unidad_Bienvenida, Unidad_Menu, MMSystem;


procedure TForma_Saldo.FormShow(Sender: TObject);
begin
   Label3.Caption := '$' + FormatFloat('#,##0.00', SaldoCuenta);
   Label4.Caption := 'Tipo de Cuenta: ' + TipoCuenta;
   Label5.Caption := 'Numero de Cuenta: ' + NumeroTarjeta;
end;

procedure TForma_Saldo.Button2Click(Sender: TObject);
begin
PlaySound(PChar(ExtractFilePath(Application.ExeName) + 'sonidos\load_incorrect.wav'), 0, SND_FILENAME or SND_ASYNC);
if MessageDlg('¿Está seguro que desea regresar al menu?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
begin
    PlaySound(PChar(ExtractFilePath(Application.ExeName) + 'sonidos\load_correct.wav'), 0, SND_FILENAME or SND_ASYNC);
    Self.Hide;
    Forma_Menu.Show;
  end;
end;

procedure TForma_Saldo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
