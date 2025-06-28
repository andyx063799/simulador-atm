program SimuladorATM;

uses
  Forms,
  Unidad_Bienvenida in 'Unidad_Bienvenida.pas' {Forma_Bienvenida},
  Unidad_PIN in 'Unidad_PIN.pas' {Forma_PIN},
  Unidad_Menu in 'Unidad_Menu.pas' {Forma_Menu},
  Unidad_Saldo in 'Unidad_Saldo.pas' {Forma_Saldo},
  Unidad_Retiro in 'Unidad_Retiro.pas' {Forma_Retiro},
  Unidad_Deposito in 'Unidad_Deposito.pas' {Forma_Deposito},
  Unidad_Informacion in 'Unidad_Informacion.pas' {Forma_Informacion};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForma_Bienvenida, Forma_Bienvenida);
  Application.CreateForm(TForma_PIN, Forma_PIN);
  Application.CreateForm(TForma_Menu, Forma_Menu);
  Application.CreateForm(TForma_Saldo, Forma_Saldo);
  Application.CreateForm(TForma_Retiro, Forma_Retiro);
  Application.CreateForm(TForma_Deposito, Forma_Deposito);
  Application.CreateForm(TForma_Informacion, Forma_Informacion);
  Application.Run;
end.
