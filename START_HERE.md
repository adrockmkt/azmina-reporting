# START HERE

## Objetivo

Este arquivo é o orquestrador oficial do pipeline mensal do AzMina Reporting. Toda nova competência deve iniciar obrigatoriamente por este arquivo.

- README.md descreve a arquitetura geral.
- prompts/00_MASTER_SPECIFICATION.md define a especificação estrutural.
- START_HERE.md define a ordem operacional.
- COMANDO.md será a entrada curta reutilizável.

## Princípio Central

### Codex

Responsável por preparação, validação, leitura de contexto, análises técnicas, resumo executivo em Markdown e encerramento após aprovação.

### ChatGPT

Responsável por revisão humana assistida, ajustes editoriais, geração de DOCX e PDF e preservação dos números validados.

O Codex não deve gerar DOCX ou PDF.

## Regra da Competência

Antes de qualquer ação, confirmar que a competência foi informada no formato `AAAA-MM`.

Exemplo: `2026-06`.

Se não houver competência válida, interromper e perguntar exatamente:

```text
Qual competência mensal devo processar? Responda no formato AAAA-MM, por exemplo 2026-06.
```

Definir internamente `COMPETENCIA=<valor informado>` e usar esse valor em todos os caminhos da execução. Nunca usar mês fixo, nunca reutilizar competência de exemplo e nunca criar arquivos fora de `reports/${COMPETENCIA}/`.

## Fase 1. Preparação da Competência

O Codex deve:

1. Ler README.md.
2. Ler prompts/00_MASTER_SPECIFICATION.md.
3. Validar a arquitetura do repositório.
4. Confirmar que a branch ativa está correta.
5. Verificar o status do Git.
6. Localizar ou criar `reports/${COMPETENCIA}/`, `reports/${COMPETENCIA}/source/`, `reports/${COMPETENCIA}/analysis/` e `reports/${COMPETENCIA}/output/`.
7. Criar ou validar `reports/${COMPETENCIA}/manifest.json`.
8. Não gerar análises nesta fase.
9. Não alterar history/ ou knowledge/.

Ao concluir, interromper e solicitar exatamente:

```text
Copie todos os PDFs para:

reports/${COMPETENCIA}/source/

Mantenha os nomes originais exportados pelas ferramentas.

Quando terminar, responda apenas:

CONTINUAR
```

## Fase 2. Importação dos Relatórios

O usuário deve copiar para source/ todos os PDFs da competência. Preservar nomes originais, não renomear arquivos, não alterar PDFs, não copiar arquivos de outra competência, não mover arquivos históricos e não gerar análises antes de `CONTINUAR`.

## Fase 3. Validação dos Arquivos

Executar somente após o usuário responder exatamente `CONTINUAR`.

O Codex deve:

1. Usar a mesma competência definida na Fase 1.
2. Validar a existência da competência.
3. Validar manifest.json.
4. Listar todos os arquivos de source/.
5. Identificar cada relatório por nome e conteúdo.
6. Registrar os arquivos no manifest.
7. Detectar duplicidades.
8. Detectar arquivos de períodos diferentes.
9. Confirmar Google Analytics 4, Google Ads, Google Search Console e SEMrush.

Uma fonte pode estar representada por relatório consolidado com blocos claramente identificáveis, desde que a evidência seja suficiente e o manifest registre essa condição.

Interromper se uma fonte obrigatória estiver ausente, a competência estiver inconsistente, houver mistura de períodos, duplicidade crítica, relatório ilegível ou impossibilidade de validar o manifest. Não gerar análise parcial. Quando houver bloqueio, apresentar diagnóstico objetivo dos arquivos.

## Fase 4. Carregamento Obrigatório do Contexto

Após validar a competência, ler nesta ordem:

1. README.md.
2. prompts/00_MASTER_SPECIFICATION.md.
3. Todos os demais arquivos de prompts/, em ordem numérica.
4. Todos os arquivos de knowledge/, em ordem numérica.
5. Todos os arquivos disponíveis em history/.
6. manifest.json da competência.
7. Exclusivamente os PDFs presentes em `reports/${COMPETENCIA}/source/`.

Todos os documentos devem permanecer ativos simultaneamente durante a análise. Nunca ler PDFs de outras competências ou usar dados mensais de outra competência como dados atuais. O histórico serve apenas para comparação e contexto.

## Fase 5. Análises Técnicas

