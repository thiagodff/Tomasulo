module RSadders(instruction, Clock, Adderin, Busy);
  output reg [7:0] Busy; //1 quando a estacao de reserva e a unidade estiverem ocupadas
  reg [7:0] Name [4:0]; //guarda um apelido para a instrucao
  reg [7:0] Qj, Qk; //operando fonte, 0= j� dispon�vel
  reg [7:0] Vj, Vk; //valores do operando fonte
  input [15:0] instruction; //recebe a instrucao
  reg [7:0] OP [3:0]; //operacao em si
  input Clock, Adderin; //clock e controle de entrada de uma nova instrucao
  
  always @ (posedge Clock)
  begin
  
    if(Adderin == 1'b1)
    begin
      if(Busy[3'b000]==0) // Linha 0
      begin
        Busy[3'b000]<=1;
        
      end
      else
        if(Busy[3'b001]==0) // Linha 1
        begin
          Busy[3'b001]<=1;
          
        end
        else
          if(Busy[3'b010]==0) // Linha 2
          begin
            Busy[3'b010]<=1;
            
          end
          else
            if(Busy[3'b011]==0) // Linha 3
            begin
              Busy[3'b011]<=1;
              
            end
            else
              if(Busy[3'b100]==0) // Linha 4
              begin
                Busy[3'b100]<=1;
                
              end
              else
                if(Busy[3'b101]==0) // Linha 5
                begin
                  Busy[3'b101]<=1;
                  
                end
                  else
                    if(Busy[3'b110]==0) // Linha 6
                    begin
                      Busy[3'b110]<=1;
                      
                    end
                    else
                      if(Busy[3'b111]==0) // Linha 7
                      begin
                        Busy[3'b111]<=1;
                        
                      end
    end
  end
  
endmodule