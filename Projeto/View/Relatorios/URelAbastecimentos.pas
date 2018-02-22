unit URelAbastecimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLRichFilter, RLHTMLFilter,
  RLXLSFilter, RLFilters, RLPDFFilter, Data.DB;

type
  TFRelAbastecimentos = class(TForm)
    RLRRelAbastecimentos: TRLReport;
    RLBand1: TRLBand;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLBand3: TRLBand;
    RLPanel1: TRLPanel;
    RLPanel2: TRLPanel;
    RLPanel3: TRLPanel;
    RLPanel4: TRLPanel;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLGroup1: TRLGroup;
    RLImage1: TRLImage;
    RLPanel5: TRLPanel;
    RLLabel9: TRLLabel;
    DSRel: TDataSource;
    RLBand4: TRLBand;
    RLPanel6: TRLPanel;
    RLPanel7: TRLPanel;
    RLPanel8: TRLPanel;
    RLPanel9: TRLPanel;
    RLPanel10: TRLPanel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText5: TRLDBText;
    RLLPeriodo: TRLLabel;
    RLBand5: TRLBand;
    RLLabel10: TRLLabel;
    RLPanel11: TRLPanel;
    RLDBResult1: TRLDBResult;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelAbastecimentos: TFRelAbastecimentos;

implementation

{$R *.dfm}

uses UDMBanco;

end.
