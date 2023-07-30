unit main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Effects,
  FMX.Filter.Effects, FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    rmain: TRectangle;
    Image1: TImage;
    InvertEffect1: TInvertEffect;
    ShadowEffect1: TShadowEffect;
    Image2: TImage;
    InvertEffect2: TInvertEffect;
    Image3: TImage;
    InvertEffect3: TInvertEffect;
    Image4: TImage;
    InvertEffect4: TInvertEffect;
    Image5: TImage;
    InvertEffect5: TInvertEffect;
    Image6: TImage;
    InvertEffect6: TInvertEffect;
    Image7: TImage;
    InvertEffect7: TInvertEffect;
    Image8: TImage;
    InvertEffect8: TInvertEffect;
    Image9: TImage;
    InvertEffect9: TInvertEffect;
    Image10: TImage;
    InvertEffect10: TInvertEffect;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Rectangle7: TRectangle;
    Rectangle8: TRectangle;
    Rectangle9: TRectangle;
    r1: TRectangle;
    Rectangle11: TRectangle;
    Rectangle12: TRectangle;
    img11: TImage;
    InvertEffect11: TInvertEffect;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lb11: TLabel;
    procedure r1MouseEnter(Sender: TObject);
    procedure r1MouseLeave(Sender: TObject);
    procedure Rectangle12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.r1MouseEnter(Sender: TObject);
begin
  tcontrol(Sender).AnimateColor('Fill.Color', $FF181818, 0.2, TAnimationType.InOut, TInterpolationType.Circular);
end;

procedure TForm1.r1MouseLeave(Sender: TObject);
begin
  tcontrol(Sender).AnimateColor('Fill.Color', $FF000000, 0.2, TAnimationType.InOut, TInterpolationType.Circular);
end;

procedure TForm1.Rectangle12Click(Sender: TObject);
begin
  if rmain.Width <> 302 then
  begin
    rmain.AnimateFloat('Width', 302, 0.2, TAnimationType.InOut, TInterpolationType.Circular);
    img11.AnimateFloat('Opacity', 0, 0.2, TAnimationType.InOut, TInterpolationType.Circular);
    lb11.AnimateFloat('Opacity', 1, 0.2, TAnimationType.InOut, TInterpolationType.Circular);
  end
  else
  begin
    rmain.AnimateFloat('Width', 87, 0.2, TAnimationType.InOut, TInterpolationType.Circular);
    img11.AnimateFloat('Opacity', 1, 0.2, TAnimationType.InOut, TInterpolationType.Circular);
    lb11.AnimateFloat('Opacity', 0, 0.2, TAnimationType.InOut, TInterpolationType.Circular);
  end;
end;

end.
