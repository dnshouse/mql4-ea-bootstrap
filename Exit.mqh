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
class Exit
  {
private:
   Settings*                     SettingsInstance;
   MoneyManagement*              MoneyManagementInstance;

   MovingAverage*                MovingAverageInstance;

   int                           _lastSignal;
   int                           _currentSignal;

public:
   void              Exit()
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

   void             ~Exit()
     {
      delete(SettingsInstance);
      delete(MoneyManagementInstance);

      delete(MovingAverageInstance);
     }

   void              Tick()
     {
      if(MovingAverageInstance.GetState(1) != MovingAverageInstance.GetState(2))
         this.MoneyManagementInstance.CloseAll();
     }
  };
//+------------------------------------------------------------------+
