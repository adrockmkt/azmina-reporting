# 07 TIMELINE
## Objetivo
Este arquivo registra marcos estruturais e permanentes do projeto AzMina Reporting.
Ele não é cronologia de desempenho mensal.
Ele não registra cliques, sessões, campanhas, páginas ou rankings de uma competência.
Ele não substitui knowledge/11_CHANGELOG.md.
Ele não substitui history/.
Ele não substitui manifest.json.
Sua função é mostrar como a arquitetura, o escopo, as fontes, os entregáveis e as responsabilidades evoluíram ao longo do tempo.
A timeline deve ajudar agentes humanos e de IA a entender quando uma regra surgiu, quando uma fonte passou a existir, quando uma metodologia mudou e quando uma decisão começou a orientar competências futuras.
Ela deve ser sintética.
Ela deve registrar apenas fatos confirmados.
Ela deve preservar contexto estrutural.
Ela deve evitar detalhes operacionais excessivos.
## O que Deve Entrar na Timeline
Deve entrar a criação do projeto.
Deve entrar mudança de arquitetura.
Deve entrar inclusão de nova fonte.
Deve entrar alteração de escopo.
Deve entrar mudança de metodologia.
Deve entrar mudança de domínio.
Deve entrar alteração de entregáveis.
Deve entrar mudança de responsabilidades.
Deve entrar criação de nova integração.
Deve entrar alteração de política de versionamento.
Deve entrar mudança de eventos permanentes.
Deve entrar adoção de nova ferramenta.
Deve entrar revisão importante do framework.
Deve entrar mudança de governança de history ou knowledge.
Deve entrar decisão que afete competências futuras.
Deve entrar marco que explique por que o projeto opera de determinada forma.
Um marco deve alterar a forma como o projeto funciona, interpreta, registra ou entrega.
## O que Não Deve Entrar
Não registrar cliques mensais.
Não registrar sessões mensais.
Não registrar campanha do mês.
Não registrar página do mês.
Não registrar recomendação pontual.
Não registrar queda isolada.
Não registrar crescimento isolado.
Não registrar hipótese transitória.
Não registrar ranking mensal.
Não registrar CTR de uma competência.
Não registrar CPA de uma competência.
Não registrar oportunidade isolada.
Não registrar anomalia sem decisão estrutural.
Não registrar arquivo bruto recebido em source/.
Não registrar detalhes que pertencem ao manifest.
Não registrar fatos que só fazem sentido dentro de uma competência.
Resultado mensal pertence a history/.
Indicador comparável pertence a history/indicadores_historicos.csv.
Aprendizado candidato pertence a history/ até promoção.
## Linha do Tempo Estrutural
### Estruturação inicial
- definicao do AzMina Reporting como framework mensal de analise;
- definicao de `reports/AAAA-MM/` como unidade operacional;
- separacao entre `source/`, `analysis/`, `output/` e `manifest.json`;
- definicao das quatro fontes obrigatorias;
- separacao entre prompts, knowledge, history e reports;
- definicao do Prompt 01 como controlador de execucao;
- formalizacao da revisao humana antes do encerramento;
- definicao de que PDFs de entrada, DOCX finais e PDFs finais permanecem locais;
- definicao de history como memoria operacional aprovada;
- definicao de knowledge como memoria permanente.
Este marco explica a arquitetura vigente.
Detalhes de construcao do framework pertencem a `knowledge/11_CHANGELOG.md`.
Nao adicionar metricas a esta entrada.
Nao transformar este marco em historico de desenvolvimento.
## Eventos Futuros que Devem Ser Registrados
Primeiro teste real do pipeline.
Primeira competência concluída.
Inclusão operacional de history/monthly/.
Criação de scripts.
Integração com APIs.
Automação de manifest.
Mudança de ferramenta.
Nova fonte obrigatória.
Alteração permanente do escopo.
Mudança de domínio principal.
Mudança de responsabilidade entre Codex, ChatGPT, Ad Rock ou AzMina.
Nova política de versionamento.
Novo entregável recorrente.
Alteração permanente de eventos de mensuração.
Revisão estrutural dos prompts.
Reorganização de knowledge/.
Não preencher datas futuras.
Quando o evento ocorrer, registrar período, mudança, motivo e impacto.
## Critérios para Registrar um Marco
Um evento deve entrar quando muda o funcionamento.
Deve entrar quando muda responsabilidade.
Deve entrar quando muda estrutura.
Deve entrar quando muda escopo.
Deve entrar quando muda metodologia.
Deve entrar quando muda fonte.
Deve entrar quando muda entrega.
Deve entrar quando afeta competências futuras.
Deve entrar quando altera a forma de validar dados.
Deve entrar quando altera a forma de atualizar history.
Deve entrar quando altera a forma de promover knowledge.
Deve entrar quando altera a política de arquivos.
Deve entrar quando cria dependência nova.
Deve entrar quando remove processo antes obrigatório.
Deve entrar quando uma decisão revertida precisa ser compreendida.
Um evento não deve entrar apenas por ser recente.
Um evento deve ter efeito duradouro.
## Relação com Changelog
Timeline registra marcos de alto nível.
Changelog registra alterações detalhadas.
Os dois não devem duplicar todas as entradas.
Timeline é narrativa estrutural.
Changelog é registro operacional.
Timeline explica a evolução do sistema.
Changelog explica o que mudou nos arquivos.
Timeline deve ser mais seletiva.
Changelog pode ser mais granular.
Uma alteração pequena em documento pode entrar no changelog sem entrar na timeline.
Uma alteração que muda o funcionamento do projeto deve entrar nos dois, com níveis diferentes de detalhe.
Timeline deve evitar mensagens de commit.
Changelog pode registrar escopo, arquivos alterados e motivo operacional.
## Relação com History
Timeline registra evolução do sistema.
History registra desempenho aprovado.
Um resultado mensal não vira marco estrutural.
Uma mudança permanente originada por resultados pode virar marco após aprovação.
Exemplo conceitual: uma queda mensal de tráfego pertence a history/.
Exemplo conceitual: uma nova regra permanente de validação criada por recorrência pode entrar na timeline.
History responde o que aconteceu na competência.
Timeline responde como o framework evoluiu.
History pode gerar aprendizados candidatos.
Timeline só registra quando o aprendizado vira mudança estrutural.
Não usar timeline para resumir meses.
Não usar history para substituir registro de mudança arquitetural.
## Relação com Knowledge
Timeline ajuda a saber quando uma regra surgiu.
Ajuda a saber quando uma fonte entrou.
Ajuda a saber quando uma metodologia mudou.
Ajuda a saber quando uma decisão passou a valer.
Knowledge guarda o conteúdo permanente da regra.
Timeline guarda o marco de surgimento ou mudança.
Se uma decisão arquitetural for detalhada, o conteúdo deve ficar em knowledge/08_DECISOES_ARQUITETURAIS.md.
Se uma boa prática for detalhada, o conteúdo deve ficar em knowledge/09_BOAS_PRATICAS.md.
Se uma lição reutilizável for detalhada, o conteúdo deve ficar em knowledge/10_LICOES_APRENDIDAS.md.
Se uma alteração de arquivo for detalhada, o conteúdo deve ficar em knowledge/11_CHANGELOG.md.
Timeline deve apontar o contexto, não repetir toda a regra.
## Formato das Entradas
Cada marco deve conter período.
Cada marco deve conter mudança.
Cada marco deve conter motivo.
Cada marco deve conter impacto.
Cada marco pode conter arquivos ou áreas afetadas quando relevante.
Não usar tabela.
Não usar data futura.
Não usar métrica de desempenho.
Não usar nomes de PDFs.
Não usar caminho absoluto.
Não usar detalhe pessoal desnecessário.
O formato recomendado é:
### Período
- mudança realizada;
- motivo estrutural;
- impacto no framework;
- áreas afetadas quando relevante.
O período pode ser mês e ano quando o detalhe diário não for necessário.
O período pode ser mais específico se a mudança exigir rastreabilidade.
## Governança da Timeline
Registrar somente fatos aprovados.
Não tratar previsões como fato.
Não reescrever datas antigas sem justificativa.
Correções devem ser registradas quando alterarem compreensão histórica.
Eventos obsoletos não devem ser apagados se forem relevantes para compreender a evolução.
Decisões revertidas devem manter registro da reversão.
A timeline deve preservar continuidade.
Ela não deve apagar a história do projeto para parecer linear.
Quando uma regra antiga deixar de valer, registrar a mudança e apontar que houve substituição.
Quando uma ferramenta for substituída, registrar o período da substituição.
Quando uma metodologia mudar, registrar o motivo e o impacto.
Quando houver dúvida, preferir não registrar até haver aprovação.
## Atualização deste Arquivo
Atualizar somente quando houver marco estrutural.
Atualizar após decisão aprovada.
Atualizar quando o marco afetar competências futuras.
Atualizar quando o evento ajudar a compreender a arquitetura atual.
Não atualizar por desempenho mensal.
Não atualizar por observação transitória.
Não atualizar por hipótese ainda em acompanhamento.
Não atualizar por detalhe operacional sem impacto permanente.
Não atualizar por simples criação de arquivo sem mudança de responsabilidade ou arquitetura.
Revisar este arquivo quando houver reorganização de knowledge/.
Revisar este arquivo quando houver mudança na política de versionamento.
Revisar este arquivo quando houver mudança no fluxo do pipeline.
## Regras de Ouro
- timeline registra marcos estruturais;
- history registra desempenho aprovado;
- changelog registra alterações operacionais;
- knowledge registra conhecimento permanente;
- resultado mensal não é marco estrutural;
- hipótese transitória não entra na timeline;
- data futura não deve ser preenchida;
- previsão não é fato;
- cada marco precisa ter impacto duradouro;
- cada marco deve ajudar a entender o framework;
- decisões revertidas devem permanecer rastreáveis;
- eventos obsoletos podem continuar quando explicam evolução;
- correções históricas exigem justificativa;
- não usar tabela;
- não registrar PDFs recebidos;
- não registrar métricas de competência;
- não duplicar changelog;
- não substituir decisões arquiteturais detalhadas;
- manter apenas marcos estruturais permanentes;
- preservar linguagem objetiva e permanente.
