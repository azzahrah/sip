unit UPendaftaran;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ScrollBox,
  FMX.Memo, uSkinFireMonkeyMemo, FMX.ComboEdit, uSkinFireMonkeyComboEdit,
  FMX.Controls.Presentation, FMX.Edit, uSkinFireMonkeyEdit, FMX.DateTimeCtrls,
  uSkinFireMonkeyDateEdit, uSkinFireMonkeyTimeEdit, FMX.Layouts,
  uSkinFireMonkeyScrollBoxContent, uSkinFireMonkeyScrollControl,
  uSkinFireMonkeyScrollBox, uSkinFireMonkeyLabel, uSkinFireMonkeyButton,
  uSkinFireMonkeyControl, uSkinFireMonkeyPanel;

type
  TFormPendaftaran = class(TForm)
    Layout1: TLayout;
    SkinFMXPanel1: TSkinFMXPanel;
    SkinFMXButton2: TSkinFMXButton;
    SkinFMXLabel7: TSkinFMXLabel;
    SkinFMXPanel2: TSkinFMXPanel;
    btnSyncStartLoad: TSkinFMXButton;
    ScrollBox1: TScrollBox;
    SkinFMXScrollBox1: TSkinFMXScrollBox;
    SkinFMXScrollBoxContent1: TSkinFMXScrollBoxContent;
    GridPanelLayout1: TGridPanelLayout;
    SkinFMXLabel1: TSkinFMXLabel;
    SkinFMXLabel2: TSkinFMXLabel;
    txtjamkejadian: TSkinFMXTimeEdit;
    txtTglkejadian: TSkinFMXDateEdit;
    SkinFMXLabel3: TSkinFMXLabel;
    txtLokasiKejadian: TSkinFMXEdit;
    SkinFMXLabel4: TSkinFMXLabel;
    txtjenisPerkara: TSkinFMXComboEdit;
    SkinFMXLabel5: TSkinFMXLabel;
    txtkerugian: TSkinFMXEdit;
    SkinFMXLabel6: TSkinFMXLabel;
    txtUraian: TSkinFMXMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPendaftaran: TFormPendaftaran;

implementation

{$R *.fmx}

end.
