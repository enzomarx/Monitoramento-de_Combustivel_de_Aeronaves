-------------------------------------------------------------------------------
-- Projeto: Sistema de Monitoramento de Combustível de Aeronaves
-- Arquivo: fuel_monitor.ads
--
-- Descrição:
-- Especificação do pacote que contém a lógica de monitoramento de combustível,
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

package Fuel_Monitor is

   type Fuel_Level_Type is range 0 .. 100;
   subtype Critical_Fuel_Level_Type is Fuel_Level_Type range 0 .. 10;
   subtype Normal_Consumption_Rate_Type is Fuel_Level_Type range 2 .. 7;

   procedure Initialize;
   procedure Check_Fuel_Level (Level : in Fuel_Level_Type);
   procedure Check_Consumption_Rate (Rate : in Fuel_Level_Type);
   procedure Update_Fuel_Level;

private
   Current_Fuel_Level : Fuel_Level_Type := 100;
   Max_Fuel_Capacity : constant Fuel_Level_Type := 100;
   Fuel_Consumption_Rate : Normal_Consumption_Rate_Type := 5;
   Abnormal_Consumption_Threshold : constant Fuel_Level_Type := 8;

end Fuel_Monitor;
