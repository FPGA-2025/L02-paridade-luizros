module injetor(
  input [8:0] entrada,   // Palavra de 9 bits (8 bits de dados + 1 de paridade)
  input [3:0] n,         // Indica o bit onde injetar o erro (0 a 8)
  input erro,            // Sinal para ativar ou desativar a injeção de erro
  output reg [8:0] saida // Palavra de saída com ou sem erro
);

  always @(*) begin
    if (erro) begin
      // Injeta o erro no bit indicado por 'n' usando XOR
      saida = entrada ^ (1 << n);
    end else begin
      // Sem erro, a saída é igual à entrada
      saida = entrada;
    end
  end

endmodule
