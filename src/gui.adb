-------------------------------------------------------------------------------
-- Projeto: Sistema de Monitoramento de Combustível de Aeronaves
-- Arquivo: gui.adb
--
-- Descrição:
-- Implementação do pacote que gerencia a interface gráfica, incluindo a exibição
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

with Gtk.Main, Gtk.Window, Gtk.Box, Gtk.Label;
with Ada.Text_IO; use Ada.Text_IO;

package body Gui is

   procedure Initialize_GUI is
      Window : Gtk_Window;
      Box : Gtk_Box;
   begin
      Gtk_New(Window);
      Window.Set_Title("Sistema de Monitoramento de Combustível");
      Window.Set_Default_Size(300, 200);

      Gtk_New(Box, Vertical);
      Box.Set_Spacing(10);

      Gtk_New(Fuel_Level_Label);
      Fuel_Level_Label.Set_Text("Nível de Combustível: 100%");
      Box.Pack_Start(Fuel_Level_Label, False, False, 10);

      Gtk_New(Alert_Label);
      Alert_Label.Set_Text("Nível de combustível seguro.");
      Box.Pack_Start(Alert_Label, False, False, 10);

      Window.Add(Box);
      Window.Show_All;
   end Initialize_GUI;

   procedure Set_Fuel_Level (Level : Integer) is
   begin
      Fuel_Level_Label.Set_Text("Nível de Combustível: " & Integer'Image(Level) & "%");
   end Set_Fuel_Level;

   procedure Set_Alert_Message (Message : String) is
   begin
      Alert_Label.Set_Text(Message);
   end Set_Alert_Message;

end Gui;
