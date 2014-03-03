unit maink;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ExtCtrls, PairSplitter, Grids, DBGrids, Menus, aboutk, ksplash,
  accel, angle, angvel, area, aphys, cap, cdata, cdflow, cnum, cloop,
  dens, len, mass, temp, vol, echarge, cur,
  ind, rescon, volt, emr, work, flowld, force, fuelc, lux, magnf, mus, power,
  prefx, shoe, press, speed, tque, visc, time;

type

  cr = class
  private
    function labl(la1: string; ttop, tleft: integer): tlabel;
    function edi(edi1: string; ttop, tleft: integer; ro: boolean): tedit;
  end;


  { Tkelvinm }

  Tkelvinm = class(TForm)
    ACaption: TLabel;
    esrch: TEdit;
    ListBox1: TListBox;
    Logo: TImage;
    LSearch: TLabel;
    memo1: TMemo;
    MainMenu1: TMainMenu;
        mfile: TMenuItem;
            mquit: TMenuItem;
        mhelp: TMenuItem;
            menab: TMenuItem;
    Panel1: TPanel;
    resultsl: TLabel;
    Search: TButton;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    srchPanel: TPanel;
    StringGrid1: TStringGrid;
    subj: TLabel;
    procedure Edi1KeyPress(Sender: TObject; var Key: char);
    procedure Edi1KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure Edi1KeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure EsrchChange(Sender: TObject);
    procedure SearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure menabClick(Sender: TObject);
    procedure mquitClick(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  gridlin, llen, p, sr: integer;
  lbox: shortint = 10;
  kelvinm: Tkelvinm;
  dynl1, dynl2, sinput1, sinput2, snd1, snd2, s1: string;
  ninput1, milm, ang: double;
  memo1, s, z, f, list: integer;
  l: shortint;
  m: integer = 1;
  fl: shortint = 1;
  srch: array [1..900] of integer;
  labl1, labl2, ed1, ed2: cr;
  alabel: array[1..2] of tlabel;
  adit: array[1..2] of tedit;
  edi1, edi2: tedit;
  ttop, tleft: shortint;
  mcd, cdm: double;
  validate: smallint;

implementation

{ Tkelvinm }

function cr.labl(la1: string; ttop, tleft: integer): Tlabel;
begin
//   Dynamic label template
    alabel[fl] := tlabel.Create(kelvinm);
    alabel[fl].Parent := kelvinm;
    alabel[fl].Visible := True;
    alabel[fl].Width := 60;
    alabel[fl].top := ttop;
    alabel[fl].left := tleft;
    alabel[fl].Alignment := taleftJustify;
    alabel[fl].BorderSpacing.Left := 30;
    alabel[fl].AnchorToNeighbour(akLeft, 30, adit[fl]);
    alabel[fl].Caption := la1;
end;

function cr.edi(edi1: string; ttop, tleft: integer; ro: boolean): tedit;
//       Dynamic text box template
begin
    adit[fl] := tedit.Create(kelvinm);
    adit[fl].Parent := kelvinm;
    adit[fl].Visible := True;
    adit[fl].Width := 150;
    adit[fl].Top := ttop;
    adit[fl].Left := tleft;
    adit[fl].Caption := edi1;
    adit[fl].Alignment := tarightJustify;
    adit[fl].AnchorHorizontalCenterTo(kelvinm);
    adit[fl].ReadOnly := ro;
    adit[fl].Font.Color := clteal;
//    adit[fl].OnKeyPress := @kelvinm.Edi1KeyPress;
    adit[fl].OnKeyUp := @kelvinm.Edi1KeyUp;
//     adit[fl].OnKeyDown:= @kelvinm.Edi1KeyDown;
end;


procedure Tkelvinm.mquitClick(Sender: TObject);
begin
  Close;
end;

procedure Tkelvinm.EsrchChange(Sender: TObject);
begin
  //     stringgrid1.Row:= 0;
  s1 := lowercase(esrch.Text);
  m := 0; srch[m] := 0; m := m + 1; p := 0; l := 0;
  lbox := 0; //srch[m]:= 0; m:= m+1;
  // angle
  for s := 1 to 16 do
    if pos(s1, lowercase(tangle[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // freq
  for s := 1 to 14 do
    if pos(s1, lowercase(tavel[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Area
  for s := 1 to 57 do
    if pos(s1, lowercase(tarea[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Atomic physics
  for s := 1 to 17 do
    if pos(s1, lowercase(taphys[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Computer data
  for s := 1 to 14 do
    if pos(s1, lowercase(tcdata[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Computer flow rate
  for s := 1 to 6 do
    if pos(s1, lowercase(tcdflow[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Computer numbers
  for s := 1 to 26 do
    if pos(s1, lowercase(tcnum[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Current loop
  for s := 1 to 4 do
    if pos(s1, lowercase(tcloop[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Density
  for s := 1 to 25 do
    if pos(s1, lowercase(tdens[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // E capacitance
  for s := 1 to 7 do
    if pos(s1, lowercase(tcap[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // E charge
  for s := 1 to 9 do
    if pos(s1, lowercase(tech[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // E current
  for s := 1 to 9 do
    if pos(s1, lowercase(tcur[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // E inductance
  for s := 1 to 7 do
    if pos(s1, lowercase(tind[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // E resistance and conductance
  for s := 1 to 14 do
    if pos(s1, lowercase(trcon[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // E voltage
  for s := 1 to 9 do
    if pos(s1, lowercase(tvolt[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // EMR radiation
  for s := 1 to 14 do
    if pos(s1, lowercase(temr[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // NRG/work
  for s := 1 to 38 do
    if pos(s1, lowercase(twrk[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Flow dry
  for s := 1 to 6 do
    if pos(s1, lowercase(tflowd[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Flow liquid
  for s := 1 to 6 do
    if pos(s1, lowercase(tflowl[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Force
  for s := 1 to 16 do
    if pos(s1, lowercase(tforce[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Fuel consumption
  for s := 1 to 6 do
    if pos(s1, lowercase(tfuelc[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Illumination
  for s := 1 to 8 do
    if pos(s1, lowercase(tillum[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Length
  for s := 1 to 127 do
    if pos(s1, lowercase(tlen[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Luminance
  for s := 1 to 13 do
    if pos(s1, lowercase(tlumin[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Luminous flux
  for s := 1 to 2 do
    if pos(s1, lowercase(tlflux[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Luminous intensity
  for s := 1 to 3 do
    if pos(s1, lowercase(tlint[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Magnetic field strength
  for s := 1 to 6 do
    if pos(s1, lowercase(tmfs[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Magnetic flux
  for s := 1 to 6 do
    if pos(s1, lowercase(tmflux[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Magnetic flux density
  for s := 1 to 11 do
    if pos(s1, lowercase(tmfd[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Magnetomotive force
  for s := 1 to 5 do
    if pos(s1, lowercase(tmmf[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Mass
  for s := 1 to 84 do
    if pos(s1, lowercase(tmass[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Music
  for s := 1 to 5 do
    if pos(s1, lowercase(tmus[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Power
  for s := 1 to 20 do
    if pos(s1, lowercase(tpower[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Pref and suff
  for s := 1 to 82 do
    if pos(s1, lowercase(tprefx[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Pressure and stress
  for s := 1 to 42 do
    if pos(s1, lowercase(tpress[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Shoe size

  for s := 1 to 8 do
    if pos(s1, lowercase(tshoe[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;

  // Specific heat
  for s := 1 to 4 do
    if pos(s1, lowercase(tsheat[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Speed/vel
  for s := 1 to 14 do
    if pos(s1, lowercase(tspeed[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Temperature
  for s := 1 to 7 do
    if pos(s1, lowercase(ttemp[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Temp diff
  for s := 1 to 5 do
    if pos(s1, lowercase(ttdiff[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Thermal conductance area
  for s := 1 to 5 do
    if pos(s1, lowercase(ttcona[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Thermal cond linear
  for s := 1 to 4 do
    if pos(s1, lowercase(ttconl[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Thermal resistance
  for s := 1 to 5 do
    if pos(s1, lowercase(ttres[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Time
  for s := 1 to 37 do
    if pos(s1, lowercase(ttime[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Torque
  for s := 1 to 17 do
    if pos(s1, lowercase(ttque[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Viscosity dynamic
  for s := 1 to 7 do
    if pos(s1, lowercase(tvisd[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Viscosity Kinematic
  for s := 1 to 6 do
    if pos(s1, lowercase(tvisk[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Volume and dry capacity
  for s := 1 to 20 do
    if pos(s1, lowercase(tvold[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  srch[m] := 0;
  m := m + 1;
  // Volume and liquid capacity
  for s := 1 to 46 do
    if pos(s1, lowercase(tvoliq[s].tu)) > 0 then
    begin
      srch[m] := s;
      m := m + 1;
    end;
  esrch.SetFocus;
end;

procedure Tkelvinm.SearchClick(Sender: TObject);
begin
  resultsl.Caption := IntToStr(m - 49) + ' results';
  if m - 49 > 0 then
  begin if l = m then begin lbox := 0; l := 0; end;
    while srch[l] = 0 do
    begin
      l := l + 1;
      lbox := lbox + 1;
      if l = m then
      begin
        lbox := 0;
        l := 0;
      end;
    end;
    listbox1.Selected[lbox] := True; listbox1.Click;
    // go

    if stringgrid1.Row = srch[l] then
    begin
      ed1.edi('', 130, 380, False);
      labl1.labl(stringgrid1.Cells[0, srch[l]], 135, 550);
      stringgrid1.Row := srch[l];
    end
    else

      stringgrid1.Row := srch[l];

    if l = m then
    begin
      lbox := 0; l := 0;
    end;
    l := l + 1;
    esrch.SetFocus;
  end;
end;

procedure Tkelvinm.FormCreate(Sender: TObject);
begin
  memo1.Caption := '';
end;


procedure Tkelvinm.menabClick(Sender: TObject);
begin
  abk.Show;
end;


procedure Tkelvinm.ListBox1Click(Sender: TObject);
begin
  if assigned(adit[1]) then
  begin
    FreeAndNil(alabel[1]); FreeAndNil(adit[1]); FreeAndNil(alabel[2]); FreeAndNil(adit[2]);
    z := 0;
  end;
  stringgrid1.Enabled := True;
  stringgrid1.ScrollBars := ssvertical;

// Grid filling

  // Acceleration
  if listbox1.Selected[0] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 7;
    for gridlin := 1 to 6 do
    begin
      stringgrid1.Cells[0, gridlin] := taccel[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := taccel[gridlin].tsym;
    end;
  end;

  // Angle
  if listbox1.Selected[1] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 17;
    for gridlin := 1 to 16 do
    begin
      stringgrid1.Cells[0, gridlin] := tangle[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tangle[gridlin].tsym;
    end;
  end;

  // Avel Freq
  if listbox1.Selected[2] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 15;
    for gridlin := 1 to 14 do
    begin
      stringgrid1.Cells[0, gridlin] := tavel[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tavel[gridlin].tsym;
    end;
  end;

  // Area
  if listbox1.Selected[3] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 58;
    for gridlin := 1 to 57 do
    begin
      stringgrid1.Cells[0, gridlin] := tarea[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tarea[gridlin].tsym;
    end;
  end;

  // Atomic Physics
  if listbox1.Selected[4] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 18;
    for gridlin := 1 to 17 do
    begin
      stringgrid1.Cells[0, gridlin] := taphys[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := taphys[gridlin].tsym;
    end;
  end;

  // Computer Data
  if listbox1.Selected[5] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 15;
    for gridlin := 1 to 14 do
    begin
      stringgrid1.Cells[0, gridlin] := tcdata[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tcdata[gridlin].tsym;
    end;
  end;

  // CD Flow rate
  if listbox1.Selected[6] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 7;
    for gridlin := 1 to 6 do
    begin
      stringgrid1.Cells[0, gridlin] := tcdflow[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tcdflow[gridlin].tsym;
    end;
  end;

  // Computer Numbers
  if listbox1.Selected[7] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 27;
    for gridlin := 1 to 26 do
    begin
      stringgrid1.Cells[0, gridlin] := tcnum[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tcnum[gridlin].tsym;
    end;
  end;

  // Current loop
  if listbox1.Selected[8] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 5;
    for gridlin := 1 to 4 do
    begin
      stringgrid1.Cells[0, gridlin] := tcloop[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tcloop[gridlin].tsym;
    end;
  end;

  // Density
  if listbox1.Selected[9] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 26;
    for gridlin := 1 to 25 do
    begin
      stringgrid1.Cells[0, gridlin] := tdens[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tdens[gridlin].tsym;
    end;
  end;

  // E capacitance
  if listbox1.Selected[10] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 8;
    for gridlin := 1 to 7 do
    begin
      stringgrid1.Cells[0, gridlin] := tcap[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tcap[gridlin].tsym;
    end;
  end;

  // E charge
  if listbox1.Selected[11] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 10;
    for gridlin := 1 to 9 do
    begin
      stringgrid1.Cells[0, gridlin] := tech[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tech[gridlin].tsym;
    end;
  end;

  // E current
  if listbox1.Selected[12] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 10;
    for gridlin := 1 to 9 do
    begin
      stringgrid1.Cells[0, gridlin] := tcur[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tcur[gridlin].tsym;
    end;
  end;

  // E inductance
  if listbox1.Selected[13] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 8;
    for gridlin := 1 to 7 do
    begin
      stringgrid1.Cells[0, gridlin] := tind[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tind[gridlin].tsym;
    end;
  end;

  // E resistance and conductance
  if listbox1.Selected[14] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 15;
    for gridlin := 1 to 14 do
    begin
      stringgrid1.Cells[0, gridlin] := trcon[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := trcon[gridlin].tsym;
    end;
  end;

  // E voltage
  if listbox1.Selected[15] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 10;
    for gridlin := 1 to 9 do
    begin
      stringgrid1.Cells[0, gridlin] := tvolt[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tvolt[gridlin].tsym;
    end;
  end;


  // EMR
  if listbox1.Selected[16] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 15;
    for gridlin := 1 to 14 do
    begin
      stringgrid1.Cells[0, gridlin] := temr[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := temr[gridlin].tsym;
    end;
  end;

  // NRG/ Work
  if listbox1.Selected[17] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 39;
    for gridlin := 1 to 38 do
    begin
      stringgrid1.Cells[0, gridlin] := twrk[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := twrk[gridlin].tsym;
    end;
  end;

  // Flow dry
  if listbox1.Selected[18] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 7;
    for gridlin := 1 to 6 do
    begin
      stringgrid1.Cells[0, gridlin] := tflowd[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tflowd[gridlin].tsym;
    end;
  end;

  // Flow liq
  if listbox1.Selected[19] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 7;
    for gridlin := 1 to 6 do
    begin
      stringgrid1.Cells[0, gridlin] := tflowl[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tflowl[gridlin].tsym;
    end;
  end;

  // Force
  if listbox1.Selected[20] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 17;
    for gridlin := 1 to 16 do
    begin
      stringgrid1.Cells[0, gridlin] := tforce[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tforce[gridlin].tsym;
    end;
  end;

  // Fuel consuption
  if listbox1.Selected[21] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 7;
    for gridlin := 1 to 6 do
    begin
      stringgrid1.Cells[0, gridlin] := tfuelc[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tfuelc[gridlin].tsym;
    end;
  end;


  // Illumination
  if listbox1.Selected[22] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 9;
    for gridlin := 1 to 8 do
    begin
      stringgrid1.Cells[0, gridlin] := tillum[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tillum[gridlin].tsym;
    end;
  end;

  // Length
  if listbox1.Selected[23] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 128;
    for gridlin := 1 to 127 do
    begin
      stringgrid1.Cells[0, gridlin] := tlen[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tlen[gridlin].tsym;
    end;
  end;

  // Luminance
  if listbox1.Selected[24] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 14;
    for gridlin := 1 to 13 do
    begin
      stringgrid1.Cells[0, gridlin] := tlumin[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tlumin[gridlin].tsym;
    end;
  end;

  // Luminous flux
  if listbox1.Selected[25] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 3;
    for gridlin := 1 to 2 do
    begin
      stringgrid1.Cells[0, gridlin] := tlflux[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tlflux[gridlin].tsym;
    end;
  end;

  // Luminous intensity
  if listbox1.Selected[26] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 4;
    for gridlin := 1 to 3 do
    begin
      stringgrid1.Cells[0, gridlin] := tlint[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tlint[gridlin].tsym;
    end;
  end;

  // Mag field strength
  if listbox1.Selected[27] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 7;
    for gridlin := 1 to 6 do
    begin
      stringgrid1.Cells[0, gridlin] := tmfs[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tmfs[gridlin].tsym;
    end;
  end;

  // Mag flux
  if listbox1.Selected[28] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 7;
    for gridlin := 1 to 6 do
    begin
      stringgrid1.Cells[0, gridlin] := tmflux[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tmflux[gridlin].tsym;
    end;
  end;

  // Magnetic flux density
  if listbox1.Selected[29] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 12;
    for gridlin := 1 to 11 do
    begin
      stringgrid1.Cells[0, gridlin] := tmfd[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tmfd[gridlin].tsym;
    end;
  end;

  // Magnetomotive force
  if listbox1.Selected[30] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 6;
    for gridlin := 1 to 5 do
    begin
      stringgrid1.Cells[0, gridlin] := tmmf[gridlin].tu;
      stringgrid1.Cells[1, gridlin] := '';
      stringgrid1.Cells[2, gridlin] := tmmf[gridlin].tsym;
    end;
  end;

  // Mass
  if listbox1.Selected[31] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 85;
    for gridlin := 1 to 84 do
    begin
      stringgrid1.Cells[0, gridlin] := tmass[gridlin].tu;
      stringgrid1.Cells[2, gridlin] := tmass[gridlin].tsym;
      stringgrid1.Cells[1, gridlin] := '';
    end;
  end;

  // Musical notes
  if listbox1.Selected[32] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 6;
    for gridlin := 1 to 5 do
    begin
      stringgrid1.Cells[0, gridlin] := tmus[gridlin].tu;
      stringgrid1.Cells[2, gridlin] := tmus[gridlin].tsym;
      stringgrid1.Cells[1, gridlin] := '';
    end;
  end;

  // Power
  if listbox1.Selected[33] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 21;
    for gridlin := 1 to 20 do
    begin
      stringgrid1.Cells[0, gridlin] := tpower[gridlin].tu;
      stringgrid1.Cells[2, gridlin] := tpower[gridlin].tsym;
      stringgrid1.Cells[1, gridlin] := '';
    end;
  end;

  // Prefixes
  if listbox1.Selected[34] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 83;
    for gridlin := 1 to 82 do
    begin
      stringgrid1.Cells[0, gridlin] := tprefx[gridlin].tu;
      stringgrid1.Cells[2, gridlin] := tprefx[gridlin].tsym;
      stringgrid1.Cells[1, gridlin] := '';
    end;
  end;

  // Pressure and stress
  if listbox1.Selected[35] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 43;
    for gridlin := 1 to 42 do
    begin
      stringgrid1.Cells[0, gridlin] := tpress[gridlin].tu;
      stringgrid1.Cells[2, gridlin] := tpress[gridlin].tsym;
      stringgrid1.Cells[1, gridlin] := '';
    end;
  end;

  // shoes
  if listbox1.Selected[36] then
  begin
    stringgrid1.Clear;
    stringgrid1.RowCount := 2;
    stringgrid1.Cells[1, 1] := 'Not available';
    stringgrid1.Enabled := False;
  end;
(*
     begin
          memo1.Clear;
     stringgrid1.RowCount:=9;
     for gridlin:= 1 to 8 do begin
        stringgrid1.Cells[0,gridlin]:= tshoe[gridlin].tu;
        stringgrid1.Cells[2,gridlin]:= tshoe[gridlin].tsym;
        stringgrid1.Cells[1,gridlin]:= '';
     end;
end;
     *)

  // Specific heat
  if listbox1.Selected[37] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 5;
    for gridlin := 1 to 4 do
    begin
      stringgrid1.Cells[0, gridlin] := tsheat[gridlin].tu;
      stringgrid1.Cells[2, gridlin] := tsheat[gridlin].tsym;
      stringgrid1.Cells[1, gridlin] := '';
    end;
  end;

  // Speed
  if listbox1.Selected[38] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 15;
    for gridlin := 1 to 14 do
    begin
      stringgrid1.Cells[0, gridlin] := tspeed[gridlin].tu;
      stringgrid1.Cells[2, gridlin] := tspeed[gridlin].tsym;
      stringgrid1.Cells[1, gridlin] := '';
    end;
  end;

  // Temperature
  if listbox1.Selected[39] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 8;
    for gridlin := 1 to 7 do
    begin
      stringgrid1.Cells[0, gridlin] := ttemp[gridlin].tu;
      stringgrid1.Cells[2, gridlin] := ttemp[gridlin].tsym;
      stringgrid1.Cells[1, gridlin] := '';
    end;
  end;

  // Temp difference
  if listbox1.Selected[40] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 6;
    for gridlin := 1 to 5 do
    begin
      stringgrid1.Cells[0, gridlin] := ttdiff[gridlin].tu;
      stringgrid1.Cells[2, gridlin] := ttdiff[gridlin].tsym;
      stringgrid1.Cells[1, gridlin] := '';
    end;
  end;

  // thermal conductance area
  if listbox1.Selected[41] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 6;
    for gridlin := 1 to 5 do
    begin
      stringgrid1.Cells[0, gridlin] := ttcona[gridlin].tu;
      stringgrid1.Cells[2, gridlin] := ttcona[gridlin].tsym;
      stringgrid1.Cells[1, gridlin] := '';
    end;
  end;

  // thermal cond linear
  if listbox1.Selected[42] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 5;
    for gridlin := 1 to 4 do
    begin
      stringgrid1.Cells[0, gridlin] := ttconl[gridlin].tu;
      stringgrid1.Cells[2, gridlin] := ttconl[gridlin].tsym;
      stringgrid1.Cells[1, gridlin] := '';
    end;
  end;

  // thermal resistance
  if listbox1.Selected[43] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 6;
    for gridlin := 1 to 5 do
    begin
      stringgrid1.Cells[0, gridlin] := ttres[gridlin].tu;
      stringgrid1.Cells[2, gridlin] := ttres[gridlin].tsym;
      stringgrid1.Cells[1, gridlin] := '';
    end;
  end;

  // time
  if listbox1.Selected[44] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 38;
    for gridlin := 1 to 37 do
    begin
      stringgrid1.Cells[0, gridlin] := ttime[gridlin].tu;
      stringgrid1.Cells[2, gridlin] := ttime[gridlin].tsym;
      stringgrid1.Cells[1, gridlin] := '';
    end;
  end;

  // Torque
  if listbox1.Selected[45] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 18;
    for gridlin := 1 to 17 do
    begin
      stringgrid1.Cells[0, gridlin] := ttque[gridlin].tu;
      stringgrid1.Cells[2, gridlin] := ttque[gridlin].tsym;
      stringgrid1.Cells[1, gridlin] := '';
    end;
  end;

  // viscosity dynamic
  if listbox1.Selected[46] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 8;
    for gridlin := 1 to 7 do
    begin
      stringgrid1.Cells[0, gridlin] := tvisd[gridlin].tu;
      stringgrid1.Cells[2, gridlin] := tvisd[gridlin].tsym;
      stringgrid1.Cells[1, gridlin] := '';
    end;
  end;

  // Viscosity kinematic
  if listbox1.Selected[47] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 7;
    for gridlin := 1 to 6 do
    begin
      stringgrid1.Cells[0, gridlin] := tvisk[gridlin].tu;
      stringgrid1.Cells[2, gridlin] := tvisk[gridlin].tsym;
      stringgrid1.Cells[1, gridlin] := '';
    end;
  end;

  // Vol dry
  if listbox1.Selected[48] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 21;
    for gridlin := 1 to 20 do
    begin
      stringgrid1.Cells[0, gridlin] := tvold[gridlin].tu;
      stringgrid1.Cells[2, gridlin] := tvold[gridlin].tsym;
      stringgrid1.Cells[1, gridlin] := '';
    end;
  end;


  // VOl liq
  if listbox1.Selected[49] then
  begin
    memo1.Clear;
    stringgrid1.RowCount := 47;
    for gridlin := 1 to 46 do
    begin
      stringgrid1.Cells[0, gridlin] := tvoliq[gridlin].tu;
      stringgrid1.Cells[2, gridlin] := tvoliq[gridlin].tsym;
      stringgrid1.Cells[1, gridlin] := '';
    end;
  end;
end;

procedure Tkelvinm.StringGrid1Click(Sender: TObject);
begin
  memo1.Clear;

  dynl1 := stringgrid1.Cells[0, stringgrid1.Row];
  snd1 := stringgrid1.Cells[1, stringgrid1.Row];

// Creation of dynamic labels and text boxes
  case z of
    0:
    begin // first click: One dynamic label
      fl := 1;    // fl: Dynamic label array Id.
      ed1.edi('', 130, 380, False);
      labl1.labl(dynl1, 135, 550);
      z := 1; adit[1].SetFocus;
    end;
    1:
    begin //second click: Second dynamic label
      fl := 2;
      ed2.edi(snd1, 160, 380, False);
      labl2.labl(dynl1, 165, 550);
      adit[1].SetFocus; adit[1].SelectAll; dynl2 := dynl1; snd2 := snd1; z := 3;
    end;
    2:
    begin // not used
      fl := 1;
      ed1.edi(snd2, 130, 380, False);
      labl1.labl(dynl1, 135, 550);
      s := 3;
    end;
    3:
    begin //both, third click: label scrolling
      FreeAndNil(alabel[1]); FreeAndNil(adit[1]); FreeAndNil(alabel[2]); FreeAndNil(adit[2]);
      fl := 1;
      ed1.edi(snd2, 130, 380, False);
      labl1.labl(dynl2, 135, 550);
      fl := 2;
      ed2.edi(snd1, 160, 380, False);
      labl2.labl(dynl1, 165, 550);
      dynl2 := dynl1; snd2 := snd1; adit[2].SetFocus; adit[2].SelectAll;
      z := 3;
    end;
  end;

// Memo filling

  // Acceleration
  if listbox1.ItemIndex = 0 then
    for gridlin := 1 to 6 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := taccel[gridlin].tdef;
      end;

  // Angle
  if listbox1.ItemIndex = 1 then
    for gridlin := 1 to 16 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tangle[gridlin].tdef;
      end;

  // Avel Freq
  if listbox1.ItemIndex = 2 then
    for gridlin := 1 to 14 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tavel[gridlin].tdef;
      end;

  // Area
  if listbox1.ItemIndex = 3 then
    for gridlin := 1 to 57 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tarea[gridlin].tdef;
      end;

  // Atom physics
  if listbox1.ItemIndex = 4 then
    for gridlin := 1 to 17 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := taphys[gridlin].tdef;
      end;

  // Computer data
  if listbox1.ItemIndex = 5 then
    for gridlin := 1 to 14 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tcdata[gridlin].tdef;
      end;

  // Computer data flow
  if listbox1.ItemIndex = 6 then
    for gridlin := 1 to 6 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tcdflow[gridlin].tdef;
      end;

  // Computer numbers
  if listbox1.ItemIndex = 7 then
    for gridlin := 1 to 26 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tcnum[gridlin].tdef;
      end;

  // Current loop
  if listbox1.ItemIndex = 8 then
    for gridlin := 1 to 4 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tcloop[gridlin].tdef;
      end;

  // Density
  if listbox1.ItemIndex = 9 then
    for gridlin := 1 to 25 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tdens[gridlin].tdef;
      end;

  // E capacitace
  if listbox1.ItemIndex = 10 then
    for gridlin := 1 to 7 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tcap[gridlin].tdef;
      end;

  // E Charge
  if listbox1.ItemIndex = 11 then
    for gridlin := 1 to 9 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tech[gridlin].tdef;
      end;

  // E current
  if listbox1.ItemIndex = 12 then
    for gridlin := 1 to 9 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tcur[gridlin].tdef;
      end;

  // E inductance
  if listbox1.ItemIndex = 13 then
    for gridlin := 1 to 7 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tind[gridlin].tdef;
      end;

  // E resistance and conductance
  if listbox1.ItemIndex = 14 then
    for gridlin := 1 to 14 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := trcon[gridlin].tdef;
      end;

  // E voltage
  if listbox1.ItemIndex = 15 then
    for gridlin := 1 to 9 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tvolt[gridlin].tdef;
      end;

  // EMR
  if listbox1.ItemIndex = 16 then
    for gridlin := 1 to 14 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := temr[gridlin].tdef;
      end;

  // Work
  if listbox1.ItemIndex = 17 then
    for gridlin := 1 to 38 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := twrk[gridlin].tdef;
      end;

  // Flow dry
  if listbox1.ItemIndex = 18 then
    for gridlin := 1 to 6 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tflowd[gridlin].tdef;
      end;

  // Flow liquid
  if listbox1.ItemIndex = 19 then
    for gridlin := 1 to 6 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tflowl[gridlin].tdef;
      end;

  // Force
  if listbox1.ItemIndex = 20 then
    for gridlin := 1 to 16 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tforce[gridlin].tdef;
      end;

  // fuel consumption
  if listbox1.ItemIndex = 21 then
    for gridlin := 1 to 6 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tfuelc[gridlin].tdef;
      end;

  // Illumination
  if listbox1.ItemIndex = 22 then
    for gridlin := 1 to 8 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tillum[gridlin].tdef;
      end;

  // Length
  if listbox1.ItemIndex = 23 then
    for gridlin := 1 to 127 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tlen[gridlin].tdef;
      end;

  // Luminance
  if listbox1.ItemIndex = 24 then
    for gridlin := 1 to 13 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tlumin[gridlin].tdef;
      end;

  // Luminous flux
  if listbox1.ItemIndex = 25 then
    for gridlin := 1 to 2 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tlflux[gridlin].tdef;
      end;

  // Luminous intensity
  if listbox1.ItemIndex = 26 then
    for gridlin := 1 to 3 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tlint[gridlin].tdef;
      end;

  // Magnetic field strength
  if listbox1.ItemIndex = 27 then
    for gridlin := 1 to 6 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tmfs[gridlin].tdef;
      end;

  // Magnetic flux
  if listbox1.ItemIndex = 28 then
    for gridlin := 1 to 6 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tmflux[gridlin].tdef;
      end;

  // Magnetic flux density
  if listbox1.ItemIndex = 29 then
    for gridlin := 1 to 11 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tmfd[gridlin].tdef;
      end;

  // Magnetomotive force
  if listbox1.ItemIndex = 30 then
    for gridlin := 1 to 5 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tmmf[gridlin].tdef;
      end;

  // Mass
  if listbox1.ItemIndex = 31 then
    for gridlin := 1 to 84 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tmass[gridlin].tdef;
      end;

  // Musical notes
  if listbox1.ItemIndex = 32 then
    for gridlin := 1 to 5 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tmus[gridlin].tdef;
      end;

  // Power
  if listbox1.ItemIndex = 33 then
    for gridlin := 1 to 20 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tpower[gridlin].tdef;
      end;

  // Prefixes
  if listbox1.ItemIndex = 34 then
    for gridlin := 1 to 82 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tprefx[gridlin].tdef;
      end;

  // Pressure and stress
  if listbox1.ItemIndex = 35 then
    for gridlin := 1 to 42 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tpress[gridlin].tdef;
      end;

  // shoes
  if listbox1.ItemIndex = 36 then
    for gridlin := 1 to 8 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tshoe[gridlin].tdef;
      end;

  // Specific heat
  if listbox1.ItemIndex = 37 then
    for gridlin := 1 to 4 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tsheat[gridlin].tdef;
      end;

  // Speed
  if listbox1.ItemIndex = 38 then
    for gridlin := 1 to 14 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tspeed[gridlin].tdef;
      end;

  // Temp
  if listbox1.ItemIndex = 39 then
    for gridlin := 1 to 7 do
      if stringgrid1.Row = gridlin then
        memo1.Text := ttemp[gridlin].tdef;

  // Temp difference
  if listbox1.ItemIndex = 40 then
    for gridlin := 1 to 5 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := ttdiff[gridlin].tdef;
      end;

  // thermal conductance area
  if listbox1.ItemIndex = 41 then
    for gridlin := 1 to 5 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := ttcona[gridlin].tdef;
      end;

  // thermal conductance lineaer
  if listbox1.ItemIndex = 42 then
    for gridlin := 1 to 4 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := ttconl[gridlin].tdef;
      end;

  // Thermal resistance
  if listbox1.ItemIndex = 43 then
    for gridlin := 1 to 5 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := ttres[gridlin].tdef;
      end;

  // Time
  if listbox1.ItemIndex = 44 then
    for gridlin := 1 to 37 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := ttime[gridlin].tdef;
      end;

  // Torque
  if listbox1.ItemIndex = 45 then
    for gridlin := 1 to 17 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := ttque[gridlin].tdef;
      end;

  // Viscosity dynamic
  if listbox1.ItemIndex = 46 then
    for gridlin := 1 to 7 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tvisd[gridlin].tdef;
      end;

  // Viscosity kinematic
  if listbox1.ItemIndex = 47 then
    for gridlin := 1 to 6 do
      if stringgrid1.Row = gridlin then
      begin
        memo1.Clear;
        memo1.Text := tvisk[gridlin].tdef;
      end;

  // Voldry
  if listbox1.ItemIndex = 48 then
    for gridlin := 1 to 20 do
      if stringgrid1.Row = gridlin then
        memo1.Text := tvold[gridlin].tdef;

  // Vol liq
  if listbox1.ItemIndex = 49 then
    for gridlin := 1 to 46 do
      if stringgrid1.Row = gridlin then
        memo1.Text := tvoliq[gridlin].tdef;
end;

procedure Tkelvinm.edi1KeyPress(Sender: TObject; var Key: char);
begin
{
On key press, 8 (backspace), 46 and 110 (decimal symbol),
45 (minus sign), 9 (tab) and 162 (left control, in case of cut or copy) are allowed.
After that, the validation begins: only numbers.
}

  if (key <> char(46)) and (key <> char(110)) and (key <> char(8)) and
    (key <> char(9)) and (key <> char(45)) and (key <> char(162)) and
    (key <> char(163)) and (key <> char(99)) and (key <> char(118)) and (key<>char(120)) then
    if Key in [char(1)..char(47)] then     key := #0;
    if Key in [char(58)..char(64)] then      key := #0;
    if Key in [char(91)..char(96)] then      key := #0;
    if Key in [char(123)..char(251)] then    key := #0;
end;

procedure TKelvinm.Edi1KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
{
s represents the sender, to validate and pass sinput1 (string from the text box) to ninput1 as double.
}

begin
  if Sender = adit[1] then
  begin
    sinput1 := adit[1].Caption;
    s := 1;
  end
  else
  begin
    sinput1 := adit[2].Caption;
    s := 2;
  end;

{ if 110 (decimal key in numerica keypad) and 46 (main keyboard, period are pressed for second time,
the text box is reseted}

  if (key = 110) or (key = 46) then
    for z := 0 to length(adit[s].Caption) do
      if pos('.', adit[s].Caption) > 0 then
        adit[s].Clear;
end;

procedure Tkelvinm.Edi1KeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
var
  a: string;

begin
  if Sender = adit[1] then begin sinput1 := adit[1].Caption; s := 1; end else begin
    sinput1 := adit[2].Caption; s := 2; end;

  if listbox1.ItemIndex <> 7 then
  begin

{ Nostalgic code :)
    escape, bs and tab
         if (key <> 8) and (key <> 9) and (key <> 16) then begin
            if (key <> 110) and (key <> 8) and (key <> 16) then begin
             if (key < 48) or (key > 57) and (key < 95)
             then begin adit[s].caption:= 'Invalid entry'; adit[s].SelectAll; sinput1:= ''; end;
     invalid characters
         if (key < 48) or (key > 57) and (key < 96) or (key > 110)
         then begin adit[s].CopyToClipboard; adit[s].Caption:= 'Invalid entry'; adit[s].SelectAll; end else// numeros 48-57

     valid    if (key > 45) or (key < 57) and (key > 95) or (key < 111) then begin
}
    sr := length(sinput1);
    if (sinput1 = '.') then sinput1 := '0' + sinput1;
    if (sinput1 = '-.') then sinput1 := '-0.';

{If . is pressed twice, 'Invalid entry' appears}
    a := sinput1;
    if (pos('.', a) > 0) then
      Delete(a, pos('.', a), 1);
    if (pos('.', a) > 0) then
    begin adit[s].Caption := 'Invalid entry'; adit[s].SelectAll; end;

{If - is pressed twice, 'Invalid entry' appears}
    a := sinput1;
    if (pos('-', a) > 1) then begin
      adit[s].Caption := 'Invalid entry'; adit[s].SelectAll; end;
    Delete(a, pos('-', a), 1);
    if (pos('-', a) > 0) then begin adit[s].Caption := 'Invalid entry'; adit[s].SelectAll; end;
{Numeric validation}
    a := sinput1;
    for f := 1 to length(a) do
      if (a[f] <> char(46)) and (a[f] <> char(45)) then
        if (a[f] < char(46)) or (a[f] > char(57)) then
        begin adit[s].Caption := 'Invalid entry'; adit[s].SelectAll; sinput1:= ''; end;

{Once numeric entry is validated, the data is sent to ninput1 (double) to avoid error}
      ninput1:= 0;
    if (sinput1 <> '') and (adit[s].Caption <> 'Invalid entry') and (adit[s].Caption <> '-') then begin
      ninput1 := strtofloat(sinput1); end;
      //if ninput1 <> 0 then
{Calculation begins every time a key is released}

case listbox1.ItemIndex of
{
When you click an item in the grid, a dynamic label and a text box are created.
llen     = to grid rows and items in the category.
.tu      = unit name
.tcons   = numeric constant
if label matches the unit name, the unit constant is multiplicated for the user entry.
gridlin is in charge to divide milm for all the units.
After that, dynamic text boxes are updated.
}

      // Acceleration
      0:
      begin
        for llen := 1 to 6 do // llen:= numbers of arrays
        begin
          if alabel[s].Caption = taccel[llen].tu then
            milm := taccel[llen].tcons * ninput1;
          for gridlin := 1 to 6 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / taccel[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = taccel[gridlin].tu) then
                adit[1].Caption := floattostr(milm / taccel[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;

      // Angle
      1:
      begin
        for llen := 1 to 16 do
        begin
          if alabel[s].Caption = tangle[llen].tu then
            milm := tangle[llen].tcons * ninput1;
          for gridlin := 1 to 16 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tangle[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tangle[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tangle[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;

      // Avel Freq
      2:
      begin
        for llen := 1 to 14 do
        begin
          if alabel[s].Caption = tavel[llen].tu then
            milm := tavel[llen].tcons * ninput1;
          for gridlin := 1 to 14 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tavel[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tavel[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tavel[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;

      // Area
      3:
      begin
        for llen := 1 to 57 do
        begin
          if alabel[s].Caption = tarea[llen].tu then
          begin
            milm := tarea[llen].tcons * ninput1;

            rad1 := (milm * milm) * 3.14159;
            rad2 := (tarea[21].tcons * ninput1 / tarea[21].tcons / 2) *
              (tarea[21].tcons * ninput1 / tarea[21].tcons / 2) * 3.14159;
            rad3 := (tarea[25].tcons * ninput1 / tarea[25].tcons / 2) *
              (tarea[25].tcons * ninput1 / tarea[25].tcons / 2) * 3.14159;
            rad4 := (tarea[29].tcons * ninput1 / tarea[29].tcons / 2) *
              (tarea[29].tcons * ninput1 / tarea[29].tcons / 2) * 3.14159;
            for gridlin := 1 to 57 do
            begin
              stringgrid1.Cells[1, gridlin] := floattostr(milm / tarea[gridlin].tcons);
              if gridlin = 11 then
                stringgrid1.Cells[1, gridlin] := floattostr(cdiam((ninput1 * tarea[llen].tcons)) / cm);
              if gridlin = 21 then
                stringgrid1.Cells[1, gridlin] := floattostr(cdiam((ninput1 * tarea[llen].tcons)) / ft);
              if gridlin = 25 then
                stringgrid1.Cells[1, gridlin] := floattostr(cdiam((ninput1 * tarea[llen].tcons)) / Inc);
              if gridlin = 29 then
                stringgrid1.Cells[1, gridlin] := floattostr(cdiam((ninput1 * tarea[llen].tcons)) / m);

              if (llen = 11) then
              begin
                stringgrid1.Cells[1, gridlin] := floattostr(carea(ninput1 * cm) / tarea[gridlin].tcons);
                stringgrid1.Cells[1, 11] := sinput1;
                stringgrid1.Cells[1, 21] := floattostr(ninput1 / ft * 10);
                stringgrid1.Cells[1, 25] := floattostr(ninput1 / Inc * 10);
                stringgrid1.Cells[1, 29] := floattostr(ninput1 / m / 100);
              end;
              if (llen = 21) then
              begin
                stringgrid1.Cells[1, gridlin] := floattostr(carea(ninput1 * ft) / tarea[gridlin].tcons);
                stringgrid1.Cells[1, 21] := sinput1;
                stringgrid1.Cells[1, 11] := floattostr(ninput1 * ft / cm);
                stringgrid1.Cells[1, 25] := floattostr(ninput1 * ft / Inc);
                stringgrid1.Cells[1, 29] := floattostr(ninput1 * ft / 1000);
              end;
              if (llen = 25) then
              begin
                stringgrid1.Cells[1, gridlin] := floattostr(carea(ninput1 * Inc) / tarea[gridlin].tcons);
                stringgrid1.Cells[1, 25] := sinput1;
                stringgrid1.Cells[1, 11] := floattostr(ninput1 * Inc / cm);
                stringgrid1.Cells[1, 21] := floattostr(ninput1 * Inc / ft);
                stringgrid1.Cells[1, 29] := floattostr(ninput1 * Inc / 1000);
              end;
              if (llen = 29) then
              begin
                stringgrid1.Cells[1, gridlin] := floattostr(carea(ninput1) / tarea[gridlin].tcons * 1000000);
                stringgrid1.Cells[1, 29] := sinput1;
                stringgrid1.Cells[1, 11] := floattostr(ninput1 / m * 100);
                stringgrid1.Cells[1, 21] := floattostr(ninput1 / ft * 1000);
                stringgrid1.Cells[1, 25] := floattostr(ninput1 / Inc * 1000);
              end;

              if assigned(alabel[2]) then
                if s = 1 then
                  adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
                else
                if alabel[1].Caption = tarea[gridlin].tu then
                  adit[1].Caption := stringgrid1.Cells[1, gridlin];
            end;
          end;
        end;
      end;
      // Atom phys
      4:
      begin
        for llen := 1 to 17 do
        begin
          if alabel[s].Caption = taphys[llen].tu then
            milm := taphys[llen].tcons * ninput1;
          for gridlin := 1 to 17 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / taphys[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = taphys[gridlin].tu) then
                adit[1].Caption := floattostr(milm / taphys[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;

      // Computer data
      5:
      begin
        for llen := 1 to 14 do
        begin
          if alabel[s].Caption = tcdata[llen].tu then
            milm := tcdata[llen].tcons * ninput1;
          for gridlin := 1 to 14 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tcdata[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tcdata[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tcdata[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;

      // Computer data flow
      6:
      begin
        for llen := 1 to 6 do
        begin
          if alabel[s].Caption = tcdflow[llen].tu then
            milm := tcdflow[llen].tcons * ninput1;
          for gridlin := 1 to 6 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tcdflow[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tcdflow[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tcdflow[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;

      // Current loop
      8:
      begin
        for llen := 1 to 4 do
        begin
          if alabel[s].Caption = tcloop[llen].tu then
          begin
            milm := tcloop[llen].tcons * ninput1;
            for gridlin := 1 to 4 do
            begin
              if (llen < 4) then
              begin
                stringgrid1.Cells[1, gridlin] := floattostr(milm / tcloop[gridlin].tcons);
                stringgrid1.Cells[1, 4] := floattostr(6.25 * (strtofloat(stringgrid1.Cells[1, 1]) - 4));
              end;
              if (llen = 4) then
              begin
                stringgrid1.Cells[1, 1] := floattostr((ninput1 / 6.25) + 4);
                stringgrid1.Cells[1, gridlin] :=
                  floattostr(strtofloat(stringgrid1.Cells[1, 1]) / tcloop[gridlin].tcons);
                stringgrid1.Cells[1, 4] := floattostr(6.25 * (strtofloat(stringgrid1.Cells[1, 1]) - 4));
              end;
              if assigned(alabel[2]) then
                if s = 1 then
                  adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
                else
                if alabel[1].Caption = tcloop[gridlin].tu then
                  adit[1].Caption := stringgrid1.Cells[1, gridlin];
              //     adit[1].Caption:= floattostr(6.25*(strtofloat(stringgrid1.Cells[1,1])-4));
            end;
          end;
        end;
      end;

      // Density
      9:
      begin
        for llen := 1 to 25 do
        begin
          if alabel[s].Caption = tdens[llen].tu then
            milm := tdens[llen].tcons * ninput1;
          for gridlin := 1 to 25 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tdens[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tdens[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tdens[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;


      // E capacitance
      10:
      begin
        for llen := 1 to 7 do
        begin
          if alabel[s].Caption = tcap[llen].tu then
            milm := tcap[llen].tcons * ninput1;
          for gridlin := 1 to 7 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tcap[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tcap[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tcap[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;

      // E charge
      11:
      begin
        for llen := 1 to 9 do
        begin
          if alabel[s].Caption = tech[llen].tu then
            milm := tech[llen].tcons * ninput1;
          for gridlin := 1 to 9 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tech[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tech[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tech[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;



      // E current
      12:
      begin
        for llen := 1 to 9 do
        begin
          if alabel[s].Caption = tcur[llen].tu then
            milm := tcur[llen].tcons * ninput1;
          for gridlin := 1 to 9 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tcur[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tcur[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tcur[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;
      // E inductance
      13:
      begin
        for llen := 1 to 7 do
        begin
          if alabel[s].Caption = tind[llen].tu then
            milm := tind[llen].tcons * ninput1;
          for gridlin := 1 to 7 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tind[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tind[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tind[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;
      // E resistance and cond
      14:
      begin
        for llen := 1 to 14 do
        begin
          if alabel[s].Caption = trcon[llen].tu then
            milm := trcon[llen].tcons * ninput1;
          for gridlin := 1 to 14 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / trcon[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = trcon[gridlin].tu) then
                adit[1].Caption := floattostr(milm / trcon[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;
      // Voltage
      15:
      begin
        for llen := 1 to 9 do
        begin
          if alabel[s].Caption = tvolt[llen].tu then
            milm := tvolt[llen].tcons * ninput1;
          for gridlin := 1 to 9 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tvolt[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tvolt[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tvolt[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;
      // EMR
      16:
      begin
        for llen := 1 to 14 do
          if alabel[s].Caption = temr[llen].tu then
          begin
            milm := 299792458 / ninput1 / temr[llen].tcons;
            ang := temr[llen].tcons * ninput1;     // meters
            for gridlin := 1 to 14 do
            begin
              if (llen < 3) or (llen > 8) and (llen < 13) then
                if (gridlin < 3) or (gridlin > 8) and (gridlin < 13) then
                  stringgrid1.Cells[1, gridlin] := floattostr(ang / temr[gridlin].tcons)
                else
                  stringgrid1.Cells[1, gridlin] := floattostr(milm / temr[gridlin].tcons);
              if (llen > 2) and (llen < 9) or (llen > 12) then
                if (gridlin > 2) and (gridlin < 9) or (gridlin > 12) then
                  stringgrid1.Cells[1, gridlin] := floattostr(ang / temr[gridlin].tcons)
                else
                  stringgrid1.Cells[1, gridlin] := floattostr(milm / temr[gridlin].tcons);

              if assigned(alabel[2]) then
                if s = 1 then
                  adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
                else
                if alabel[1].Caption = temr[gridlin].tu then
                  adit[1].Caption := stringgrid1.Cells[1, gridlin];
            end; //stringgrid1.Cells[1,llen]:= sinput1;
          end;
      end;

      // Work
      17:
      begin
        for llen := 1 to 38 do
        begin
          if alabel[s].Caption = twrk[llen].tu then
            milm := twrk[llen].tcons * ninput1;
          for gridlin := 1 to 38 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / twrk[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = twrk[gridlin].tu) then
                adit[1].Caption := floattostr(milm / twrk[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;

      // Flow dry
      18:
      begin
        for llen := 1 to 6 do
        begin
          if alabel[s].Caption = tflowd[llen].tu then
            milm := tflowd[llen].tcons * ninput1;
          for gridlin := 1 to 6 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tflowd[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tflowd[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tflowd[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;
      // Flow liq
      19:
      begin
        for llen := 1 to 6 do
        begin
          if alabel[s].Caption = tflowl[llen].tu then
            milm := tflowl[llen].tcons * ninput1;
          for gridlin := 1 to 6 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tflowl[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tflowl[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tflowl[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;
      // Force
      20:
      begin
        for llen := 1 to 16 do
        begin
          if alabel[s].Caption = tforce[llen].tu then
            milm := tforce[llen].tcons * ninput1;
          for gridlin := 1 to 16 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tforce[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tforce[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tforce[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;

      // Fuel consumption
      21:
      begin
        for llen := 1 to 6 do
        begin
          if alabel[s].Caption = tfuelc[llen].tu then begin
            milm := tfuelc[llen].tcons / ninput1;
            ang := tfuelc[llen].tcons * ninput1;

            //old     milm:= tfuelc[llen].tcons/ninput1;
            //old     ang:= tfuelc[llen].tcons*ninput1;
            for gridlin := 1 to 6 do
            begin
              if (llen = 1) then
                if (gridlin = 2) or (gridlin = 4) then
                  stringgrid1.Cells[1, gridlin] := floattostr(tfuelc[gridlin].tcons / milm)
                else
                  stringgrid1.Cells[1, gridlin] := floattostr(milm * tfuelc[gridlin].tcons);
              if (llen = 2) then
                if (gridlin = 1) or (gridlin = 4) then
                  stringgrid1.Cells[1, gridlin] := floattostr(tfuelc[gridlin].tcons / milm)
                else
                  stringgrid1.Cells[1, gridlin] := floattostr(milm * tfuelc[gridlin].tcons);
              if (llen = 3) then
                if (gridlin = 5) or (gridlin = 6) then
                  stringgrid1.Cells[1, gridlin] := floattostr(tfuelc[gridlin].tcons / milm)
                else
                  stringgrid1.Cells[1, gridlin] := floattostr(milm * tfuelc[gridlin].tcons);
              if (llen = 4) then
                if (gridlin = 1) or (gridlin = 2) then
                  stringgrid1.Cells[1, gridlin] := floattostr(tfuelc[gridlin].tcons / milm)
                else
                  stringgrid1.Cells[1, gridlin] := floattostr(milm * tfuelc[gridlin].tcons);
              if (llen = 5) then
                if (gridlin = 3) or (gridlin = 6) then
                  stringgrid1.Cells[1, gridlin] := floattostr(tfuelc[gridlin].tcons / milm)
                else
                  stringgrid1.Cells[1, gridlin] := floattostr(milm * tfuelc[gridlin].tcons);
              if (llen = 6) then
                if (gridlin = 3) or (gridlin = 5) then
                  stringgrid1.Cells[1, gridlin] := floattostr(tfuelc[gridlin].tcons / milm)
                else
                  stringgrid1.Cells[1, gridlin] := floattostr(milm * tfuelc[gridlin].tcons);
              if assigned(alabel[2]) then
                if s = 1 then
                  adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
                else
                if alabel[1].Caption = tfuelc[gridlin].tu then
                  adit[1].Caption := stringgrid1.Cells[1, gridlin];
            end;
            stringgrid1.Cells[1, llen] := sinput1;
          end;
      end;
end;

      // Illumination
      22:
      begin
        for llen := 1 to 8 do
        begin
          if alabel[s].Caption = tillum[llen].tu then
            milm := tillum[llen].tcons * ninput1;
          for gridlin := 1 to 8 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tillum[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tillum[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tillum[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;

      // Length
      23:
      begin
        for llen := 1 to 127 do
        begin
          if alabel[s].Caption = tlen[llen].tu then
            milm := tlen[llen].tcons * ninput1;
          for gridlin := 1 to 127 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tlen[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tlen[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tlen[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;
      // Luminance
      24:
      begin
        for llen := 1 to 13 do
        begin
          if alabel[s].Caption = tlumin[llen].tu then
          begin
            milm := tlumin[llen].tcons * ninput1;
            ang := tlumin[llen].tcons / ninput1;
            //old     milm:= tlumin[llen].tcons*ninput1;
            //old     ang:= tlumin[llen].tcons/ninput1;
            for gridlin := 1 to 13 do
            begin
              if (llen = 10) then
              begin
                //if s=1 then
                stringgrid1.Cells[1, 5] := floattostr(lux.mcd(ninput1));
                stringgrid1.Cells[1, gridlin] :=
                  floattostr(strtofloat(stringgrid1.Cells[1, 5]) / tlumin[gridlin].tcons / 10000);
              end
              else
              begin

                stringgrid1.Cells[1, gridlin] := floattostr(milm / tlumin[gridlin].tcons);
                stringgrid1.Cells[1, 10] := floattostr(lux.cdm(milm / tlumin[5].tcons));
              end;
              if assigned(alabel[2]) then
                if s = 1 then
                  adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
                else
                if alabel[1].Caption = tlumin[gridlin].tu then
                  adit[1].Caption := stringgrid1.Cells[1, gridlin];
            end;
            stringgrid1.Cells[1, llen] := sinput1;
          end;
        end;
      end;
      // Luminous flux
      25:
      begin
        for llen := 1 to 2 do
        begin
          if alabel[s].Caption = tlflux[llen].tu then
            milm := tlflux[llen].tcons * ninput1;
          for gridlin := 1 to 2 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tlflux[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tlflux[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tlflux[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;
      // Luminous intensity
      26:
      begin
        for llen := 1 to 3 do
        begin
          if alabel[s].Caption = tlint[llen].tu then
            milm := tlint[llen].tcons * ninput1;
          for gridlin := 1 to 3 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tlint[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tlint[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tlint[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;
      // Magnetic field strength
      27:
      begin
        for llen := 1 to 6 do
        begin
          if alabel[s].Caption = tmfs[llen].tu then
            milm := tmfs[llen].tcons * ninput1;
          for gridlin := 1 to 6 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tmfs[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tmfs[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tmfs[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;
      // magnetic flux
      28:
      begin
        for llen := 1 to 6 do
        begin
          if alabel[s].Caption = tmflux[llen].tu then
            milm := tmflux[llen].tcons * ninput1;
          for gridlin := 1 to 6 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tmflux[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tmflux[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tmflux[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;
      // magnetic field density
      29:
      begin
        for llen := 1 to 11 do
        begin
          if alabel[s].Caption = tmfd[llen].tu then
            milm := tmfd[llen].tcons * ninput1;
          for gridlin := 1 to 11 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tmfd[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tmfd[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tmfd[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;

      // Magnetomotive force
      30:
      begin
        for llen := 1 to 5 do
        begin
          if alabel[s].Caption = tmmf[llen].tu then
            milm := tmmf[llen].tcons * ninput1;
          for gridlin := 1 to 5 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tmmf[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tmmf[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tmmf[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;

      // Mass
      31:
      begin
        for llen := 1 to 84 do
        begin
          if alabel[s].Caption = tmass[llen].tu then
            milm := tmass[llen].tcons * ninput1;
          for gridlin := 1 to 84 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tmass[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tmass[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tmass[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;
      // Mus
      32:
      begin
        for llen := 1 to 5 do
        begin
          if alabel[s].Caption = tmus[llen].tu then
            milm := tmus[llen].tcons * ninput1;
          for gridlin := 1 to 5 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tmus[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tmus[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tmus[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;

      // Power
      33:
      begin
        for llen := 1 to 20 do
        begin
          if alabel[s].Caption = tpower[llen].tu then
            milm := tpower[llen].tcons * ninput1;
          for gridlin := 1 to 20 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tpower[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tpower[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tpower[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;

      // Prefixes
      34:
      begin
        for llen := 1 to 82 do
        begin
          if alabel[s].Caption = tprefx[llen].tu then
            milm := tprefx[llen].tcons * ninput1;
          for gridlin := 1 to 82 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tprefx[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tprefx[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tprefx[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;
      // Press
      35:
      begin
        for llen := 1 to 42 do
        begin
          if alabel[s].Caption = tpress[llen].tu then
            milm := tpress[llen].tcons * ninput1;
          for gridlin := 1 to 42 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tpress[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tpress[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tpress[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;
      // Shoes
      36:
      begin
        for llen := 1 to 8 do
        begin
          if alabel[s].Caption = tshoe[llen].tu then
            milm := tshoe[llen].tcons * ninput1;
          ang := 0.170212766 * (ninput1);
          //old     milm:= tshoe[llen].tcons*ninput1;
          //old     ang:= 0.170212766*(ninput1);
          for gridlin := 1 to 8 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tshoe[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tshoe[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tshoe[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;

      // Specific heat
      37:
      begin
        for llen := 1 to 4 do
        begin
          if alabel[s].Caption = tsheat[llen].tu then
            milm := tsheat[llen].tcons * ninput1;
          for gridlin := 1 to 4 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tsheat[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tsheat[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tsheat[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;

      // Speed
      38:
      begin
        for llen := 1 to 14 do
        begin
          if alabel[s].Caption = tspeed[llen].tu then
            milm := tspeed[llen].tcons * ninput1;
          for gridlin := 1 to 14 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tspeed[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tspeed[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tspeed[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;

{Temperature is a special case because uses functions instead numeric constants.}
      // Temp
      39:
      begin
        a:= floattostr(ninput1); s1:= stringgrid1.Cells[1, stringgrid1.Row];
        if alabel[s].Caption = 'Celsius' then
        begin
          stringgrid1.Cells[1, 1] := sinput1;
          stringgrid1.Cells[1, 2] := floattostr(strtofloat(a)+273.15);  // Celsius abs
          stringgrid1.Cells[1, 3] := floattostr(ctof.ctof(ninput1));      // Fahrenheit)
          stringgrid1.Cells[1, 4] := floattostr(torankine.toRankine(ninput1));// Fah abs
          stringgrid1.Cells[1, 5] := floattostr(strtofloat(a)+273.15);      // Kelvin
          stringgrid1.Cells[1, 6] := floattostr(torankine.toRankine(ninput1));// Rankine
          stringgrid1.Cells[1, 7] := floattostr(ctoream.ctoream(ninput1));    // Reamur
        end;

        if alabel[s].Caption = 'Celsius absolute' then
        begin
          stringgrid1.Cells[1, 2] := sinput1;     //celsius abs
          stringgrid1.Cells[1, 1] := floattostr(strtofloat(a)-273.15);  //celsius
          stringgrid1.Cells[1, 3] := floattostr(ctof.ctof(strtofloat(stringgrid1.Cells[1, 1])));  // Fahrenheit
          stringgrid1.Cells[1, 4] := floattostr(torankine.toRankine(strtofloat(stringgrid1.Cells[1, 1])));    // Fah abs
          stringgrid1.Cells[1, 5] := sinput1; // Kelvin
          stringgrid1.Cells[1, 6] := floattostr(torankine.toRankine(strtofloat(stringgrid1.Cells[1, 1])));    // rankine
          stringgrid1.Cells[1, 7] := floattostr(ctoream.ctoream(strtofloat(stringgrid1.Cells[1, 1])));             // Reamur
        end;

        if alabel[s].Caption = 'Fahrenheit' then
        begin
          stringgrid1.Cells[1, 3] := floattostr(ninput1);                    // Fahrenheit
          stringgrid1.Cells[1, 1] := floattostr(ftoc.ftoc(strtofloat(stringgrid1.Cells[1, 3])));   // Celsius
          stringgrid1.Cells[1, 2] := floattostr(kelvin.Kelvin(strtofloat(stringgrid1.Cells[1, 1])));  // Celsius abs
          stringgrid1.Cells[1, 4] := floattostr(torankine.toRankine(strtofloat(stringgrid1.Cells[1, 1])));       // Fah abs
          stringgrid1.Cells[1, 5] := floattostr(kelvin.Kelvin(strtofloat(stringgrid1.Cells[1, 1]))); // Kelvin
          stringgrid1.Cells[1, 6] := floattostr(torankine.toRankine(strtofloat(stringgrid1.Cells[1, 1])));  // Rankine
          stringgrid1.Cells[1, 7] := floattostr(ctoream.ctoream(strtofloat(stringgrid1.Cells[1, 1])));             // Reamur
        end;

        if alabel[s].Caption = 'Fahrenheit absolute' then
        begin
          stringgrid1.Cells[1, 4] := floattostr(ninput1);                                         // Fahrenheit abs
          stringgrid1.Cells[1, 1] := floattostr(rtoc.rtoc(strtofloat(stringgrid1.Cells[1, 4])));  // Celsius
          stringgrid1.Cells[1, 2] := floattostr(kelvin.Kelvin(strtofloat(stringgrid1.Cells[1, 1]))); // Celsius abs
          stringgrid1.Cells[1, 3] := floattostr(ctof.ctof(strtofloat(stringgrid1.Cells[1, 1])));     // Fah
          stringgrid1.Cells[1, 5] := floattostr(kelvin.Kelvin(strtofloat(stringgrid1.Cells[1, 1]))); // Kelvin
          stringgrid1.Cells[1, 6] := sinput1;                                                           // Rankine
          stringgrid1.Cells[1, 7] := floattostr(ctoream.ctoream(strtofloat(stringgrid1.Cells[1, 1])));  // Reamur
        end;

        if alabel[s].Caption = 'Kelvin' then
        begin
          stringgrid1.Cells[1, 5] := sinput1;          // Kelvin
          stringgrid1.Cells[1, 1] := floattostr(strtofloat(a)-273.15);    // Celsius
          stringgrid1.Cells[1, 2] := sinput1;  // Celsius abs
          stringgrid1.Cells[1, 3] := floattostr(ctof.ctof(strtofloat(stringgrid1.Cells[1, 1])));        // Fah
          stringgrid1.Cells[1, 4] := floattostr(torankine.toRankine(strtofloat(stringgrid1.Cells[1, 1]))); // f abs
          stringgrid1.Cells[1, 6] := floattostr(torankine.toRankine(strtofloat(stringgrid1.Cells[1, 1])));
          stringgrid1.Cells[1, 7] := floattostr(ctoream.ctoream(strtofloat(stringgrid1.Cells[1, 1])));             // Reamur

        end;

        if alabel[s].Caption = 'Rankine' then  begin
          stringgrid1.Cells[1, 6] := floattostr(ninput1);          // Rankine
          stringgrid1.Cells[1, 1] := floattostr(rtoc.rtoc(strtofloat(stringgrid1.Cells[1, 6])));                   // Celsius
          stringgrid1.Cells[1, 2] := floattostr(kelvin.Kelvin(strtofloat(stringgrid1.Cells[1, 1])));               // Celsius abs
          stringgrid1.Cells[1, 3] := floattostr(ctof.ctof(strtofloat(stringgrid1.Cells[1, 1])));                   // Fah
          stringgrid1.Cells[1, 4] := sinput1;             // f abs
          stringgrid1.Cells[1, 5] := floattostr(kelvin.Kelvin(strtofloat(stringgrid1.Cells[1, 1])));          // Kelvin
          stringgrid1.Cells[1, 7] := floattostr(ctoream.ctoream(strtofloat(stringgrid1.Cells[1, 1])));             // Reamur

        end;

        if alabel[s].Caption = 'Réaumur' then begin
          stringgrid1.Cells[1, 7] := floattostr(ninput1);                                       // Reamur
          stringgrid1.Cells[1, 1] := floattostr(reamtoc.reamtoc(strtofloat(stringgrid1.Cells[1, 7])));    // Celsius
          stringgrid1.Cells[1, 2] := floattostr(kelvin.Kelvin(strtofloat(stringgrid1.Cells[1, 1])));      // Celsius abs
          stringgrid1.Cells[1, 3] := floattostr(ctof.ctof(strtofloat(stringgrid1.Cells[1, 1])));          // Fah
          stringgrid1.Cells[1, 4] := floattostr(torankine.toRankine(strtofloat(stringgrid1.Cells[1, 1])));       // fah abs
          stringgrid1.Cells[1, 5] := floattostr(kelvin.Kelvin(strtofloat(stringgrid1.Cells[1, 1])));      // Kelvin
          stringgrid1.Cells[1, 6] := floattostr(torankine.toRankine(strtofloat(stringgrid1.Cells[1, 1])));// Rankine
          end;
          if assigned(alabel[2]) then
            if s = 1 then
              adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
            else for gridlin:= 1 to 7 do
            if alabel[1].Caption = ttemp[gridlin].tu then
            adit[1].Caption:= stringgrid1.Cells[1, gridlin];

        end;

      // Temp diff
      40:
      begin
        for llen := 1 to 5 do
        begin
          if alabel[s].Caption = ttdiff[llen].tu then
          begin
            milm := ttdiff[llen].tcons * ninput1;
            for gridlin := 1 to 5 do
            begin
              if (llen = 1) then
                if (gridlin = 2) or (gridlin = 3) then
                  stringgrid1.Cells[1, gridlin] := floattostr(milm * ttdiff[gridlin].tcons)
                else
                  stringgrid1.Cells[1, gridlin] := floattostr(milm / ttdiff[gridlin].tcons);
              if (llen = 2) or (llen = 3) then
              begin
                stringgrid1.Cells[1, 1] := floattostr(ninput1 * dffc); // Celsius
                stringgrid1.Cells[1, 2] := sinput1; // Fahrenheit
                stringgrid1.Cells[1, 3] := sinput1; // Rankine
                stringgrid1.Cells[1, 4] := floattostr(ninput1 * dffc * dfcream); // Reamur
                stringgrid1.Cells[1, 5] := floattostr(ninput1 * dffc); // Kelvin
              end;
              if (llen = 4) then
              begin
                stringgrid1.Cells[1, 1] := floattostr(ninput1 * dfreamc); // Celsius
                stringgrid1.Cells[1, 2] := floattostr(ninput1 * dfreamc * dfcf); // Fahrenheit
                stringgrid1.Cells[1, 3] := floattostr(ninput1 * dfreamc * dfcf); // Rankine
                stringgrid1.Cells[1, 4] := sinput1; // Reamur
                stringgrid1.Cells[1, 5] := floattostr(ninput1 * dfreamc); // Kelvin
              end;
              if (llen = 5) then
              begin
                stringgrid1.Cells[1, 1] := floattostr(ninput1 * dfk); // Celsius
                stringgrid1.Cells[1, 2] := floattostr(ninput1 * dfk * dfcf); // Fahrenheit
                stringgrid1.Cells[1, 3] := floattostr(ninput1 * dfk * dfcf); // Rankine
                stringgrid1.Cells[1, 4] := floattostr(ninput1 * dfk * dfcream); // Reamur
                stringgrid1.Cells[1, 5] := sinput1; // Kelvin
              end;
              if assigned(alabel[2]) then
                if s = 1 then
                  adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
                else
                if alabel[1].Caption = ttdiff[gridlin].tu then
                  adit[1].Caption := stringgrid1.Cells[1, gridlin];
            end; //stringgrid1.Cells[1,llen]:= sinput1;
          end;
        end;
      end;

      // thermal conductance area
      41:
      begin
        for llen := 1 to 5 do
        begin
          if alabel[s].Caption = ttcona[llen].tu then
            milm := ttcona[llen].tcons * ninput1;
          for gridlin := 1 to 5 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / ttcona[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = ttcona[gridlin].tu) then
                adit[1].Caption := floattostr(milm / ttcona[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;

      // Thermal conductance linear
      42:
      begin
        for llen := 1 to 4 do
        begin
          if alabel[s].Caption = ttconl[llen].tu then
            milm := ttconl[llen].tcons * ninput1;
          for gridlin := 1 to 4 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / ttconl[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = ttconl[gridlin].tu) then
                adit[1].Caption := floattostr(milm / ttconl[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;

      // Thermal resistance
      43:
      begin
        for llen := 1 to 5 do
        begin
          if alabel[s].Caption = ttres[llen].tu then
            milm := ttres[llen].tcons * ninput1;
          for gridlin := 1 to 5 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / ttres[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = ttres[gridlin].tu) then
                adit[1].Caption := floattostr(milm / ttres[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;

      // Time
      44:
      begin
        for llen := 1 to 37 do
        begin
          if alabel[s].Caption = ttime[llen].tu then
            milm := ttime[llen].tcons * ninput1;
          for gridlin := 1 to 37 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / ttime[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = ttime[gridlin].tu) then
                adit[1].Caption := floattostr(milm / ttime[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;

      // Torque
      45:
      begin
        for llen := 1 to 17 do
        begin
          if alabel[s].Caption = ttque[llen].tu then
            milm := ttque[llen].tcons * ninput1;
          for gridlin := 1 to 17 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / ttque[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = ttque[gridlin].tu) then
                adit[1].Caption := floattostr(milm / ttque[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;

      // viscosity d
      46:
      begin
        for llen := 1 to 7 do
        begin
          if alabel[s].Caption = tvisd[llen].tu then
            milm := tvisd[llen].tcons * ninput1;
          for gridlin := 1 to 7 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tvisd[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tvisd[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tvisd[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;

      // Viscosity k
      47:
      begin
        for llen := 1 to 6 do
        begin
          if alabel[s].Caption = tvisk[llen].tu then
            milm := tvisk[llen].tcons * ninput1;
          for gridlin := 1 to 6 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tvisk[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tvisk[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tvisk[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;


      // Vol dry
      48:
      begin
        for llen := 1 to 20 do
        begin
          if alabel[s].Caption = tvold[llen].tu then
            milm := tvold[llen].tcons * ninput1;
          for gridlin := 1 to 20 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tvold[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tvold[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tvold[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;


      // Vol liq
      49:
      begin
        for llen := 1 to 46 do
        begin
          if alabel[s].Caption = tvoliq[llen].tu then
            milm := tvoliq[llen].tcons * ninput1;
          for gridlin := 1 to 46 do
          begin
            stringgrid1.Cells[1, gridlin] := floattostr(milm / tvoliq[gridlin].tcons);
            if assigned(alabel[2]) then
              if s = 1 then
                adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
              else
              if (alabel[1].Caption = tvoliq[gridlin].tu) then
                adit[1].Caption := floattostr(milm / tvoliq[gridlin].tcons);
          end; //stringgrid1.Cells[1,llen]:= sinput1;
        end;
      end;
    end; //case
  end
  else // A key is released on computer numbers
{
  Else is used here, because computer numbers has its own validation. Letters are allowed but they're
different in every unit. For example undenary allows only a. Duodenary allows a and b.
}

if listbox1.ItemIndex= 7  then begin

  // Computer numbers
     // Allowing letters and numbers
     a:= sinput1;
  for validate:= 1 to length(a) do
         if (a[validate] < char(46)) or (a[validate] > char(57)) and
         (a[validate] < char(65)) or (a[validate] > char(90)) and
         (a[validate] < char(97)) or (a[validate] > char(122)) then
         begin adit[s].Caption := 'Invalid entry'; adit[s].SelectAll; sinput1 := ''; end;

    for llen := 1 to 25 do
      if alabel[s].Caption = tcnum[llen].tu then
      begin
        for gridlin := 1 to 25 do
        begin

//Binary section, llen < 9
         if llen < 9 then // Base 2 to 9
          begin  // binary    1
     for f:= 1 to length(a) do
         if (a[f] < char(48)) or (a[f] > char(57)) then
           begin adit[s].Caption := 'Invalid entry'; adit[s].SelectAll; sinput1:= ''; end;
            for f:= llen to 8 do
{
b is the array in cnum unit with the allowed characters (2..9).
Bid is the function which calculate Base 2 to Base 9 and Dbi is the function which calculates decimal to Base 2-9.
The Base is passed by llen +1 (row 1 is Base 2).
When base 10 is selected, dbi gets the results for base 2-9, while bid gets the results from base 2-9 to decimal.
Dtoa (decimal to all) obtains the results from base 10 to base 11-20.
Bases beyond 30 have their own functions.
}
              if (pos(b[f], a) > 0) then
              begin adit[s].Caption := 'Invalid entry'; adit[s].selectall;  sinput1 := ''; end;

            if (pos('.', sinput1) > 0) then
            begin adit[s].Clear; sinput1 := ''; end;
            if (sinput1 <> '') and (sinput1 <> 'Invalid entry') then
            begin
              stringgrid1.Cells[1, llen] := sinput1;
              stringgrid1.Cells[1, 9] := floattostr(bid(sinput1, llen + 1));
              if (gridlin < 9) then
                stringgrid1.Cells[1, gridlin] := dbi(strtofloat(stringgrid1.Cells[1, 9]), gridlin + 1);
              if (gridlin > 9) and ((gridlin < 20)) then
                stringgrid1.Cells[1, gridlin] := dtoa(strtofloat(stringgrid1.Cells[1, 9]), gridlin + 1);
              stringgrid1.Cells[1, 20] := dto30(strtofloat(stringgrid1.Cells[1, 9]), 30);
              stringgrid1.Cells[1, 21] := dto36(strtofloat(stringgrid1.Cells[1, 9]), 36);
              stringgrid1.Cells[1, 22] := dto40(strtofloat(stringgrid1.Cells[1, 9]), 40);
              stringgrid1.Cells[1, 23] := dto50(strtofloat(stringgrid1.Cells[1, 9]), 50);
              stringgrid1.Cells[1, 24] := dto60(strtofloat(stringgrid1.Cells[1, 9]), 60);
              stringgrid1.Cells[1, 25] := dto62(strtofloat(stringgrid1.Cells[1, 9]), 62);
            end;
          end;

// Decimal section, llen is 9
          if llen = 9 then
          begin
          if (pos('.', sinput1) > 0) then // if . is pressed for second time, the display is cleared
            begin adit[s].Clear; sinput1 := ''; end;

          for f:= 1 to length(a) do
              if (a[f] < char(48)) or (a[f] > char(57)) then
                begin adit[s].Caption := 'Invalid entry'; adit[s].SelectAll; sinput1:= ''; end;


            if (sinput1 <> '') and (sinput1 <> 'Invalid entry') then
            begin
              stringgrid1.Cells[1, llen] := sinput1;
              if (gridlin < 9) then
                stringgrid1.Cells[1, gridlin] := dbi(strtofloat(stringgrid1.Cells[1, 9]), gridlin + 1);
              if (gridlin > 9) and (gridlin < 20) then
                stringgrid1.Cells[1, gridlin] := dtoa(strtofloat(stringgrid1.Cells[1, 9]), gridlin + 1);
              stringgrid1.Cells[1, 20] := dto30(strtofloat(stringgrid1.Cells[1, 9]), 30);
              stringgrid1.Cells[1, 21] := dto36(strtofloat(stringgrid1.Cells[1, 9]), 36);
              stringgrid1.Cells[1, 22] := dto40(strtofloat(stringgrid1.Cells[1, 9]), 40);
              stringgrid1.Cells[1, 23] := dto50(strtofloat(stringgrid1.Cells[1, 9]), 50);
              stringgrid1.Cells[1, 24] := dto60(strtofloat(stringgrid1.Cells[1, 9]), 60);
              stringgrid1.Cells[1, 25] := dto62(strtofloat(stringgrid1.Cells[1, 9]), 62);
            end;
          end;

// to 20
          if (llen > 9) and (llen <= 19) then
          begin
          a:= sinput1;
          for f:= llen-8 to 52 do
              if (pos(let62[f], a) > 0) then
              begin adit[s].Caption := 'Invalid entry'; adit[s].SelectAll; sinput1 := ''; end;

            if (pos('.', sinput1) > 0) then
            begin adit[s].Clear; sinput1 := ''; end;
            if (sinput1 <> '') and (sinput1 <> 'Invalid entry') then
            begin
              stringgrid1.Cells[1, llen] := sinput1;
              stringgrid1.Cells[1, 9] := td(sinput1, llen + 1);
              if (gridlin < 9) then
                stringgrid1.Cells[1, gridlin] := dbi(strtofloat(stringgrid1.Cells[1, 9]), gridlin + 1);
              if (gridlin > 9) and (gridlin < 20) then
                stringgrid1.Cells[1, gridlin] := dtoa(strtofloat(stringgrid1.Cells[1, 9]), gridlin + 1);
              stringgrid1.Cells[1, 20] := dto30(strtofloat(stringgrid1.Cells[1, 9]), 30);
              stringgrid1.Cells[1, 21] := dto36(strtofloat(stringgrid1.Cells[1, 9]), 36);
              stringgrid1.Cells[1, 22] := dto40(strtofloat(stringgrid1.Cells[1, 9]), 40);
              stringgrid1.Cells[1, 23] := dto50(strtofloat(stringgrid1.Cells[1, 9]), 50);
              stringgrid1.Cells[1, 24] := dto60(strtofloat(stringgrid1.Cells[1, 9]), 60);
              stringgrid1.Cells[1, 25] := dto62(strtofloat(stringgrid1.Cells[1, 9]), 62);
            end;
          end;
// 30
          if (llen = 20) then
          begin
          for f:= 21 to 52 do
              if (pos(let62[f], a) > 0) then
              begin adit[s].Caption := 'Invalid entry'; adit[s].SelectAll; sinput1 := ''; end;

            if (pos('.', sinput1) > 0) then
            begin adit[s].Clear; sinput1 := ''; end;

            if (sinput1 <> '') and (sinput1 <> 'Invalid entry') then
            begin
              stringgrid1.Cells[1, llen] := sinput1;
              stringgrid1.Cells[1, 9] := thtod(sinput1, 30);
              if (gridlin < 9) then
                stringgrid1.Cells[1, gridlin] := dbi(strtofloat(stringgrid1.Cells[1, 9]), gridlin + 1);
              if (gridlin > 9) and (gridlin < 20) then
                stringgrid1.Cells[1, gridlin] := dtoa(strtofloat(stringgrid1.Cells[1, 9]), gridlin + 1);

              stringgrid1.Cells[1, 21] := dto36(strtofloat(stringgrid1.Cells[1, 9]), 36);
              stringgrid1.Cells[1, 22] := dto40(strtofloat(stringgrid1.Cells[1, 9]), 40);
              stringgrid1.Cells[1, 23] := dto50(strtofloat(stringgrid1.Cells[1, 9]), 50);
              stringgrid1.Cells[1, 24] := dto60(strtofloat(stringgrid1.Cells[1, 9]), 60);
              stringgrid1.Cells[1, 25] := dto62(strtofloat(stringgrid1.Cells[1, 9]), 62);
            end;
          end;
// 36
          if (llen = 21) then
          begin
            for f:= 27 to 52 do
                if (pos(let62[f], a) > 0) then
                begin adit[s].Caption := 'Invalid entry'; adit[s].SelectAll; sinput1 := ''; end;

            if (pos('.', sinput1) > 0) then
            begin  adit[s].Clear; sinput1 := ''; end;

            if (sinput1 <> '') and (sinput1 <> 'Invalid entry') then
            begin
              stringgrid1.Cells[1, llen] := sinput1;
              stringgrid1.Cells[1, 9] := th6od(sinput1, 36);
              if (gridlin < 9) then
                stringgrid1.Cells[1, gridlin] := dbi(strtofloat(stringgrid1.Cells[1, 9]), gridlin + 1);
              if (gridlin > 9) and ((gridlin < 20)) then
                stringgrid1.Cells[1, gridlin] := dtoa(strtofloat(stringgrid1.Cells[1, 9]), gridlin + 1);
              stringgrid1.Cells[1, 20] := dto30(strtofloat(stringgrid1.Cells[1, 9]), 30);

              stringgrid1.Cells[1, 22] := dto40(strtofloat(stringgrid1.Cells[1, 9]), 40);
              stringgrid1.Cells[1, 23] := dto50(strtofloat(stringgrid1.Cells[1, 9]), 50);
              stringgrid1.Cells[1, 24] := dto60(strtofloat(stringgrid1.Cells[1, 9]), 60);
              stringgrid1.Cells[1, 25] := dto62(strtofloat(stringgrid1.Cells[1, 9]), 62);
            end;
          end;

// 40
          if (llen = 22) then
          begin
            a:= sinput1;
            for f := 69 to 90 do
                if (pos(char(f), a) > 0) then
                begin adit[s].Caption := 'Invalid entry'; adit[s].SelectAll; sinput1 := ''; end;

            if (pos('.', sinput1) > 0) then
            begin adit[s].Clear; sinput1 := ''; end;
            if (sinput1 <> '') and (sinput1 <> 'Invalid entry') then

            begin
              stringgrid1.Cells[1, llen] := sinput1;
              stringgrid1.Cells[1, 9] := ftod(sinput1, 40);
              if (gridlin < 9) then
                stringgrid1.Cells[1, gridlin] := dbi(strtofloat(stringgrid1.Cells[1, 9]), gridlin + 1);
              if (gridlin > 9) and ((gridlin < 20)) then
                stringgrid1.Cells[1, gridlin] := dtoa(strtofloat(stringgrid1.Cells[1, 9]), gridlin + 1);
              stringgrid1.Cells[1, 20] := dto30(strtofloat(stringgrid1.Cells[1, 9]), 30);
              stringgrid1.Cells[1, 21] := dto36(strtofloat(stringgrid1.Cells[1, 9]), 36);
              //stringgrid1.Cells[1,22]:= dto40(strtofloat(stringgrid1.Cells[1,9]),40);
              stringgrid1.Cells[1, 23] := dto50(strtofloat(stringgrid1.Cells[1, 9]), 50);
              stringgrid1.Cells[1, 24] := dto60(strtofloat(stringgrid1.Cells[1, 9]), 60);
              stringgrid1.Cells[1, 25] := dto62(strtofloat(stringgrid1.Cells[1, 9]), 62);
            end;
          end;
// 50
          if (llen = 23) then
          begin

            for f := 79 to 90 do
              if (pos(char(f), a) > 0) then
              begin adit[s].Caption := 'Invalid entry'; adit[s].SelectAll; sinput1 := ''; end;

            if (pos('.', sinput1) > 0) then
            begin adit[s].Clear; sinput1 := ''; end;

            if (sinput1 <> '') and (sinput1 <> 'Invalid entry') then
            begin
              stringgrid1.Cells[1, llen] := sinput1;
              stringgrid1.Cells[1, 9] := fitod(sinput1, 50);
              if (gridlin < 9) then
                stringgrid1.Cells[1, gridlin] := dbi(strtofloat(stringgrid1.Cells[1, 9]), gridlin + 1);
              if (gridlin > 9) and ((gridlin < 20)) then
                stringgrid1.Cells[1, gridlin] := dtoa(strtofloat(stringgrid1.Cells[1, 9]), gridlin + 1);
              stringgrid1.Cells[1, 20] := dto30(strtofloat(stringgrid1.Cells[1, 9]), 30);
              stringgrid1.Cells[1, 21] := dto36(strtofloat(stringgrid1.Cells[1, 9]), 36);
              stringgrid1.Cells[1, 22] := dto40(strtofloat(stringgrid1.Cells[1, 9]), 40);
              stringgrid1.Cells[1, 24] := dto60(strtofloat(stringgrid1.Cells[1, 9]), 60);
              stringgrid1.Cells[1, 25] := dto62(strtofloat(stringgrid1.Cells[1, 9]), 62);
            end;
          end;

// 60
          if (llen = 24) then
          begin
            a:= sinput1;
            for f := 89 to 90 do
              if (pos(char(f), a) > 0) then
              begin adit[s].Caption := 'Invalid entry'; adit[s].SelectAll; sinput1 := ''; end;

            if (pos('.', sinput1) > 0) then
            begin adit[s].Clear; sinput1 := ''; end;
            if (sinput1 <> '') and (sinput1 <> 'Invalid entry') then

            begin
              stringgrid1.Cells[1, llen] := sinput1;
              stringgrid1.Cells[1, 9] := sixtod(sinput1, 60);
              if (gridlin < 9) then
                stringgrid1.Cells[1, gridlin] := dbi(strtofloat(stringgrid1.Cells[1, 9]), gridlin + 1);
              if (gridlin > 9) and ((gridlin < 20)) then
                stringgrid1.Cells[1, gridlin] := dtoa(strtofloat(stringgrid1.Cells[1, 9]), gridlin + 1);
              stringgrid1.Cells[1, 20] := dto30(strtofloat(stringgrid1.Cells[1, 9]), 30);
              stringgrid1.Cells[1, 21] := dto36(strtofloat(stringgrid1.Cells[1, 9]), 36);
              stringgrid1.Cells[1, 22] := dto40(strtofloat(stringgrid1.Cells[1, 9]), 40);
              stringgrid1.Cells[1, 23] := dto50(strtofloat(stringgrid1.Cells[1, 9]), 50);
              stringgrid1.Cells[1, 25] := dto62(strtofloat(stringgrid1.Cells[1, 9]), 62);
            end;
          end;


// 62
          if (llen = 25) then
          begin
          a:= sinput1;
            if (pos('.', sinput1) > 0) then
            begin adit[s].Clear; sinput1 := ''; end;
            if (sinput1 <> '') and (sinput1 <> 'Invalid entry') then

            begin
              stringgrid1.Cells[1, llen] := sinput1;
              stringgrid1.Cells[1, 9] := s2tod(sinput1, 62);
              if (gridlin < 9) then
                stringgrid1.Cells[1, gridlin] := dbi(strtofloat(stringgrid1.Cells[1, 9]), gridlin + 1);
              if (gridlin > 9) and ((gridlin < 20)) then
                stringgrid1.Cells[1, gridlin] := dtoa(strtofloat(stringgrid1.Cells[1, 9]), gridlin + 1);
              stringgrid1.Cells[1, 20] := dto30(strtofloat(stringgrid1.Cells[1, 9]), 30);
              stringgrid1.Cells[1, 21] := dto36(strtofloat(stringgrid1.Cells[1, 9]), 36);
              stringgrid1.Cells[1, 22] := dto40(strtofloat(stringgrid1.Cells[1, 9]), 40);
              stringgrid1.Cells[1, 23] := dto50(strtofloat(stringgrid1.Cells[1, 9]), 50);
              stringgrid1.Cells[1, 24] := dto60(strtofloat(stringgrid1.Cells[1, 9]), 60);
            end;
          end;

          if assigned(alabel[2]) then
            if s = 1 then
              adit[2].Caption := stringgrid1.Cells[1, stringgrid1.Row]
            else
            if (alabel[1].Caption = tcnum[gridlin].tu) then
              adit[1].Caption := stringgrid1.Cells[1, gridlin];
        end;
        stringgrid1.cells[1, 26] := 'Not available';
      end;
end;

end;

initialization
  {$I maink.lrs}

end.
