unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    lst1: TListBox;
    btn3: TButton;
    btn4: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  function EnumProc (Wd: HWnd; Param: LongInt): Boolean; stdcall;
implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
 {if FindWindow(nil, 'ƒокумент - WordPad') <> 0 then
  ShowMessage('найдено')
 else
  ShowMessage('не найдено'); }
 SetWindowText(FindWindow(nil,'ƒокумент - WordPad'),'test1');
end;

procedure TForm1.btn2Click(Sender: TObject);
var wd:HWND; //handle
begin
  wd:=FindWindow(nil,'test1');   // handle
  if wd<>0 then
  begin
    if IsIconic(wd) then        // if minimize
      ShowWindow(wd, SW_SHOWMAXIMIZED) //  do maximize
    else
      ShowWindow(wd, SW_MINIMIZE); // do minimize
  end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  lst1.Items.Clear;
  EnumWindows(@EnumProc,0);
end;

function EnumProc (Wd: HWnd; Param: LongInt): Boolean; stdcall;
Var Nm:Array[0..255] of Char; // for name
    Cs: Array[0..255] of Char; // for class
Begin
  GetWindowText(Wd,Nm,255); // text of window's header
  GetClassName(Wd,Cs,255); // name of window's class
  Form1.lst1.Items.Add(String(Nm)+'/'+String(Cs)); //add window's name and class to list
  EnumProc := TRUE; // continue to find windows
end;


procedure TForm1.btn4Click(Sender: TObject);
var wd:HWND;   // for handle
    canvas:TCanvas;
begin
  wd:=FindWindow(nil,'–абота с окнами');//handle
  //SendMessage(wd,WM_PAINT,0,0);// call redraw
  canvas:=TCanvas.Create; // create canvas
  with canvas do
  begin
    Handle:=GetDC(wd);   // contecst display
    Rectangle(20,200,120,300); // rectangle on window
    Font.Color:=clRed; //red font
    TextOut(30,210,'Test');
    TextOut(30,230,'Text');
    Free;

  end;
  ReleaseDC(0,wd);  // освобождает общий или оконный контекст устройства, дела€
  // его доступным дл€ других прикладных задач
end;

end.
