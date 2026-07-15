# Comando Mensal para Codex

## Início da Competência

Inicie uma nova competência mensal do projeto AzMina Reporting.

Antes de qualquer ação, verificar se a competência foi informada pelo usuário no formato `AAAA-MM`.

Exemplo: `2026-06`.

Se a competência não tiver sido informada ou estiver inválida, interromper e perguntar exatamente:

```text
Qual competência mensal devo processar? Responda no formato AAAA-MM, por exemplo 2026-06.
```

Depois que o usuário informar uma competência válida, definir internamente `COMPETENCIA=<valor informado pelo usuário>` e usar obrigatoriamente COMPETENCIA para todos os caminhos da execução.

- não usar mês fixo;
- não reutilizar competência de exemplo;
- não criar arquivos fora de `reports/${COMPETENCIA}/`;
- não continuar com competência inválida.

## Regra Principal

Toda execução deve seguir obrigatoriamente `START_HERE.md`.

Antes de qualquer análise, o Codex deve ler:

1. README.md
2. START_HERE.md
3. COMANDO.md
4. prompts/00_MASTER_SPECIFICATION.md

Depois deve seguir integralmente as fases, validações, interrupções e regras descritas nesses arquivos.

## Validação de Versionamento

Antes da execução, confirmar que:

- .gitignore existe;
- source/ está protegida;
- PDFs não serão versionados.

## Etapa 1. Preparação

Após validar COMPETENCIA, o Codex deve:

1. Validar a arquitetura do repositório.
2. Confirmar o status do Git.
3. Localizar ou criar `reports/${COMPETENCIA}/`, `reports/${COMPETENCIA}/source/`, `reports/${COMPETENCIA}/analysis/` e `reports/${COMPETENCIA}/output/`.
4. Criar ou validar `reports/${COMPETENCIA}/manifest.json`.
5. Não gerar análises.
6. Não alterar history/.
7. Não alterar knowledge/.
8. Não gerar DOCX ou PDF.

Ao concluir, interromper e solicitar exatamente:

```text
Copie todos os PDFs para:

reports/${COMPETENCIA}/source/

Mantenha os nomes originais exportados pelas ferramentas.

Quando terminar, responda apenas:

CONTINUAR
```

## Etapa 2. Validação e Análise após CONTINUAR

Executar somente quando o usuário responder exatamente `CONTINUAR`. Usar a mesma competência definida na Etapa 1.

Antes de qualquer análise:

1. Validar `reports/${COMPETENCIA}/`.
2. Validar manifest.json.
3. Listar todos os arquivos presentes em source/.
4. Identificar cada relatório por nome e conteúdo.
5. Registrar os arquivos no manifest.
6. Detectar duplicidades.
7. Detectar mistura de períodos.
8. Confirmar Google Analytics 4, Google Ads, Google Search Console e SEMrush.

Uma fonte pode estar presente dentro de relatório consolidado desde que o bloco esteja claramente identificado, os dados necessários estejam legíveis, o manifest registre essa condição e exista evidência suficiente para gerar a análise.

Interromper se houver ausência de fonte obrigatória, competência inconsistente, arquivo ilegível, mistura de períodos, duplicidade crítica ou manifest inconsistente. Não gerar análise parcial.

## Carregamento Obrigatório do Contexto

Se a competência estiver válida, ler nesta ordem:

1. README.md
2. START_HERE.md
3. COMANDO.md
4. prompts/00_MASTER_SPECIFICATION.md
5. prompts/01_PROMPT_RELATORIO_EXECUTIVO.md até prompts/08_RELATORIO_EXECUTIVO.md, em ordem numérica
6. Todos os arquivos de knowledge/, em ordem numérica
7. Todos os arquivos disponíveis em history/
8. manifest.json da competência
9. Exclusivamente os PDFs presentes em `reports/${COMPETENCIA}/source/`

Todos os documentos devem permanecer ativos simultaneamente durante a análise.

## Arquivos Obrigatórios da Competência

Gerar obrigatoriamente:

```text
reports/${COMPETENCIA}/analysis/ga4_analise.md
reports/${COMPETENCIA}/analysis/google_ads_analise.md
reports/${COMPETENCIA}/analysis/gsc_analise.md
reports/${COMPETENCIA}/analysis/semrush_analise.md
reports/${COMPETENCIA}/output/resumo_executivo.md
```

## Regras Gerais de Análise

- comparar a competência atual com o mês imediatamente anterior;
- aplicar camada mínima de evidência numérica;
- incluir valor atual, valor anterior, variação absoluta e variação percentual quando disponíveis;
- não criar tabelas;
- não usar emojis ou travessões;
- não citar nomes dos PDFs ou incluir referências no texto final;
- não repetir extensivamente o dashboard;
- não transformar hipótese em fato;
- não afirmar causalidade sem evidência;
- correlacionar as quatro fontes;
- diferenciar volume de eficiência;
- registrar divergências entre ferramentas;
- considerar histórico antes de tratar variação pontual como tendência;
- preservar todos os PDFs originais;
- não atualizar history ou knowledge antes da aprovação.

## Regras Obrigatórias de GA4

A análise deve considerar, quando disponíveis, usuários ativos, novos usuários, sessões, sessões engajadas, taxa de engajamento, tempo médio de engajamento, visualizações, eventos, eventos principais, canais, origem e mídia, páginas, países, cidades, dispositivos e eventos personalizados do AzMina.

## Regras Obrigatórias de Google Ads

