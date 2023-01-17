function love.load()

  --Configurações da tela
  larguraTela = 800
  alturaTela = 600
  love.window.setMode(larguraTela, alturaTela)

  --Configurações jogador
  jogador = {}
  jogador.x = 100
  jogador.y = 100
  jogador.raio = 25
  jogador.velocidade = 100
  
end
function love.update(dt)

  --Configurando a movimentação do jogador
  if love.keyboard.isDown("w") then
    jogador.y = jogador.y - jogador.velocidade * dt
  elseif love.keyboard.isDown("s") then
    jogador.y = jogador.y + jogador.velocidade * dt
  elseif love.keyboard.isDown("d") then
    jogador.x = jogador.x + jogador.velocidade * dt
  elseif love.keyboard.isDown("a") then
    jogador.x = jogador.x - jogador.velocidade * dt
  end
  
end
function love.draw()

  --Criando o jogador 
  love.graphics.circle("fill", jogador.x, jogador.y, jogador.raio)
  
end