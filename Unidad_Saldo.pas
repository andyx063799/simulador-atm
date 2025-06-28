unit Unidad_Saldo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForma_Saldo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Forma_Saldo: TForma_Saldo;

implementation

{$R *.dfm}

uses Unidad_Bienvenida, Unidad_Menu;


procedure TForma_Saldo.FormShow(Sender: TObject);
begin
   Label3.Caption := '$' + FormatFloat('#,##0.00', SaldoCuenta);
   Label4.Caption := 'Tipo de Cuenta: ' + TipoCuenta;
   Label5.Caption := 'Numero de Cuenta: ' + NumeroTarjeta;
end;

procedure TForma_Saldo.Button2Click(Sender: TObject);
begin
if MessageDlg('¿Está seguro que desea regresar al menu?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
begin
    Self.Hide;
    Forma_Menu.Show;
  end;
end;

end.
