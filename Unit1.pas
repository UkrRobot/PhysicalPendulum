unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    TrackBar3: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    CheckBox1: TCheckBox;
    Label6: TLabel;
    Bevel1: TBevel;
    Label7: TLabel;
    procedure TrackBar2Change(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar3Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
const
x0=164;
y0=40;
dt=0.1;
g=9.8;

var
alf,x1,y1,x2,y2,xc,yc,xser1,yser1,xser2,yser2:byte;
a,b,c,cosfi00,fi00,help,alf0,fi0,m,beta,teta,help2:real;
l:byte;
  Form1: TForm1;
Procedure abchelp;
procedure x1y1x2y2;
function arccos (help1,a1,b1,c1:real):real;
implementation

{$R *.dfm}
function arccos (help1,a1,b1,c1:real):real;
begin
help1:=(a1*a1+b1*b1-c1*c1)/(2*a1*b1);
arccos:=Arctan(Sqrt(1-sqr(help1))/help1);
arccos:=result;
end;
Procedure abchelp;
begin
a:=l*sqrt(4*sqr(sin((alf)*pi/360))+sqr(cos((alf)*pi/360)))/2;
b:=l/2;
c:=l*sin((alf)*pi/360)/2;
help:=(a*a+b*b-c*c)/(2*a*b);
end;
Procedure x1y1x2y2;
begin
x1:=round(x0+l*sin(fi00));
y1:=round(y0+l*cos(fi00));
x2:=round(x1-l*cos((alf-90)*pi/180+fi00));
y2:=round(y1+l*sin((alf-90)*pi/180+fi00));
end;

procedure TForm1.TrackBar2Change(Sender: TObject);
begin
repaint;
fi0:=trackBar3.Position;
l:=TrackBar1.Position;
alf:=TrackBar2.Position;

abchelp;
fi00:=arccos(help,a,b,c);
x1y1x2y2;

Canvas.MoveTo(x0,y0);
Canvas.LineTo(x1,y1);
Canvas.LineTo(x2,y2);
Canvas.Ellipse(x1-3,y1-3,x1+3,y1+3);
Canvas.Ellipse(x0-6,y0-6,x0+6,y0+6);
alf0:=TrackBar2.Position+round(fi00);
label1.Caption:='angel between the rods: '+floattoStr(TrackBar2.Position{-(round(fi00*180*1000/pi)/1000)});

end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
repaint;
m:=l*2*0.1;
fi0:=trackBar3.Position;
l:=TrackBar1.Position;
Label3.Caption:='Lenght of rods: '+IntToStr(TrackBar1.Position)+'; weight of rods: '+FloatTostr(m)+' kilo';
alf:=TrackBar2.Position;

abchelp;

fi00:=arccos(help,a,b,c);
x1y1x2y2;

Canvas.MoveTo(x0,y0);
Canvas.LineTo(x1,y1);
Canvas.LineTo(x2,y2);
Canvas.Ellipse(x1-3,y1-3,x1+3,y1+3);
Canvas.Ellipse(x0-6,y0-6,x0+6,y0+6);
end;

procedure TForm1.TrackBar3Change(Sender: TObject);
begin
repaint;
fi0:=trackBar3.Position;
l:=TrackBar1.Position;
alf:=TrackBar2.Position;

abchelp;

fi00:=arccos(help,a,b,c);
x1y1x2y2;
beta:=fi00+fi0*pi/180;
x1:=round(x0+l*sin(beta));
y1:=round(y0+l*cos(beta));
x2:=round(x1-l*cos((alf-90)*pi/180+beta));
y2:=round(y1+l*sin((alf-90)*pi/180+beta));

Canvas.MoveTo(x0,y0);
Canvas.LineTo(x1,y1);
Canvas.LineTo(x2,y2);
Canvas.Ellipse(x1-3,y1-3,x1+3,y1+3);
Canvas.Ellipse(x0-6,y0-6,x0+6,y0+6);
label2.Caption:='Angel of deviation from the equilibrium position: '+FloatToStr(fi0);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
n:byte;
fi,t,w,dfi,I,tau:real;
begin

fi:=fi0;
t:=0;
n:=StrToInt(Edit1.Text);
m:=l*2*0.1;
a:=l*sqrt(4*sqr(sin((alf)*pi/360))+sqr(cos((alf)*pi/360)))/2;
c:=l*sin((alf)*pi/360)/2;
I:=5*m*l*l/3;
w:=sqrt(m*g*c/I);
tau:=2*pi/w;

abchelp;



while t<=tau*n do
begin
sleep(5);
repaint;
t:=t+0.1;
label5.Caption:='Time: '+floatToStr(t);

fi:=fi00+fi0*pi*cos(w*t)/180;
label7.Caption:='Angel: '+floatToStr(fi*180/pi);
beta:=(alf*pi/180)-pi/2+fi;
x1:=x0+round(l*sin(fi));
y1:=y0+round(l*cos(fi));
x2:=x1-round(l*cos(beta));
y2:=y1+round(l*sin(beta));
xc:=round(x0+a*cos(w*t)*sin((fi0)*pi/180){+c*sin(fi00)});
yc:=round(y0+a*cos((fi0)*pi/180)+a*(1-cos(fi0*pi/180))*abs(sin(w*t)));


Canvas.MoveTo(x0,y0);
Canvas.LineTo(x1,y1);
Canvas.LineTo(x2,y2);
Canvas.Ellipse(x1-3,y1-3,x1+3,y1+3);
Canvas.Ellipse(x0-6,y0-6,x0+6,y0+6);

if checkBox1.Checked then begin
canvas.Pen.Color:=clBlue;
Canvas.MoveTo(x0,y0);
Canvas.LineTo(xc,yc);
Canvas.Pen.Color:=clBlack


end;

Label4.Caption:='period of oscillation: '+FloatToStr(tau);
end;
end;

end.
