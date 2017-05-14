unit UDM;

interface

uses
  System.SysUtils, System.Classes, sgcWebSocket_Classes,
  sgcWebSocket_Classes_Indy, sgcWebSocket_Client, sgcWebSocket, json, ioutils;

type
  TMyWaitState = (wsNone, wsResponsePelaporan);

  TDM = class(TDataModule)
    ws: TsgcWebSocketClient;
    procedure DataModuleCreate(Sender: TObject);
    procedure wsMessage(Connection: TsgcWSConnection; const Text: string);
  private
    { Private declarations }
  public
    { Public declarations }

  end;
const
  RESPON_PELAPORAN='RSP_PLP';

var
  DM: TDM;
  waitState: TMyWaitState;

implementation

{ %CLASSGROUP 'FMX.Controls.TControl' }

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  waitState := TMyWaitState.wsNone;
end;

procedure TDM.wsMessage(Connection: TsgcWSConnection; const Text: string);
var
  json: TJSONObject;
  tag:String;
  sub_tag:String;
begin
  try
    json := TJSONObject.ParseJSONValue(Text) as TJSONObject;
    //tag:=json.GetValue('tag');
    //if tag='RSP_PLP' then
    
  except

  end;
  case waitState of
    wsNone:
      begin

      end;
    wsResponsePelaporan:
      begin

      end;
  end;

end;

end.
