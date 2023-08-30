#  🏨 OwlsPedagem
Exercício Prático proposto na disciplina de Banco de Dados, ministrada pela Prof. Dr. Sarajane, na Universidade de São Paulo (USP).


## ✏️ Descrição do projeto

O Sistema de Gestão de Hotelaria (SGH) é projetado para administrar uma rede hoteleira abrangente no Brasil. Esta rede possui um escritório central e vários hotéis localizados em diferentes regiões do país. Esses hotéis abrangem várias categorias, como hotéis tradicionais, pousadas, apart-hotéis, condomínios de hotéis e resorts. Além disso, os hotéis são segmentados por diferentes perfis de hóspedes, como viajantes a trabalho, famílias, adultos e aqueles que viajam com animais de estimação.


## 📌 Requisitos do sistema

🚩 *Escritório Central*

No escritório central, um módulo do SGH gerencia as operações tradicionais da empresa, incluindo:

_Gerenciamento de Patrimônio:_ Cadastro de informações detalhadas sobre cada unidade hoteleira, como registro imobiliário, nome fantasia, tamanho e categoria.

_Contabilidade Geral:_ Gerenciamento das finanças da rede hoteleira, incluindo registro de transações, emissão de notas fiscais para clientes e pagamentos a governos, associações, serviços de terceiros e fornecedores.

_Recursos Humanos:_ Armazenamento e gerenciamento de dados dos funcionários, incluindo detalhes de contrato, salário, benefícios e informações pessoais.

🚩 *Condomínios e Unidades*

Algumas unidades da rede possuem condomínios nos quais podem ser instalados varejistas, empresas de turismo, restaurantes, bares e teatros. O gerenciamento de aluguéis e tipos de condôminos é centralizado no escritório geral.

🚩 *Reservas e Ocupação*

O SGH oferece um módulo de gerenciamento de reservas, com os seguintes recursos:

_Autonomia de Unidades:_ Cada unidade da rede pode gerenciar suas próprias reservas, sem interferência em outras unidades.

_Informações de Acomodação:_ Dados detalhados sobre tipos de acomodação, amenidades, preços, políticas de uso e capacidade máxima.

_Status de Unidades:_ Monitoramento do status de ocupação das unidades (ocupado, livre, reservado, fora de operação) em um calendário de até um ano à frente.

_Integração com Terceiros:_ Integração com sistemas de reserva online, como o Booking.com.

🚩 *Automatização e Manutenção*

_Automatização de Acomodações:_ Acomodações equipadas com sensores para identificar itens faltantes, alimentando automaticamente o módulo de consumo.

_Manutenção Rotineira:_ Gerenciamento de manutenção para várias instalações, como acomodações, piscinas, academias e salas de eventos.
Estacionamento e Autosserviço

_Sistema de Estacionamento:_ Reservas de vagas, controle de entrada/saída de veículos restrito a hóspedes, com cobrança diária relacionada à reserva.


🚩 *Relacionamento com Clientes (CRM)*

_Programa de Fidelidade:_ Armazenamento de histórico do cliente em toda a rede para bonificação periódica em forma de pontos.

_Chatbot:_ Sistema terceirizado para solicitações de clientes, atreladas ao cliente ou a um pool de requisições geral.


🚩 *Espaços para Eventos e Alimentação*

_Gestão de Espaços para Eventos:_ Capacidade, infraestrutura e tipos de uso dos espaços para eventos em cada unidade, gerenciados por módulos locais.

_Café da Manhã e Serviço de Quarto:_ Gerenciamento da cozinha, estoque de alimentos e integração com o módulo de checkout.


# Tecnologias utilizadas

*Backend:* O sistema foi desenvolvido principalmente usando a linguagem de programação PHP devido à sua robustez e capacidade de lidar com sistemas complexos.

*Banco de Dados:* O banco de dados relacional PostgreSQL foi escolhido para armazenar os dados do sistema de forma organizada e confiável.

*Front-End:* Para a criação das interfaces de usuário, foram utilizadas tecnologias como HTML5, CSS3 e JavaScript, proporcionando uma experiência moderna e responsiva.

*Controle de Versão:* A equipe de desenvolvimento utilizou o Git como sistema de controle de versão, permitindo colaboração eficiente e rastreamento de mudanças.
