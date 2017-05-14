unit ULogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit;

type
  TFormLogin = class(TForm)
    GridPanelLayout1: TGridPanelLayout;
    Layout1: TLayout;
    Layout2: TLayout;
    Label1: TLabel;
    Label2: TLabel;
    txtUserName: TEdit;
    Label3: TLabel;
    txtPassword: TEdit;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.fmx}

end.
