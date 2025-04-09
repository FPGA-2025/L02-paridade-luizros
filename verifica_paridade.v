module verifica_paridade (
  input [8:0] dado, // a paridade é o bit mais significativo (dado[8])
  output erro
);

  // Calcula a paridade dos 8 bits de dados e compara com o bit de paridade
  assign erro = dado[8] ^ (dado[0] ^ dado[1] ^ dado[2] ^ dado[3] ^ 
                           dado[4] ^ dado[5] ^ dado[6] ^ dado[7]);

endmodule
