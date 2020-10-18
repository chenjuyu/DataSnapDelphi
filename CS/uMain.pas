unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, dxNavBarCollns,
  cxClasses, dxNavBarBase, dxNavBar, RzButton, RzPanel, Vcl.ExtCtrls, RzTabs,
  Vcl.Menus, RzSplit, System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin,
  cxImageList,uBaseFrame,uBusiFrame, dxNavBarStyles;

type
  TMainFrm = class(TForm)
    dxNavBar1: TdxNavBar;
    BaseStuff: TdxNavBarGroup;
    Goods: TdxNavBarItem;
    supplier: TdxNavBarItem;
    Purchase: TdxNavBarGroup;
    RzStatusBar1: TRzStatusBar;
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    tlb1: TToolBar;
    btn1: TToolButton;
    spl1: TSplitter;
    cxImageList1: TcxImageList;
    btn2: TToolButton;
    btn3: TToolButton;
    btn4: TToolButton;
    btn5: TToolButton;
    btn6: TToolButton;
    btn7: TToolButton;
    btn8: TToolButton;
    btn9: TToolButton;
    pnl1: TPanel;
    pnl2: TPanel;
    cxImageList2: TcxImageList;
    procedure FormCreate(Sender: TObject);
    procedure dxNavBar1LinkClick(Sender: TObject; ALink: TdxNavBarItemLink);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure GoodsClick(Sender: TObject);
    procedure ClearControls(AParent: TWinControl);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainFrm: TMainFrm;

implementation

{$R *.dfm}

procedure TMainFrm.dxNavBar1LinkClick(Sender: TObject;
  ALink: TdxNavBarItemLink);
begin
 // ALink.IsSelected ;
 //ALink.IsSelected :=True;
end;

procedure TMainFrm.FormCreate(Sender: TObject);
var
  PurchaseOrder:TdxNavBarItem;
  tempGroup :TdxNavBarGroup;
begin
   dxNavBar1.AllowSelectLinks :=True;
//   BaseStuff.StyleHeader.Style.Font.Color :=clBlack;
   BaseStuff.CreateLink(Goods);
   BaseStuff.CreateLink(supplier);
   BaseStuff.SelectedLinkIndex :=0;

   PurchaseOrder := dxNavBar1.Items.Add;
   PurchaseOrder.Caption :='�ɹ�����';
   //PurchaseOrder.Style.Style.Font.Color :=clCaptionText;
   PurchaseOrder.OnClick :=GoodsClick;
   Purchase.CreateLink(PurchaseOrder);

   //Purchase.StyleControl.Style.Font.Color := clCaptionText;
   PurchaseOrder :=dxNavBar1.Items.Add;
   PurchaseOrder.Caption :='�ɹ��ջ�����';
   PurchaseOrder.OnClick :=GoodsClick;
   Purchase.CreateLink(PurchaseOrder);

   tempGroup := dxNavBar1.Groups.Add;
   tempGroup.Caption :='��������';
   tempGroup.OptionsExpansion.Expanded :=False;

   PurchaseOrder :=dxNavBar1.Items.Add;
   PurchaseOrder.Caption :='���۶���';
   tempGroup.CreateLink(PurchaseOrder);

   PurchaseOrder :=dxNavBar1.Items.Add;
   PurchaseOrder.Caption :='���۷�����';
   tempGroup.CreateLink(PurchaseOrder);

   PurchaseOrder :=dxNavBar1.Items.Add;
   PurchaseOrder.Caption :='�����˻���';
   tempGroup.CreateLink(PurchaseOrder);

   PurchaseOrder :=dxNavBar1.Items.Add;
   PurchaseOrder.Caption :='�����';
   tempGroup.CreateLink(PurchaseOrder);

   PurchaseOrder :=dxNavBar1.Items.Add;
   PurchaseOrder.Caption :='�տ';
   tempGroup.CreateLink(PurchaseOrder);

   tempGroup := dxNavBar1.Groups.Add;
   tempGroup.Caption :='������';
   tempGroup.OptionsExpansion.Expanded :=False;
   tempGroup.ShowAsIconView :=True;
   tempGroup.UseSmallImages :=false;
  // tempGroup.LinksUseSmallImages :=False;   //�������Ϊfalse ʱ��ʾʹ�ô�ͼ�����¶��ѣ�Ĭ��Ϊtrue,����
   PurchaseOrder :=dxNavBar1.Items.Add;
   PurchaseOrder.Caption :='���ֵ�';
  // PurchaseOrder.SmallImageIndex :=0;
   PurchaseOrder.LargeImageIndex :=0;

   tempGroup.CreateLink(PurchaseOrder);

   PurchaseOrder :=dxNavBar1.Items.Add;
   PurchaseOrder.Caption :='���ֵ�';
   PurchaseOrder.LargeImageIndex :=1;
  // PurchaseOrder.SmallImageIndex :=1;
   tempGroup.CreateLink(PurchaseOrder);

   PurchaseOrder :=dxNavBar1.Items.Add;
   PurchaseOrder.Caption :='ת��֪ͨ��';
   tempGroup.CreateLink(PurchaseOrder);

   PurchaseOrder :=dxNavBar1.Items.Add;
   PurchaseOrder.Caption :='ת�ֵ�';
   tempGroup.CreateLink(PurchaseOrder);

   PurchaseOrder :=dxNavBar1.Items.Add;
   PurchaseOrder.Caption :='�̵㵥';
   tempGroup.CreateLink(PurchaseOrder);

   PurchaseOrder :=dxNavBar1.Items.Add;
   PurchaseOrder.Caption :='��������';
   tempGroup.CreateLink(PurchaseOrder);


   BaseFrame  :=TBaseFrame.Create(self);
   BaseFrame.Parent :=Self.pnl1;
   BaseFrame.Align :=alClient;
  // BaseFrame.Show;
end;

procedure TMainFrm.ClearControls(AParent: TWinControl);
var
  i: Integer;
begin
  for i := AParent.ControlCount - 1 downto 0 do begin
    if not AParent.Controls[i].InheritsFrom(TWinControl) then Continue;
    try
      if TWinControl(AParent.Controls[i]).ControlCount > 0 then begin
        ClearControls(TWinControl(AParent.Controls[i]));
      end;
      AParent.Controls[i].Free;
    except
    end;
  end;
end;

procedure TMainFrm.GoodsClick(Sender: TObject);
var
  BusiTab:TRzTabSheet;
  i,j:Integer;
begin
  // ClearControls(pnl1);
   if not Assigned(BusiFrame) then
      BusiFrame :=TBusiFrame.Create(self);
   BusiFrame.Parent :=Self.pnl1;
   BusiFrame.Align :=alClient;
   if BusiFrame.Showing then
   begin
     if (TdxNavBarItem(Sender).Caption ='�ɹ�����')
        or (TdxNavBarItem(Sender).Caption ='�ɹ��ջ�����')  then
     begin


       if (TdxNavBarItem(Sender).Caption ='�ɹ�����') and (not Assigned(BusiFrame.RzPageControl1.FindChildControl('tabPurchaseOrder'))) then
       begin

          BusiTab := TRzTabSheet.Create(nil);
          BusiTab.Name :='tabPurchaseOrder';
          BusiTab.PageControl :=BusiFrame.RzPageControl1;
       end
       else if TdxNavBarItem(Sender).Caption ='�ɹ��ջ�����' then
        //  BusiTab.Name :='tabPurchase';

     end;
   end;

end;

procedure TMainFrm.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  AllowClose :=True;
end;

end.
