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

  --Configurações comida
  comida = {}
  comida.raio = 25
  comida.x = love.math.random(comida.raio, larguraTela-comida.raio)
  comida.y = love.math.random(comida.raio, alturaTela)
  
end
function love.update(dt)

  --Configurando a movimentação do jogador
  if love.keyboard.isDown("w") then
    jogador.y = jogador.y - jogador.velocidade * dt
  end
  if love.keyboard.isDown("s") then
    jogador.y = jogador.y + jogador.velocidade * dt
  end
  if love.keyboard.isDown("d") then
    jogador.x = jogador.x + jogador.velocidade * dt
  end
  if love.keyboard.isDown("a") then
    jogador.x = jogador.x - jogador.velocidade * dt
  end

  --Programação da comida
  local distancia = ((jogador.x - comida.x)^2 + (jogador.y - comida.y)^2)^0.5
  if distancia <= jogador.raio + comida.raio then
    comida.x = love.math.random(comida.raio, larguraTela-comida.raio)
    comida.y = love.math.random(comida.raio, alturaTela)
  end
  
end
function love.draw()

  --Criando o jogador 
  love.graphics.setColor(0, 0, 250)
  love.graphics.circle("fill", jogador.x, jogador.y, jogador.raio)

  --Criando a comida
  love.graphics.setColor(250, 0, 0)
  love.graphics.circle("fill", comida.x, comida.y, comida.raio)
end