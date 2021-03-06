unit UMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.Layouts, FMX.StdCtrls,
  System.ImageList, FMX.ImgList, uSkinFireMonkeyLabel, uSkinFireMonkeyImage,
  uSkinFireMonkeyRoundImage, uSkinFireMonkeyItemDesignerPanel, uSkinMaterial,
  uSkinScrollControlType, uSkinVirtualListType, uSkinListViewType,
  uSkinFireMonkeyControl, uSkinFireMonkeyScrollControl,
  uSkinFireMonkeyVirtualList, uSkinFireMonkeyListView, uDrawPicture,
  uSkinImageList, uSkinFireMonkeyNotifyNumberIcon, uSkinNotifyNumberIconType,
  uSkinFireMonkeyScrollBoxContent, uSkinFireMonkeyScrollBox,
  uSkinFireMonkeyButton, uSkinFireMonkeyPanel, uSkinLabelType;

type
  TFormMain = class(TForm)
    Layout1: TLayout;
    SkinListViewDefaultMaterial1: TSkinListViewDefaultMaterial;
    SkinImageList1: TSkinImageList;
    nniCenterAlignMaterial: TSkinNotifyNumberIconDefaultMaterial;
    ScrollBox1: TScrollBox;
    SkinFMXScrollBox1: TSkinFMXScrollBox;
    SkinFMXScrollBoxContent1: TSkinFMXScrollBoxContent;
    SkinFMXListView1: TSkinFMXListView;
    SkinFMXItemDesignerPanel1: TSkinFMXItemDesignerPanel;
    SkinFMXRoundImage1: TSkinFMXRoundImage;
    SkinFMXLabel1: TSkinFMXLabel;
    SkinFMXNotifyNumberIcon17: TSkinFMXNotifyNumberIcon;
    Layout2: TLayout;
    SkinFMXButton1: TSkinFMXButton;
    SkinFMXPanel1: TSkinFMXPanel;
    SkinFMXLabel2: TSkinFMXLabel;
    SkinLabelDefaultMaterial1: TSkinLabelDefaultMaterial;
    SkinFMXRoundImage2: TSkinFMXRoundImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.fmx}
{$R *.iPhone.fmx IOS}
{$R *.SmXhdpiPh.fmx ANDROID}

end.
