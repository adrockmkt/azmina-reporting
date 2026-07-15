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
