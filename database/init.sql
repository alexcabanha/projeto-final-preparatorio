CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE
);

CREATE TABLE tickets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    descricao TEXT NOT NULL,
    status VARCHAR(50) NOT NULL,
    prioridade VARCHAR(20) NOT NULL,
    usuario_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

INSERT INTO usuarios (nome, email) VALUES
('Fulano da Silva', 'fulano@empresa.com'),
('Siclano do Senac', 'siclano@empresa.com'),
('Beltrano do Docker', 'beltrano@empresa.com');

INSERT INTO tickets (titulo, descricao, status, prioridade, usuario_id) VALUES
('Erro no Backup', 'Veeam reporta erro.', 'Aberto', 'Alta', 1),
('Lentidao no Servidor de Arquivos', 'Reclamacao ao abrir arquivos.', 'Em andamento', 'Media', 2),
('Impressora', 'Impressora nao imprime.', 'Fechado', 'Baixa', 3);