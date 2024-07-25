-------------------------------------------------------------------------------
-- Projeto: Sistema de Monitoramento de Combustível de Aeronaves
-- Arquivo: main.adb
--
-- Descrição:
-- Este arquivo contém o ponto de entrada principal para o sistema de monitoramento
-- de combustível, incluindo a inicialização da interface gráfica e dos módulos
-- de monitoramento.
--
-- Autor: Enzo Marx
-- Data de Criação: 20/07/2024
-- Última Modificação: -
--
-- Licença:
-- Este projeto é licenciado sob a Licença MIT. Veja o arquivo LICENSE para mais
-- detalhes.
-------------------------------------------------------------------------------

with Gtk.Main;
with Gui;        -- Interface gráfica
with Fuel_Monitor; -- Lógica de monitoramento de combustível

procedure Main is
begin
   Gtk.Main.Init;
   Gui.Initialize_GUI;
   Gtk.Main.Main;
end Main;
