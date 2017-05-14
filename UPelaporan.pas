unit UPelaporan;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Edit, FMX.Controls.Presentation, FMX.StdCtrls, FMX.ScrollBox, FMX.Memo,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  sgcWebSocket_Classes, sgcWebSocket_Classes_Indy, sgcWebSocket_Client,
  sgcWebSocket, json, IOUtils, UDM, uSkinFireMonkeyPanel,
  uSkinFireMonkeyControl, uSkinFireMonkeyScrollControl,
  uSkinFireMonkeyScrollBox,
  uSkinFireMonkeyScrollBoxContent, uSkinFireMonkeyLabel, FMX.DateTimeCtrls,
  uSkinFireMonkeyDateEdit, uSkinFireMonkeyTimeEdit, uSkinFireMonkeyEdit,
  FMX.ComboEdit, uSkinFireMonkeyComboEdit, uSkinFireMonkeyMemo,
  uSkinFireMonkeyButton, uSkinButtonType, uSkinMaterial,
  uSkinFireMonkeyProgressBar;

type
  TFormPelaporan = class(TForm)
    ScrollBox1: TScrollBox;
    SkinFMXScrollBox1: TSkinFMXScrollBox;
    SkinFMXPanel1: TSkinFMXPanel;
    SkinFMXPanel2: TSkinFMXPanel;
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
    SkinFMXButton2: TSkinFMXButton;
    SkinFMXLabel7: TSkinFMXLabel;
    SkinButtonDefaultMaterial1: TSkinButtonDefaultMaterial;
    SkinButtonNormalMaterial1: TSkinButtonNormalMaterial;
    Layout1: TLayout;
    Layout2: TLayout;
    SkinFMXProgressBar1: TSkinFMXProgressBar;
    btnSyncStartLoad: TSkinFMXButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    nama, alamat, kelamin, tmp_lahir, tgl_lahir, uraian: String;
  public
    { Public declarations }
  end;

var
  FormPelaporan: TFormPelaporan;

implementation

{$R *.fmx}

procedure TFormPelaporan.Button1Click(Sender: TObject);
var
  json: TJSONObject;
  str: String;
begin
  json := TJSONObject.Create;
  json.AddPair('tgl_laporan', formatdatetime('yyyy-MM-dd HH:mm:ss',now));
  json.AddPair('user_id', '');
  json.AddPair('tgl_kejadian', txtTglkejadian.Text);
  json.AddPair('jam_kejadian', txtjamkejadian.Text);
  json.AddPair('lokasi_kejadian', txtLokasiKejadian.Text);
  json.AddPair('lat', '0');
  json.AddPair('lng', '0');
  json.AddPair('perkara', txtjenisPerkara.Text);
  json.AddPair('uraian', txtUraian.Text);
  str := json.ToString;

  TThread.CreateAnonymousThread(
    procedure
    var
      msg: String;
      error: boolean;
    begin
      error := false;
      try
        waitState := TMyWaitState.wsResponsePelaporan;
        DM.ws.WriteData(str);
      except
        on E: Exception do
        begin
          error := true;
          msg := E.Message;
        end;
      end;
      TThread.Synchronize(nil,
        procedure
        begin

        end);
    end).start;
end;

end.
