program SIP;

uses
  System.StartUpCopy,
  FMX.Forms,
  UMain in 'UMain.pas' {FormMain},
  ULogin in 'ULogin.pas' {FormLogin},
  UDM in 'UDM.pas' {DM: TDataModule},
  UPelaporan in 'UPelaporan.pas' {FormPelaporan},
  UMyClass in 'UMyClass.pas',
  UPendaftaran in 'UPendaftaran.pas' {FormPendaftaran};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFormPelaporan, FormPelaporan);
  Application.CreateForm(TFormPendaftaran, FormPendaftaran);
  Application.Run;
end.
