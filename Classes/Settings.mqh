//+------------------------------------------------------------------+
//|                                                          Parazit |
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
         if((Symbol() == "AUDCAD") || (Symbol() == "AUDCADmicro"))
           {
            // example preffered settings
            this._StopLoss = 200;
            this._TargetProfit = 1000;

            this._ATR_Enabled = false;

            this._Baseline_Period = 9;
            this._Baseline_Levels = 0.005;
           }

         if((Symbol() == "AUDCHF") || (Symbol() == "AUDCHFmicro"))
           {
           }

         if((Symbol() == "AUDJPY") || (Symbol() == "AUDJPYmicro"))
           {
           }

         if((Symbol() == "AUDNZD") || (Symbol() == "AUDNZDmicro"))
           {
           }

         if((Symbol() == "AUDUSD") || (Symbol() == "AUDUSDmicro"))
           {
           }

         if((Symbol() == "CADCHF") || (Symbol() == "CADCHFmicro"))
           {
           }

         if((Symbol() == "CADJPY") || (Symbol() == "CADJPYmicro"))
           {
           }

         if((Symbol() == "CHFJPY") || (Symbol() == "CHFJPYmicro"))
           {
           }

         if((Symbol() == "EURAUD") || (Symbol() == "EURAUDmicro"))
           {
           }

         if((Symbol() == "EURCAD") || (Symbol() == "EURCADmicro"))
           {
           }

         if((Symbol() == "EURCHF") || (Symbol() == "EURCHFmicro"))
           {
           }

         if((Symbol() == "EURGBP") || (Symbol() == "EURGBPmicro"))
           {
           }

         if((Symbol() == "EURJPY") || (Symbol() == "EURJPYmicro"))
           {
           }

         if((Symbol() == "EURNZD") || (Symbol() == "EURNZDmicro"))
           {
           }

         if((Symbol() == "EURUSD") || (Symbol() == "EURUSDmicro"))
           {
           }

         if((Symbol() == "GBPAUD") || (Symbol() == "GBPAUDmicro"))
           {
           }

         if((Symbol() == "GBPCAD") || (Symbol() == "GBPCADmicro"))
           {
           }

         if((Symbol() == "GBPCHF") || (Symbol() == "GBPCHFmicro"))
           {
           }

         if((Symbol() == "GBPJPY") || (Symbol() == "GBPJPYmicro"))
           {
           }

         if((Symbol() == "GBPNZD") || (Symbol() == "GBPNZDmicro"))
           {
           }

         if((Symbol() == "GBPUSD") || (Symbol() == "GBPUSDmicro"))
           {
           }

         if((Symbol() == "NZDCAD") || (Symbol() == "NZDCADmicro"))
           {
           }

         if((Symbol() == "NZDCHF") || (Symbol() == "NZDCHFmicro"))
           {
           }

         if((Symbol() == "NZDJPY") || (Symbol() == "NZDJPYmicro"))
           {
           }

         if((Symbol() == "NZDUSD") || (Symbol() == "NZDUSDmicro"))
           {
           }

         if((Symbol() == "USDCAD") || (Symbol() == "USDCADmicro"))
           {
           }

         if((Symbol() == "USDCHF") || (Symbol() == "USDCHFmicro"))
           {
           }

         if((Symbol() == "USDJPY") || (Symbol() == "USDJPYmicro"))
           {
           }
        }
     }
  };
//+------------------------------------------------------------------+