A análise deve considerar, quando disponíveis, impressões, cliques, CTR, custo, CPC, CPM, conversões, todas as conversões, taxa de conversão, CPA, custo por todas as conversões, ROAS, campanhas, grupos, anúncios, palavras-chave, dispositivos, demanda e sazonalidade.

- não interpretar queda isolada como deterioração estrutural;
- verificar se houve redução de procura no período;
- considerar o comportamento dos meses anteriores;
- diferenciar redução de demanda de perda de eficiência;
- identificar onde a ineficiência está concentrada;
- evitar mudanças amplas com base em um único mês atípico.

## Regras Obrigatórias de Google Search Console

A análise deve considerar cliques, impressões, CTR, posição média, páginas, consultas, países, dispositivos, oportunidades de CTR e ganho ou perda de visibilidade.

- posição média menor representa melhora;
- posição média maior representa piora.

## Regras Obrigatórias de SEMrush

A análise deve diferenciar gráficos anuais de comparação mensal, usar o comparativo mensal como base da competência, comparar o mês atual com o mês imediatamente anterior, não confundir comparação anual com comparação mensal, interpretar posição média corretamente, priorizar páginas com muitas impressões e CTR baixo, considerar volume absoluto antes de destacar variações percentuais e diferenciar ganho de alcance de ganho de eficiência.

## Estrutura Obrigatória do Resumo Executivo

O arquivo resumo_executivo.md deve conter:

1. Resumo Geral
2. Pontos Fortes
3. Pontos de Atenção
4. Impacto Geral no Projeto
5. Recomendações Priorizadas

As recomendações devem ser separadas em Alta prioridade, Média prioridade e Baixa prioridade. O resumo deve ser compatível com até duas páginas após conversão para DOCX ou PDF.

## Interrupção para Revisão Humana

Após gerar os cinco arquivos Markdown, interromper e solicitar exatamente:

```text
Revise os arquivos gerados:

reports/${COMPETENCIA}/analysis/ga4_analise.md
reports/${COMPETENCIA}/analysis/google_ads_analise.md
reports/${COMPETENCIA}/analysis/gsc_analise.md
reports/${COMPETENCIA}/analysis/semrush_analise.md
reports/${COMPETENCIA}/output/resumo_executivo.md

Faça a revisão humana e, quando a competência estiver aprovada, responda apenas:

APROVADO PARA ENCERRAMENTO
```

Antes dessa aprovação, não atualizar history/, knowledge/ ou knowledge/11_CHANGELOG.md, não marcar a competência como encerrada e não gerar DOCX ou PDF.

## Etapa 3. Encerramento após Aprovação

Executar somente quando o usuário responder exatamente `APROVADO PARA ENCERRAMENTO`. Usar a mesma competência definida anteriormente.

O Codex deve:

1. Confirmar a existência dos cinco arquivos Markdown.
2. Confirmar a aprovação explícita.
3. Atualizar history/evolucao_mensal.md.
4. Atualizar history/indicadores_historicos.csv.
5. Avaliar se há informação estrutural nova para knowledge/01 a knowledge/09.
6. Atualizar somente os arquivos aplicáveis.
7. Atualizar knowledge/10_LICOES_APRENDIDAS.md apenas com aprendizados reutilizáveis.
8. Atualizar knowledge/11_CHANGELOG.md.
9. Atualizar manifest.json.
10. Marcar a competência como aprovada e encerrada operacionalmente.
11. Não alterar PDFs.
12. Não regenerar análises, salvo solicitação explícita.
13. Não gerar DOCX ou PDF.

## Regras de Atualização do Histórico

Em history/evolucao_mensal.md, registrar de forma sintética competência, principais números aprovados, evolução, regressão ou estabilidade, principais conclusões, principais recomendações, hipóteses relevantes e pontos que devem ser acompanhados.

Em history/indicadores_historicos.csv, registrar somente os principais indicadores comparáveis das quatro fontes. Não registrar todas as métricas disponíveis.

## Regras de Atualização de Knowledge

- dados mensais comuns pertencem a history/;
- knowledge/01 a knowledge/09 recebem apenas memória estrutural;
- knowledge/10 recebe aprendizados reutilizáveis;
- knowledge/11 registra alterações do projeto;
- arquivos sem informação nova permanecem sem alteração;
- o changelog deve registrar quais arquivos foram alterados e quais foram mantidos.

## Versionamento

Ao final de cada etapa concluída e validada:

1. Executar `git diff --check`.
2. Revisar `git status`.
3. Criar commit específico para a etapa.
4. Fazer push para origin/main.
5. Não usar force push.
6. Não usar comandos destrutivos.
7. Manter working tree limpo.

## Resultado Esperado

Ao final do pipeline, a competência deve conter:

```text
reports/${COMPETENCIA}/source/
reports/${COMPETENCIA}/analysis/ga4_analise.md
reports/${COMPETENCIA}/analysis/google_ads_analise.md
reports/${COMPETENCIA}/analysis/gsc_analise.md
reports/${COMPETENCIA}/analysis/semrush_analise.md
reports/${COMPETENCIA}/output/resumo_executivo.md
reports/${COMPETENCIA}/manifest.json
```

Após a finalização editorial no ChatGPT:

```text
reports/${COMPETENCIA}/output/AzMina_Relatorio_Executivo_AAAA_MM.docx
reports/${COMPETENCIA}/output/AzMina_Relatorio_Executivo_AAAA_MM.pdf
```
