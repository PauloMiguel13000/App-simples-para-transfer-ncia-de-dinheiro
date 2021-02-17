#principal.rb
require "./classes/conta_bancaria"
require "./classes/conta_com_taxa"
conta_miguel = ContaComTaxa.new("miguel", 100)

conta_pessoa2 = ContaBancaria.new("pessoa2", 200)

conta_miguel.transferir(conta_pessoa2, 50)

p "[conta do Miguel]"
p conta_miguel.saldo # 48 (2 reais de taxa)
p "="*20
p "[conta pessoa 2]"

p conta_pessoa2.saldo # 250

# caso de teste de conta em saldo
begin
conta_miguel.transferir(conta_pessoa2, 60) # falhar
rescue StandardError => meu_erro
    p "não foi possivel transferir: #{meu_erro.message}"
end

p "conta Miguel"
p conta_miguel.saldo
p "conta pessoa 2"
p conta_pessoa2.saldo


p conta_miguel.saldo  #50

    
