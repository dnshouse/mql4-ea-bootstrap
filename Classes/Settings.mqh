//+------------------------------------------------------------------+
//|                                                               EA |
//|                                     Copyright 2020, DA Solutions |
//|                                      https://www.dasolutions.org |
//+------------------------------------------------------------------+
extern bool             PrefSettings = true;
extern bool             RiskManagement = true; //Risk Management
extern double           Risk = 0.005; // Risk

extern int              StopLoss = 200;
extern int              TargetProfit = 300;

sinput string           ATR_Label = ""; //ATR
extern bool             ATR_Enabled = false;
extern int              ATR_Period = 14; //Period
extern double           SL_Multiplier = 0.5; //SL Multiplier
extern double           TP_Multiplier = 0.5; // TP Multiplier

sinput string           Baseline_Label = ""; //Baseline
extern int              Baseline_Period = 21; //Period
extern double           Baseline_Levels = 0.00400; //Levels

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
class Settings
  {
public:
   bool              _RiskManagement;
   double            _Risk;

   int               _StopLoss;
   int               _TargetProfit;

   bool              _ATR_Enabled;
   int               _ATR_Period;
   double            _SL_Multiplier;
   double            _TP_Multiplier;

   int               _Baseline_Period;
   double            _Baseline_Levels;

   int               _IndicatorsTimeframe;
   int               _IndicatorsOffset;

   void              Settings()
     {
      this._Risk = Risk;
      this._RiskManagement = RiskManagement;

      this._StopLoss = StopLoss;
      this._TargetProfit = TargetProfit;

      this._ATR_Enabled = ATR_Enabled;
      this._ATR_Period = ATR_Period;
      this._SL_Multiplier = SL_Multiplier;
      this._TP_Multiplier = TP_Multiplier;

      this._Baseline_Period = Baseline_Period;
      this._Baseline_Levels = Baseline_Levels;

      this._IndicatorsTimeframe = PERIOD_CURRENT;
      this._IndicatorsOffset = 1;

      if(PrefSettings == false)
        {
        }
      else
        {
         if((Symbol() == "AUDCAD") || (Symbol() == "AUDCADmicro") || (Symbol() == "AUDCAD_ecn"))
           {
            // example preffered settings
            this._StopLoss = 200;
            this._TargetProfit = 1000;

            this._ATR_Enabled = false;

            this._Baseline_Period = 9;
            this._Baseline_Levels = 0.005;
           }

         if((Symbol() == "AUDCHF") || (Symbol() == "AUDCHFmicro") || (Symbol() == "AUDCHF_ecn"))
           {
           }

         if((Symbol() == "AUDJPY") || (Symbol() == "AUDJPYmicro") || (Symbol() == "AUDJPY_ecn"))
           {
           }

         if((Symbol() == "AUDNZD") || (Symbol() == "AUDNZDmicro") || (Symbol() == "AUDNZD_ecn"))
           {
           }

         if((Symbol() == "AUDUSD") || (Symbol() == "AUDUSDmicro") || (Symbol() == "AUDUSD_ecn"))
           {
           }

         if((Symbol() == "CADCHF") || (Symbol() == "CADCHFmicro") || (Symbol() == "CADCHF_ecn"))
           {
           }

         if((Symbol() == "CADJPY") || (Symbol() == "CADJPYmicro") || (Symbol() == "CADJPY_ecn"))
           {
           }

         if((Symbol() == "CHFJPY") || (Symbol() == "CHFJPYmicro") || (Symbol() == "CHFJPY_ecn"))
           {
           }

         if((Symbol() == "EURAUD") || (Symbol() == "EURAUDmicro") || (Symbol() == "EURAUD_ecn"))
           {
           }

         if((Symbol() == "EURCAD") || (Symbol() == "EURCADmicro") || (Symbol() == "EURCAD_ecn"))
           {
           }

         if((Symbol() == "EURCHF") || (Symbol() == "EURCHFmicro") || (Symbol() == "EURCHF_ecn"))
           {
           }

         if((Symbol() == "EURGBP") || (Symbol() == "EURGBPmicro") || (Symbol() == "EURGBP_ecn"))
           {
           }

         if((Symbol() == "EURJPY") || (Symbol() == "EURJPYmicro") || (Symbol() == "EURJPY_ecn"))
           {
           }

         if((Symbol() == "EURNZD") || (Symbol() == "EURNZDmicro") || (Symbol() == "EURNZD_ecn"))
           {
           }

         if((Symbol() == "EURUSD") || (Symbol() == "EURUSDmicro") || (Symbol() == "EURUSD_ecn"))
           {
           }

         if((Symbol() == "GBPAUD") || (Symbol() == "GBPAUDmicro") || (Symbol() == "GBPAUD_ecn"))
           {
           }

         if((Symbol() == "GBPCAD") || (Symbol() == "GBPCADmicro") || (Symbol() == "GBPCAD_ecn"))
           {
           }

         if((Symbol() == "GBPCHF") || (Symbol() == "GBPCHFmicro") || (Symbol() == "GBPCHF_ecn"))
           {
           }

         if((Symbol() == "GBPJPY") || (Symbol() == "GBPJPYmicro") || (Symbol() == "GBPJPY_ecn"))
           {
           }

         if((Symbol() == "GBPNZD") || (Symbol() == "GBPNZDmicro") || (Symbol() == "GBPNZD_ecn"))
           {
           }

         if((Symbol() == "GBPUSD") || (Symbol() == "GBPUSDmicro") || (Symbol() == "GBPUSD_ecn"))
           {
           }

         if((Symbol() == "NZDCAD") || (Symbol() == "NZDCADmicro") || (Symbol() == "NZDCAD_ecn"))
           {
           }

         if((Symbol() == "NZDCHF") || (Symbol() == "NZDCHFmicro") || (Symbol() == "NZDCHF_ecn"))
           {
           }

         if((Symbol() == "NZDJPY") || (Symbol() == "NZDJPYmicro") || (Symbol() == "NZDJPY_ecn"))
           {
           }

         if((Symbol() == "NZDUSD") || (Symbol() == "NZDUSDmicro") || (Symbol() == "NZDUSD_ecn"))
           {
           }

         if((Symbol() == "USDCAD") || (Symbol() == "USDCADmicro") || (Symbol() == "USDCAD_ecn"))
           {
           }

         if((Symbol() == "USDCHF") || (Symbol() == "USDCHFmicro") || (Symbol() == "USDCHF_ecn"))
           {
           }

         if((Symbol() == "USDJPY") || (Symbol() == "USDJPYmicro") || (Symbol() == "USDJPY_ecn"))
           {
           }
        }
     }
  };
//+------------------------------------------------------------------+