Após o carregamento completo, gerar obrigatoriamente:

```text
reports/${COMPETENCIA}/analysis/ga4_analise.md
reports/${COMPETENCIA}/analysis/google_ads_analise.md
reports/${COMPETENCIA}/analysis/gsc_analise.md
reports/${COMPETENCIA}/analysis/semrush_analise.md
```

Regras gerais:

- comparar com o mês imediatamente anterior;
- aplicar camada mínima de evidência numérica;
- informar valor atual, anterior, variação absoluta e percentual quando disponíveis;
- não criar tabelas;
- não usar emojis ou travessões;
- não citar nomes dos PDFs nem incluir referências no texto final;
- separar fato, hipótese e recomendação;
- não afirmar causalidade sem evidência;
- interpretar os dados, não apenas transcrevê-los.

### Regras específicas de GA4

A análise deve cobrir, quando disponíveis, usuários ativos, novos usuários, sessões, sessões engajadas, taxa de engajamento, tempo médio de engajamento, visualizações, eventos, eventos principais, canais, origem e mídia, páginas, países, cidades, dispositivos e eventos personalizados.

### Regras específicas de Google Ads

A análise deve cobrir, quando disponíveis, impressões, cliques, CTR, custo, CPC, CPM, conversões, todas as conversões, taxa de conversão, CPA, custo por todas as conversões, ROAS, campanhas, grupos, anúncios, palavras-chave, dispositivos, demanda e sazonalidade.

- queda isolada não representa necessariamente deterioração estrutural;
- deve ser verificada a procura do período;
- deve ser considerada a sequência dos meses anteriores;
- ineficiências concentradas devem ser separadas da leitura geral da conta;
- mudanças amplas não devem ser recomendadas com base em apenas um mês atípico.

### Regras específicas de Google Search Console

A análise deve cobrir cliques, impressões, CTR, posição média, páginas, consultas, países, dispositivos, ganho ou perda de visibilidade, oportunidades de CTR e ranking. Posição média menor é melhor.

### Regras específicas de SEMrush

A análise deve diferenciar gráficos anuais de comparação mensal, usar o bloco mensal como base da competência, comparar a competência atual com o mês imediatamente anterior, não confundir comparação anual com mensal, interpretar posição média corretamente, destacar páginas com muitas impressões e CTR baixo, considerar volume absoluto antes de percentuais e diferenciar ganho de alcance de ganho de eficiência.

## Fase 6. Geração do Resumo Executivo

Após concluir as quatro análises, gerar `reports/${COMPETENCIA}/output/resumo_executivo.md`.

O resumo deve consolidar as fontes sem parecer uma soma de relatórios. Sua estrutura obrigatória é:

1. Resumo Geral
2. Pontos Fortes
3. Pontos de Atenção
4. Impacto Geral no Projeto
5. Recomendações Priorizadas

As recomendações devem ser separadas em Alta prioridade, Média prioridade e Baixa prioridade. O resumo deve ser compatível com até duas páginas em DOCX/PDF.

O resumo deve explicar o que mudou, apresentar números essenciais, explicar impacto, considerar histórico, diferenciar volume de eficiência, registrar divergências entre fontes, contextualizar demanda e sazonalidade quando aplicável e evitar repetição operacional.

## Fase 7. Interrupção para Revisão Humana

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

Antes da aprovação, não atualizar history/, knowledge/ ou knowledge/11_CHANGELOG.md, não marcar a competência como encerrada e não gerar DOCX ou PDF.

## Fase 8. Revisão e Correções

Caso o usuário solicite correções, alterar apenas arquivos Markdown da competência ativa. Preservar os PDFs e source/, não atualizar histórico, não encerrar a competência, validar novamente os números alterados e manter rastreabilidade das mudanças via Git.

## Fase 9. Finalização Editorial no ChatGPT

Após aprovação editorial, o ChatGPT poderá gerar:

```text
reports/${COMPETENCIA}/output/AzMina_Relatorio_Executivo_AAAA_MM.docx
reports/${COMPETENCIA}/output/AzMina_Relatorio_Executivo_AAAA_MM.pdf
```

Essa fase ocorre fora do pipeline operacional do Codex.

## Fase 10. Encerramento Operacional

Executar somente após o usuário responder exatamente `APROVADO PARA ENCERRAMENTO`, usando a mesma competência.

O Codex deve:

