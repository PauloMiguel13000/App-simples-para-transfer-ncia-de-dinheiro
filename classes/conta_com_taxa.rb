#conta_com_taxa
class ContaComTaxa < ContaBancaria 
TAXA = 2

    def transferir(outra_conta, valor)
        super
  
        debitar(TAXA)   
     
    
end
end