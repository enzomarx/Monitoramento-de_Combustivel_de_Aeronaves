-------------------------------------------------------------------------------
-- Projeto: Sistema de Monitoramento de Combustível de Aeronaves
-- Arquivo: gui.ads
--
-- Descrição:
-- Especificação do pacote que gerencia a interface gráfica, incluindo a exibição
-- de níveis de combustível e mensagens de alerta.
--
-- Autor: Enzo Marx
-- Data de Criação: 20/07/2024
-- Última Modificação: -
--
-- Licença:
-- Este projeto é licenciado sob a Licença MIT. Veja o arquivo LICENSE para mais
-- detalhes.
-------------------------------------------------------------------------------

with Gtk.Label;

package Gui is

   procedure Initialize_GUI;
   procedure Set_Fuel_Level (Level : Integer);
   procedure Set_Alert_Message (Message : String);

private
   Fuel_Level_Label : Gtk_Label;
   Alert_Label : Gtk_Label;

end Gui;