1. Confirmar que os cinco arquivos Markdown existem.
2. Confirmar que a aprovação foi explícita.
3. Atualizar history/evolucao_mensal.md.
4. Atualizar history/indicadores_historicos.csv.
5. Avaliar se existe informação estrutural nova para knowledge/01 a knowledge/09.
6. Atualizar somente os arquivos aplicáveis.
7. Atualizar knowledge/10_LICOES_APRENDIDAS.md apenas com aprendizados reutilizáveis.
8. Atualizar knowledge/11_CHANGELOG.md.
9. Atualizar manifest.json.
10. Marcar a competência como aprovada e encerrada operacionalmente.
11. Não alterar PDFs.
12. Não regenerar análises, salvo solicitação explícita.
13. Não gerar DOCX ou PDF.

## Regras para Atualização de History

### history/evolucao_mensal.md

Registrar de forma sintética a competência, os principais indicadores aprovados, a leitura de evolução, regressão ou estabilidade, principais conclusões, principais recomendações, hipóteses relevantes e fatos que devem ser acompanhados.

### history/indicadores_historicos.csv

Registrar apenas os principais indicadores mensais comparáveis, quando disponíveis.

- GA4: usuários ativos, novos usuários, sessões, sessões engajadas, tempo médio de engajamento, visualizações, eventos principais, Organic Search, Direct e Google CPC.
- Google Ads: impressões, cliques, CTR, custo, conversões, taxa de conversão, CPA, ROAS, principal campanha positiva e principal campanha negativa.
- GSC: cliques, impressões, CTR, posição média, principal página e consulta com ganho e com queda.
- SEMrush: cliques, impressões, CTR, posição média, principal oportunidade de CTR, principal página com ganho e queda e observação metodológica quando aplicável.

## Regras para Atualização de Knowledge

- dados mensais comuns pertencem a history/;
- knowledge/01 a knowledge/09 recebem apenas informação estrutural;
- knowledge/10 recebe aprendizados reutilizáveis;
- knowledge/11 registra alterações do repositório;
- arquivos sem informação nova devem permanecer sem alteração;
- o changelog deve registrar quais arquivos foram atualizados e quais permaneceram sem alteração.

## Regras de Git

Em cada etapa concluída e validada, executar `git diff --check`, revisar `git status`, criar commit específico e fazer push para origin/main. Evitar commits que misturem etapas diferentes, não usar force push ou comandos destrutivos e manter working tree limpo ao final.

## Regras Obrigatórias

- nunca analisar sem competência válida;
- nunca misturar competências;
- nunca analisar PDFs fora de source/;
- nunca renomear PDFs;
- nunca iniciar análise antes do manifest;
- nunca gerar análise parcial sem fonte obrigatória;
- nunca confundir comparação anual e mensal;
- nunca interpretar posição média de forma invertida;
- nunca tratar hipótese como fato;
- nunca afirmar causalidade sem evidência;
- nunca repetir extensivamente o dashboard;
- nunca atualizar history ou knowledge antes da aprovação;
- nunca gerar DOCX ou PDF no Codex;
- sempre correlacionar fontes;
- sempre aplicar evidência numérica;
- sempre comparar com o mês anterior;
- sempre considerar histórico;
- sempre contextualizar demanda no Google Ads;
- sempre priorizar impacto estratégico;
- sempre interromper nos pontos definidos.

## Critério de Sucesso

A competência está pronta para revisão quando o manifest estiver validado, as quatro fontes confirmadas, as quatro análises e o resumo executivo gerados e os arquivos salvos na competência correta.

Está operacionalmente concluída quando houver aprovação explícita, history atualizado, knowledge aplicável avaliado, changelog atualizado, manifest encerrado e commit e push concluídos.

Está pronta para entrega quando DOCX e PDF finais existirem em output/.

## Resultado Esperado

```text
reports/${COMPETENCIA}/source/
reports/${COMPETENCIA}/analysis/ga4_analise.md
reports/${COMPETENCIA}/analysis/google_ads_analise.md
reports/${COMPETENCIA}/analysis/gsc_analise.md
reports/${COMPETENCIA}/analysis/semrush_analise.md
reports/${COMPETENCIA}/output/resumo_executivo.md
reports/${COMPETENCIA}/output/AzMina_Relatorio_Executivo_AAAA_MM.docx
reports/${COMPETENCIA}/output/AzMina_Relatorio_Executivo_AAAA_MM.pdf
reports/${COMPETENCIA}/manifest.json
```
