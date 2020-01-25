//+------------------------------------------------------------------+
//|                                                               EA |
//|                                     Copyright 2020, DA Solutions |
//|                                      https://www.dasolutions.org |
//+------------------------------------------------------------------+
#include "Classes/Settings.mqh"
#include "Classes/MoneyManagement.mqh"

#include "Classes/IndicatorWrappers/MovingAverage.mqh"

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
class Entry
  {
private:
   Settings*                     SettingsInstance;
   MoneyManagement*              MoneyManagementInstance;

   MovingAverage*                MovingAverageInstance;

   int                           _lastSignal;
   int                           _currentSignal;

public:
   void              Entry()
     {
      SettingsInstance = new Settings();
      MoneyManagementInstance = new MoneyManagement();

      MovingAverageInstance = new MovingAverage(
         SettingsInstance._IndicatorsTimeframe,
         SettingsInstance._IndicatorsOffset,
         SettingsInstance._Baseline_Period,
         SettingsInstance._Baseline_Levels
      );
     }

   void             ~Entry()
     {
      delete(SettingsInstance);
      delete(MoneyManagementInstance);

      delete(MovingAverageInstance);
     }

   void               Tick()
     {
      this._currentSignal = this.GetSignal();

      if(this._currentSignal != this._lastSignal)
        {
         if(this._currentSignal != 0)
           {
            this.MoneyManagementInstance.CloseAll();
           }

         if(this._currentSignal == _BUY)
           {
            this.MoneyManagementInstance.Buy();
           }

         if(this._currentSignal == _SELL)
           {
            this.MoneyManagementInstance.Sell();
           }
        }

      this._lastSignal = this._currentSignal;
     }

   int               GetSignal()
     {
      if(MovingAverageInstance.GetState() == _BUY)
        {
         return _BUY;
        }

      if(MovingAverageInstance.GetState() == _SELL)
        {
         return _SELL;
        }

      return 0;
     }
  };
//+------------------------------------------------------------------+
