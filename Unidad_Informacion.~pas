unit Unidad_Informacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TForma_Informacion = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Image2: TImage;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Forma_Informacion: TForma_Informacion;

implementation

uses Unidad_Bienvenida, Unidad_Menu, MMSystem;

{$R *.dfm}

procedure TForma_Informacion.FormShow(Sender: TObject);
begin
    Label2.Caption := 'Nombre: ' + NombreCompleto;
    Label3.Caption := 'Numero de Cuenta: ' + NumeroTarjeta;
    Label4.Caption := 'Tipo de Cuenta: ' + TipoCuenta;
    Label5.Caption := 'Telefono: ' + TelefonoUsuario;
    Label6.Caption := 'Email: ' + CorreoUsuario;
end;

procedure TForma_Informacion.Button1Click(Sender: TObject);
begin
PlaySound(PChar(ExtractFilePath(Application.ExeName) + 'sonidos\load_incorrect.wav'), 0, SND_FILENAME or SND_ASYNC);
if MessageDlg('¿Está seguro que desea regresar al menu?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
begin
    PlaySound(PChar(ExtractFilePath(Application.ExeName) + 'sonidos\load_correct.wav'), 0, SND_FILENAME or SND_ASYNC);
    Self.Hide;
    Forma_Menu.Show;
  end;
end;

procedure TForma_Informacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
