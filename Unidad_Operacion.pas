unit Unidad_Operacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForma_Operacion = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;

    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    procedure MostrarConsultaSaldo;
    procedure MostrarRetiroEfectivo;
    procedure MostrarDeposito;
    procedure MostrarTransferencia;
    procedure MostrarCambioPIN;
    procedure ProcesarOperacion;
    procedure GenerarRecibo(Operacion: string; Monto: Currency);
  public
  end;

var
  Forma_Operacion: TForma_Operacion;

  // ?? VARIABLES GLOBALES QUE DEBES TENER DECLARADAS EN ALGÚN LUGAR COMÚN
  TipoOperacion: string = '';
  SaldoCuenta: Currency = 5000;
  PINCorrect: string = '1234';
  NombreUsuario: string = 'Juan Pérez';
  NumeroTarjeta: string = '1234567812345678';

implementation

uses Unidad_Bienvenida, Unidad_Menu;

{$R *.dfm}

procedure TForma_Operacion.MostrarConsultaSaldo;
begin
  Label2.Caption := 'Su saldo actual es:';
  Edit1.Text := FormatFloat('#,##0.00', SaldoCuenta);
  Edit1.Enabled := False;
  Label3.Visible := False;
  Edit2.Visible := False;
  Label5.Visible := False;
  Edit3.Visible := False;
  Button3.Visible := False;
  Button4.Visible := False;
  Button5.Visible := False;
  Button6.Visible := False;
  GenerarRecibo('CONSULTA DE SALDO', 0);
end;

procedure TForma_Operacion.MostrarRetiroEfectivo;
begin
  Label2.Caption := 'Ingrese el monto a retirar:';
  Edit1.Text := '';
  Edit1.Enabled := True;
  Label3.Visible := False;
  Edit2.Visible := False;
  Label5.Visible := False;
  Edit3.Visible := False;
  Button3.Visible := True;
  Button4.Visible := True;
  Button5.Visible := True;
  Button6.Visible := True;
  Button3.Caption := '$200';
  Button4.Caption := '$500';
  Button5.Caption := '$1000';
  Button6.Caption := '$2000';
end;

procedure TForma_Operacion.MostrarDeposito;
begin
  Label2.Caption := 'Ingrese el monto a depositar:';
  Edit1.Text := '';
  Edit1.Enabled := True;
  Label3.Visible := False;
  Edit2.Visible := False;
  Label5.Visible := False;
  Edit3.Visible := False;
  Button3.Visible := False;
  Button4.Visible := False;
  Button5.Visible := False;
  Button6.Visible := False;
end;

procedure TForma_Operacion.MostrarTransferencia;
begin
  Label2.Caption := 'Ingrese el monto a transferir:';
  Edit1.Text := '';
  Edit1.Enabled := True;
  Label3.Visible := True;
  Label3.Caption := 'Número de cuenta destino:';
  Edit2.Visible := True;
  Edit2.Text := '';
  Label5.Visible := False;
  Edit3.Visible := False;
  Button3.Visible := False;
  Button4.Visible := False;
  Button5.Visible := False;
  Button6.Visible := False;
end;

procedure TForma_Operacion.MostrarCambioPIN;
begin
  Label2.Caption := 'Ingrese su PIN actual:';
  Edit1.Text := '';
  Edit1.Enabled := True;
  Edit1.PasswordChar := '*';

  Label3.Visible := True;
  Label3.Caption := 'Ingrese su nuevo PIN:';
  Edit2.Visible := True;
  Edit2.Text := '';
  Edit2.PasswordChar := '*';

  Label5.Visible := True;
  Label5.Caption := 'Confirme su nuevo PIN:';
  Edit3.Visible := True;
  Edit3.Text := '';
  Edit3.PasswordChar := '*';

  Button3.Visible := False;
  Button4.Visible := False;
  Button5.Visible := False;
  Button6.Visible := False;
end;

procedure TForma_Operacion.ProcesarOperacion;
var
  Monto: Currency;
  CuentaDestino: string;
  PINActual, NuevoPIN, ConfirmarPIN: string;
