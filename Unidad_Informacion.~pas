unit Unidad_Informacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

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
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Forma_Informacion: TForma_Informacion;

implementation

uses Unidad_Bienvenida, Unidad_Menu;

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
if MessageDlg('¿Está seguro que desea regresar al menu?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
begin
    Self.Hide;
    Forma_Menu.Show;
  end;
end;

end.
