unit Unidad_Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,
  jpeg;

type
  TForma_Menu = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button6: TButton;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Button4: TButton;
    Image2: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Forma_Menu: TForma_Menu;
  TipoOperacion: string;

implementation

uses Unidad_Bienvenida, Unidad_Saldo, Unidad_Retiro, Unidad_Deposito, Unidad_Informacion, MMSystem;

{$R *.dfm}

procedure TForma_Menu.Button1Click(Sender: TObject);
begin
  PlaySound(PChar(ExtractFilePath(Application.ExeName) + 'sonidos\press_button.wav'), 0, SND_FILENAME or SND_ASYNC);
  TipoOperacion := 'CONSULTA_SALDO';
  Self.Hide;
  Forma_Saldo.Show;
end;

procedure TForma_Menu.Button2Click(Sender: TObject);
begin
  PlaySound(PChar(ExtractFilePath(Application.ExeName) + 'sonidos\press_button.wav'), 0, SND_FILENAME or SND_ASYNC);
  TipoOperacion := 'RETIRO_EFECTIVO';
  Self.Hide;
  Forma_Retiro.Show;
end;

procedure TForma_Menu.Button3Click(Sender: TObject);
begin
  PlaySound(PChar(ExtractFilePath(Application.ExeName) + 'sonidos\press_button.wav'), 0, SND_FILENAME or SND_ASYNC);
  TipoOperacion := 'DEPOSITO';
  Self.Hide;
  Forma_Deposito.Show;
end;

procedure TForma_Menu.Button4Click(Sender: TObject);
begin
  PlaySound(PChar(ExtractFilePath(Application.ExeName) + 'sonidos\press_button.wav'), 0, SND_FILENAME or SND_ASYNC);
  TipoOperacion := 'INFORMACION';
  Self.Hide;
  Forma_Informacion.Show;
end;

procedure TForma_Menu.Button6Click(Sender: TObject);
begin
  PlaySound(PChar(ExtractFilePath(Application.ExeName) + 'sonidos\load_incorrect.wav'), 0, SND_FILENAME or SND_ASYNC);
  if MessageDlg('¿Está seguro que desea salir?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    PlaySound(PChar(ExtractFilePath(Application.ExeName) + 'sonidos\load_correct.wav'), 0, SND_FILENAME or SND_ASYNC);
    ShowMessage('Gracias por usar nuestro cajero automático. ¡Que tenga un buen día!');
    Self.Hide;
    Forma_Bienvenida.Show;
  end;
end;

procedure TForma_Menu.FormShow(Sender: TObject);
begin
  Label2.Caption := 'Bienvenido: ' + NombreUsuario;
  Label3.Caption := 'Saldo disponible: $' + FormatFloat('#,##0.00', SaldoCuenta);
end;

procedure TForma_Menu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