begin
  try
    if TipoOperacion = 'RETIRO_EFECTIVO' then
    begin
      Monto := StrToFloat(Edit1.Text);
      if Monto <= 0 then
        raise Exception.Create('El monto debe ser mayor a cero');
      if Monto > SaldoCuenta then
        raise Exception.Create('Saldo insuficiente');
      if Monto > 5000 then
        raise Exception.Create('El monto máximo por transacción es $5,000');

      SaldoCuenta := SaldoCuenta - Monto;
      GenerarRecibo('RETIRO DE EFECTIVO', Monto);
      ShowMessage('Transacción exitosa. Retire su dinero.');
    end
    else if TipoOperacion = 'DEPOSITO' then
    begin
      Monto := StrToFloat(Edit1.Text);
      if Monto <= 0 then
        raise Exception.Create('El monto debe ser mayor a cero');
      SaldoCuenta := SaldoCuenta + Monto;
      GenerarRecibo('DEPÓSITO', Monto);
      ShowMessage('Depósito realizado exitosamente.');
    end
    else if TipoOperacion = 'TRANSFERENCIA' then
    begin
      Monto := StrToFloat(Edit1.Text);
      CuentaDestino := Edit2.Text;
      if Monto <= 0 then
        raise Exception.Create('El monto debe ser mayor a cero');
      if CuentaDestino = '' then
        raise Exception.Create('Debe ingresar la cuenta destino');
      if Monto > SaldoCuenta then
        raise Exception.Create('Saldo insuficiente');
      SaldoCuenta := SaldoCuenta - Monto;
      GenerarRecibo('TRANSFERENCIA', Monto);
      ShowMessage('Transferencia realizada exitosamente a la cuenta: ' + CuentaDestino);
    end
    else if TipoOperacion = 'CAMBIO_PIN' then
    begin
      PINActual := Edit1.Text;
      NuevoPIN := Edit2.Text;
      ConfirmarPIN := Edit3.Text;

      if PINActual <> PINCorrect then
        raise Exception.Create('PIN actual incorrecto');
      if Length(NuevoPIN) <> 4 then
        raise Exception.Create('El nuevo PIN debe tener 4 dígitos');
      if NuevoPIN <> ConfirmarPIN then
        raise Exception.Create('Los PINs no coinciden');

      PINCorrect := NuevoPIN;
      GenerarRecibo('CAMBIO DE PIN', 0);
      ShowMessage('PIN cambiado exitosamente');
    end;
  except
    on E: Exception do
      ShowMessage('Error en la operación: ' + E.Message);
  end;
end;

procedure TForma_Operacion.GenerarRecibo(Operacion: string; Monto: Currency);
var
  Recibo: TStringList;
begin
  Recibo := TStringList.Create;
  try
    Recibo.Add('===============================');
    Recibo.Add('       CAJERO AUTOMÁTICO      ');
    Recibo.Add('===============================');
    Recibo.Add('');
    Recibo.Add('Fecha: ' + FormatDateTime('dd/mm/yyyy hh:nn:ss', Now));
    Recibo.Add('Tarjeta: ****' + Copy(NumeroTarjeta, 13, 4));
    Recibo.Add('Cliente: ' + NombreUsuario);
    Recibo.Add('');
    Recibo.Add('Operación: ' + Operacion);
    if Monto > 0 then
      Recibo.Add('Monto: $' + FormatFloat('#,##0.00', Monto));
    Recibo.Add('Saldo actual: $' + FormatFloat('#,##0.00', SaldoCuenta));
    Recibo.Add('');
    Recibo.Add('===============================');
    Recibo.Add('    Gracias por su preferencia');
    Recibo.Add('===============================');

    Memo1.Lines.Clear;
    Memo1.Lines.AddStrings(Recibo);
  finally
    Recibo.Free;
  end;
end;

procedure TForma_Operacion.FormShow(Sender: TObject);
begin
  Label1.Caption := 'OPERACIÓN: ' + TipoOperacion;
  Edit1.PasswordChar := #0;
  Edit2.PasswordChar := #0;
  Edit3.PasswordChar := #0;

  if TipoOperacion = 'CONSULTA_SALDO' then
    MostrarConsultaSaldo
  else if TipoOperacion = 'RETIRO_EFECTIVO' then
    MostrarRetiroEfectivo
  else if TipoOperacion = 'DEPOSITO' then
    MostrarDeposito
  else if TipoOperacion = 'TRANSFERENCIA' then
    MostrarTransferencia
  else if TipoOperacion = 'CAMBIO_PIN' then
    MostrarCambioPIN;
end;

procedure TForma_Operacion.Button1Click(Sender: TObject);
begin
  if TipoOperacion <> 'CONSULTA_SALDO' then
    ProcesarOperacion;
end;

procedure TForma_Operacion.Button2Click(Sender: TObject);
begin
  Self.Hide;
  Forma_Menu.Show;
end;

procedure TForma_Operacion.Button3Click(Sender: TObject);
begin
  Edit1.Text := '200';
end;

procedure TForma_Operacion.Button4Click(Sender: TObject);
begin
  Edit1.Text := '500';
end;

procedure TForma_Operacion.Button5Click(Sender: TObject);
begin
  Edit1.Text := '1000';
end;

procedure TForma_Operacion.Button6Click(Sender: TObject);
begin
  Edit1.Text := '2000';
end;

end.

