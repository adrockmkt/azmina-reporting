# Evolucao Mensal

## Objetivo do Arquivo

Este arquivo registra sinteses longitudinais aprovadas sobre a evolucao do projeto AzMina Reporting.

Ele deve consolidar apenas conhecimento historico validado apos revisao humana.

Ele nao substitui os relatorios mensais.

Ele nao substitui `history/indicadores_historicos.csv`.

Ele nao substitui `history/monthly/AAAA-MM.md`.

Ele nao deve registrar resultados provisorios.

## Como Registrar Evolucao

Cada registro deve partir de analises aprovadas.

Cada registro deve considerar a competencia atual em relacao ao historico disponivel.

Cada registro deve separar fatos, hipoteses, recomendacoes e aprendizados promovidos.

Cada registro deve ser sintetico.

Cada registro deve preservar apenas informacoes uteis para comparacoes futuras.

Cada registro deve evitar excesso de detalhe operacional.

Cada registro deve evitar transcricao de dashboards.

## Formato Recomendado para Cada Competencia

### AAAA-MM

#### Fatos

- registrar somente fatos confirmados e aprovados;
- registrar movimentos relevantes das fontes analisadas;
- registrar mudancas consolidadas em relacao ao periodo anterior;
- registrar limitacoes relevantes dos dados quando afetarem a leitura historica.

#### Hipoteses

- registrar hipoteses aprovadas para acompanhamento;
- indicar quando a evidencia ainda for parcial;
- evitar transformar hipotese em conclusao;
- remover ou atualizar hipoteses quando forem confirmadas, rejeitadas ou perderem relevancia.

#### Recomendacoes

- registrar recomendacoes aprovadas com valor longitudinal;
- evitar recomendacoes pontuais que nao afetem acompanhamento futuro;
- registrar pendencias relevantes quando dependerem de decisao humana;
- indicar quando uma recomendacao foi incorporada ao processo recorrente.

#### Aprendizados Promovidos

- registrar apenas aprendizados que sairam de history e foram promovidos a knowledge;
- indicar o arquivo de knowledge afetado quando aplicavel;
- evitar duplicar o conteudo completo do knowledge;
- preservar o motivo da promocao.

## Separacao entre Camadas

Fatos aprovados pertencem a este arquivo quando ajudam a compreender a evolucao ao longo do tempo.

Indicadores comparaveis pertencem a `history/indicadores_historicos.csv`.

Detalhes de uma competencia pertencem a `history/monthly/AAAA-MM.md`.

Conhecimento permanente pertence a `knowledge/`.

Alteracoes estruturais do framework pertencem a `knowledge/11_CHANGELOG.md`.

## Regras de Uso

Atualizar este arquivo somente apos `APROVADO PARA ENCERRAMENTO`.

Nunca atualizar este arquivo durante analise preliminar.

Nunca registrar resultado provisorio.

Nunca registrar dados sem validacao humana.

Nunca registrar conteudo sensivel desnecessario.

Nunca registrar nomes de PDFs.

Nunca registrar caminhos absolutos.

Nunca registrar arquivos locais enviados para analise.

## Criterios de Permanencia

Um registro deve permanecer quando ajuda a comparar competencias futuras.

Um registro deve ser revisado quando uma nova evidencia consolidada contradisser a leitura anterior.

Um registro deve ser removido ou reescrito quando deixar de representar conhecimento aprovado.

Um registro nao deve ser mantido apenas por ter sido registrado no passado.

### 2026-07

#### Fatos

- Julho de 2026 apresentou expansao relevante de audiencia, busca organica e eventos principais.
- O GA4 registrou 59,13 mil sessoes, 51,66 mil usuarios e 38,05 mil eventos principais.
- O Search Console registrou 27,35 mil cliques organicos, 1,43 milhao de impressoes, CTR media de 1,9% e posicao media de 7,05.
- A leitura organica foi reforcada pela convergencia entre crescimento de sessoes no GA4 e crescimento de cliques no Search Console.
- Mobile concentrou 88,1% dos cliques organicos no Search Console e 68,6% dos usuarios no GA4.
- O SEMrush registrou 180 ideias on-page pendentes, 6.435 posicoes organicas no recorte desktop, 366 posicoes no recorte mobile, Site Health 79, 48 erros, 13.162 advertencias e 6.599 avisos.
- A auditoria tecnica identificou itens acionaveis: 20 URLs incorretas no sitemap, 14 problemas de conteudo misto, 10 links com formato incorreto, 2 paginas 4XX, 2 links internos quebrados e 1 pagina bloqueada.
- O bloco de backlinks exigiu ressalva metodologica porque parte dos dados apareceu associada a azminas.com.br, nao ao dominio principal.

#### Hipoteses

- A expansao de audiencia em julho sugere fortalecimento organico real, mas o proximo ciclo deve confirmar se o movimento se sustenta.
- A diferenca entre predominancia mobile em usuarios e menor participacao mobile em eventos principais pode indicar diferenca de comportamento, experiencia ou configuracao de eventos.
- Paginas mobile com alto volume de impressoes e CTR abaixo de 1% representam oportunidade de captura de clique, desde que as URLs completas sejam conferidas no Search Console antes de ajustes editoriais.
- Registros atipicos no GA4, como not set e cidades internacionais com alta variacao, devem ser tratados como ponto de validacao antes de conclusoes sobre publico.

#### Recomendacoes

- Priorizar no Search Console as paginas mobile com 109,7 mil impressoes e CTR de 0,9%, e 107,63 mil impressoes e CTR de 0,2%, conferindo URLs completas e consultas antes de alterar snippets.
- Corrigir os problemas tecnicos acionaveis com impacto direto em rastreamento, indexacao ou experiencia: URLs incorretas no sitemap, conteudo misto, links com formato incorreto, paginas 4XX, links internos quebrados e pagina bloqueada.
- Investigar a diferenca entre audiencia mobile e participacao mobile em eventos principais.
- Selecionar ideias on-page por impacto real, cruzando SEMrush com paginas de alto volume no Search Console.
- Validar o projeto de backlinks e a configuracao de dominio no SEMrush antes de usar esses dados para decisoes de autoridade.

#### Aprendizados Promovidos

- Foram promovidas regras de apresentacao do resumo executivo para evitar recorrencia de problemas editoriais: uso de eventos principais, ausencia de monospace em termos destinados ao cliente, limite de colunas em tabelas e exclusao de pesquisa paga estimada das recomendacoes ao cliente.
- Apos regeneracao aprovada, nao houve novo aprendizado permanente promovido para knowledge. A mudanca ficou restrita ao detalhamento aprovado de history e manifest.
