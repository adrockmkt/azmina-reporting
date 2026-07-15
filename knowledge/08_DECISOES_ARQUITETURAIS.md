# 08 DECISÕES ARQUITETURAIS
## Objetivo
Este arquivo registra decisões permanentes sobre estrutura, processo, tecnologia, responsabilidades e governança do AzMina Reporting.
Ele não registra resultados mensais.
Ele não registra métricas.
Ele não substitui o changelog.
Ele não substitui a timeline.
Ele não substitui prompts especializados.
Sua função é explicar por que o framework funciona do modo atual.
Cada decisão deve orientar competências futuras.
Cada decisão deve poder ser revisada quando a arquitetura mudar.
Este arquivo deve ser consultado antes de propor alteração estrutural.
## Critério para Entrada
Uma decisão entra aqui quando afeta o funcionamento permanente do projeto.
Uma decisão entra aqui quando altera responsabilidades.
Uma decisão entra aqui quando define formato de entrada ou saída.
Uma decisão entra aqui quando define política de versionamento.
Uma decisão entra aqui quando altera o fluxo entre Codex, ChatGPT, reports, history, knowledge ou prompts.
Não entram decisões pontuais de uma competência.
Não entram hipóteses em acompanhamento.
## Formato das Decisões
Cada decisão deve registrar:
- decisão;
- motivação;
- impacto;
- quando revisar.
## Separação entre Codex e ChatGPT
Decisão:
Codex executa preparação, validação, análises em Markdown, resumo executivo em Markdown e encerramento operacional após aprovação.
ChatGPT executa revisão editorial e geração dos arquivos finais em DOCX e PDF.
Motivação:
Separar análise operacional de finalização editorial reduz risco de misturar produção técnica, revisão humana e entrega final.
Impacto:
O Codex não deve gerar DOCX ou PDF.
Quando revisar:
Revisar apenas se a ferramenta de geração final mudar ou se o pipeline passar a ter automação editorial validada.
## Markdown como Formato Intermediário
Decisão:
As análises individuais e o resumo executivo devem ser produzidos primeiro em Markdown.
Motivação:
Markdown facilita versionamento, revisão, diff, correção e rastreabilidade.
Impacto:
Os arquivos de análise permanecem auditáveis antes da conversão para formatos finais.
Quando revisar:
Revisar se outro formato intermediário oferecer rastreabilidade melhor sem prejudicar revisão humana.
## Uso de Manifest
Decisão:
Cada competência deve possuir `manifest.json`.
Motivação:
O manifest registra competência, fontes, arquivos, validação, análises, revisão e encerramento.
Impacto:
Nenhuma análise deve começar antes da validação do manifest.
Quando revisar:
Revisar se o manifest ganhar automação, novos campos obrigatórios ou integração com APIs.
## Estrutura de Competência
Decisão:
Cada competência usa `reports/AAAA-MM/`.
Motivação:
A competência autocontida evita mistura de períodos e preserva rastreabilidade.
Impacto:
Todos os arquivos mensais devem permanecer dentro da competência ativa.
Quando revisar:
Revisar se o projeto adotar outra unidade temporal ou outro modelo de entrega.
## Separação entre Source, Analysis e Output
Decisão:
Cada competência separa `source/`, `analysis/` e `output/`.
Motivação:
Separar evidência, interpretação e entrega reduz confusão operacional.
Impacto:
PDFs ficam em `source/`.
Análises técnicas ficam em `analysis/`.
Quando revisar:
Revisar se novos tipos de entrada ou saída exigirem novas camadas.
## Source Local e Não Versionado
Decisão:
`reports/*/source/` é área local e não versionada.
Motivação:
PDFs são fontes de entrada, não patrimônio do repositório.
Impacto:
PDFs permanecem fora do GitHub.
Quando revisar:
Revisar se houver política formal de armazenamento seguro de fontes brutas.
## DOCX e PDF Finais Locais
Decisão:
DOCX e PDF finais permanecem locais.
Motivação:
Arquivos finais são produtos editoriais derivados e podem conter formato, revisão ou material de entrega.
Impacto:
O Git não deve versionar DOCX nem PDF final.
Quando revisar:
Revisar se houver repositório próprio de entregáveis finais ou política de arquivamento aprovada.
## Prompts Especializados
Decisão:
O framework utiliza prompts especializados por responsabilidade.
Motivação:
Separar controlador, estilo, análise, glossário, histórico, hipóteses, consultoria e relatório executivo reduz duplicidade.
Impacto:
O Prompt 01 coordena.
Quando revisar:
Revisar se uma responsabilidade crescer a ponto de exigir novo prompt ou se houver duplicidade estrutural.
## Prompt 01 como Controlador
Decisão:
`prompts/01_PROMPT_RELATORIO_EXECUTIVO.md` funciona como controlador de execução.
Motivação:
Um controlador reduz risco de pular validações, prompts ou interrupções.
Impacto:
O Prompt 01 não deve duplicar regras especializadas.
Quando revisar:
Revisar se o fluxo operacional mudar ou se o controlador começar a acumular regras que pertencem a outros prompts.
## Separação entre Prompts e Knowledge
Decisão:
Prompts governam comportamento.
Knowledge guarda memória permanente.
Motivação:
Instruções de execução e conhecimento do projeto possuem naturezas diferentes.
Impacto:
Resultados mensais não entram em prompts.
Regras metodológicas permanentes podem alterar prompts somente após decisão estrutural.
Quando revisar:
Revisar se uma regra de knowledge passar a exigir comportamento obrigatório do agente.
## Separação entre Knowledge e History
Decisão:
Knowledge guarda conhecimento permanente.
History guarda resultados aprovados e memória operacional.
Motivação:
Separar regra de resultado impede que variações mensais virem conhecimento permanente.
Impacto:
Dados de competência pertencem a history.
Conhecimento aprovado e reutilizável pertence a knowledge.
Quando revisar:
Revisar se a governança de memória mudar ou se history/monthly for operacionalizado.
## Uso de History como Memória Operacional
Decisão:
History deve contextualizar competências futuras.
Motivação:
Comparações longitudinais reduzem conclusões precipitadas.
Impacto:
History pode aumentar ou reduzir confiança, mas não substitui dados atuais.
Quando revisar:
Revisar se a estrutura de histórico for ampliada ou automatizada.
## Uso de Knowledge como Memória Permanente
Decisão:
Knowledge deve guardar contexto institucional, regras, decisões, objetivos, públicos, indicadores e aprendizados permanentes.
Motivação:
Memória permanente evita perda de conhecimento entre competências.
Impacto:
Knowledge deve ser seletivo e vigente.
Quando revisar:
Revisar quando houver obsolescência, mudança de escopo, nova fonte ou mudança metodológica.
## Atualização Após Aprovação Humana
Decisão:
History, knowledge, changelog e manifest só são atualizados no encerramento após aprovação explícita.
Motivação:
Evitar consolidar análise não validada como memória oficial.
Impacto:
Antes da aprovação, as análises permanecem em revisão.
Quando revisar:
Revisar apenas se houver outro mecanismo formal de aprovação.
## Revisão Humana Obrigatória
Decisão:
O pipeline deve interromper para revisão humana antes do encerramento.
Motivação:
A revisão humana preserva qualidade editorial, validade estratégica e cautela em temas sensíveis.
Impacto:
O Codex não encerra competência sem aprovação explícita.
Quando revisar:
Revisar se houver governança alternativa validada pela consultoria e pelo cliente.
## Quatro Fontes Obrigatórias
Decisão:
GA4, Google Ads, GSC e SEMrush são fontes obrigatórias.
Motivação:
As quatro fontes cobrem audiência, mídia paga, busca orgânica real e monitoramento complementar de SEO.
Impacto:
Cada fonte gera análise individual.
Quando revisar:
Revisar se uma fonte for substituída, removida ou complementada por nova fonte obrigatória.
## Quatro Análises Individuais
Decisão:
Cada competência deve gerar uma análise individual por fonte.
Motivação:
As análises técnicas preservam detalhe e sustentam o resumo executivo.
Impacto:
O resumo executivo não deve nascer diretamente dos PDFs.
Quando revisar:
Revisar se o modelo de entrega for alterado.
## Resumo Executivo Consolidado
Decisão:
O resumo executivo deve consolidar as fontes em narrativa única.
Motivação:
O principal entregável precisa orientar decisão, não somar dashboards.
Impacto:
Não deve haver capítulos separados por ferramenta no resumo executivo.
Quando revisar:
Revisar se o formato executivo aprovado mudar.
## Política de Versionamento
Decisão:
Prompts, knowledge, history, Markdown, JSON, CSV, scripts e templates são versionados.
PDFs, DOCX, PDF final, temporários e locais não são versionados.
Motivação:
Versionar arquitetura e memória sem expor fontes brutas ou entregáveis finais.
Impacto:
O repositório permanece limpo, auditável e seguro.
Quando revisar:
Revisar se houver nova política de armazenamento ou exigência de auditoria.
## Preservação dos PDFs Originais
Decisão:
PDFs devem manter nomes originais, não ser alterados e não ser renomeados manualmente.
Motivação:
Preservar evidência técnica e rastreabilidade.
Impacto:
O manifest identifica os arquivos sem mudar a fonte original.
Quando revisar:
Revisar se houver processo automatizado de ingestão com cópias controladas.
## Comparação com Mês Anterior
Decisão:
A análise mensal compara a competência atual com o mês imediatamente anterior.
Motivação:
Comparação mês contra mês é a base operacional do reporting.
Impacto:
Gráficos anuais servem como contexto, não como substituto da comparação mensal.
Quando revisar:
Revisar se a periodicidade do projeto mudar.
## Camada Mínima de Evidência
Decisão:
Conclusões relevantes devem usar evidência numérica quando disponível.
Motivação:
Evitar opinião sem sustentação.
Impacto:
Valor atual, anterior, variação absoluta e percentual devem ser usados quando fizerem sentido.
Quando revisar:
Revisar se as fontes mudarem definição de métricas ou comparabilidade.
## Linguagem Permanente
Decisão:
Os arquivos do framework usam português brasileiro, Markdown simples, sem emojis, sem tabelas e sem travessões tipográficos.
Motivação:
Preservar consistência editorial e compatibilidade com os entregáveis.
Impacto:
Documentos ficam simples, versionáveis e fáceis de revisar.
Quando revisar:
Revisar apenas se houver novo padrão editorial aprovado.
## Obsolescência como Manutenção
Decisão:
Conhecimento obsoleto deve ser revisado, removido ou arquivado.
Motivação:
Conhecimento antigo pode distorcer análises futuras.
Impacto:
Remover conhecimento obsoleto é parte da governança.
Quando revisar:
Revisar quando houver mudança estrutural, troca de ferramenta, nova metodologia ou evidência consolidada contrária.
## Regras de Ouro
- decisões arquiteturais devem afetar competências futuras;
- decisão pontual não entra neste arquivo;
- métrica mensal pertence a history;
- marco de alto nível pertence à timeline;
- toda decisão deve ter motivação;
- toda decisão deve ter impacto;
- toda decisão deve ter critério de revisão;
- prompts governam comportamento;
- knowledge guarda memória permanente;
- history guarda resultados aprovados;
