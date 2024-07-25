-------------------------------------------------------------------------------
-- Projeto: Sistema de Monitoramento de Combustível de Aeronaves
-- Arquivo: fuel_monitor.adb
--
-- Descrição:
-- Implementação do pacote que contém a lógica de monitoramento de combustível,
-- incluindo verificação de níveis de combustível e detecção de consumo anormal.
--
-- Autor: Enzo Marx
-- Data de Criação: 20/07/2024
-- Última Modificação: -
--
-- Licença:
-- Este projeto é licenciado sob a Licença MIT. Veja o arquivo LICENSE para mais
-- detalhes.
-------------------------------------------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;
with Gui; -- Interface gráfica para exibir alertas e níveis

package body Fuel_Monitor is

   procedure Initialize is
   begin
      Gui.Set_Fuel_Level(Current_Fuel_Level);
      Gui.Set_Alert_Message("Sistema de monitoramento inicializado.");
   end Initialize;

   procedure Check_Fuel_Level (Level : in Fuel_Level_Type) is
   begin
      if Level in Critical_Fuel_Level_Type then
         Gui.Set_Alert_Message("Alerta: Nível de combustível crítico!");
      else
         Gui.Set_Alert_Message("Nível de combustível seguro.");
      end if;
   end Check_Fuel_Level;

   procedure Check_Consumption_Rate (Rate : in Fuel_Level_Type) is
   begin
      if Rate > Abnormal_Consumption_Threshold then
         Gui.Set_Alert_Message("Alerta: Consumo de combustível anormalmente alto!");
      else
         Gui.Set_Alert_Message("Consumo de combustível dentro do esperado.");
      end if;
   end Check_Consumption_Rate;

   procedure Update_Fuel_Level is
   begin
      Current_Fuel_Level := Current_Fuel_Level - Fuel_Consumption_Rate;
      Gui.Set_Fuel_Level(Current_Fuel_Level);
      Check_Fuel_Level(Current_Fuel_Level);
      Check_Consumption_Rate(Fuel_Consumption_Rate);
   end Update_Fuel_Level;

end Fuel_Monitor;
