-------------------------------------------------------------------------------
-- Projeto: Sistema de Monitoramento de Combustível de Aeronaves
-- Arquivo: utils.adb
--
-- Descrição:
-- Implementação de funções utilitárias e auxiliares para o projeto.
--
-- Autor: Enzo Marx
-- Data de Criação: 20/07/2024
-- Última Modificação: -
--
-- Licença:
-- Este projeto é licenciado sob a Licença MIT. Veja o arquivo LICENSE para mais
-- detalhes.
-------------------------------------------------------------------------------

package body Utils is

   -- Função de exemplo: calcular média móvel
   function Moving_Average(Data : array of Integer) return Float is
      Sum : Float := 0.0;
   begin
      for I in Data'Range loop
         Sum := Sum + Float(Data(I));
      end loop;
      return Sum / Float(Data'Length);
   end Moving_Average;

end Utils;
