# 00 MASTER SPECIFICATION

# Projeto AzMina Reporting

## Objetivo

O projeto AzMina Reporting centraliza o processo mensal de análise dos relatórios digitais do portal AzMina.

O objetivo não é apenas resumir PDFs ou reproduzir dashboards. O sistema deve transformar dados técnicos em análises consultivas, histórico comparável e um resumo executivo orientado à tomada de decisão.

O domínio principal analisado é <https://azmina.com.br/>.

As quatro fontes analíticas obrigatórias são:

1. Google Analytics 4
2. Google Ads
3. Google Search Console
4. SEMrush

Cada fonte obrigatória deve gerar uma análise individual em Markdown.

## Papel deste documento

Este arquivo é a fonte principal para a arquitetura do repositório, as responsabilidades dos diretórios e prompts, as fontes obrigatórias, o fluxo mensal, os entregáveis, a separação entre Codex e ChatGPT, a validação da competência, a revisão humana, as atualizações de histórico e conhecimento, os critérios de qualidade e os critérios de conclusão.

Toda mudança estrutural relevante deve ser registrada primeiro neste arquivo e depois propagada para README.md, START_HERE.md, COMANDO.md e demais documentos aplicáveis.

## Princípio central da arquitetura

O projeto tem duas responsabilidades complementares.

### Pipeline operacional no Codex

O Codex é responsável por:

- solicitar e validar a competência mensal;
- preparar a estrutura da competência;
- validar os PDFs originais;
- gerar ou atualizar manifest.json;
- carregar prompts, knowledge e history;
- gerar análises individuais de GA4, Google Ads, GSC e SEMrush;
- gerar resumo_executivo.md;
- interromper para revisão humana;
- atualizar history, knowledge aplicável e changelog somente após aprovação explícita.

### Finalização editorial no ChatGPT

O ChatGPT é responsável por:

- revisar os arquivos Markdown;
- ajustar clareza e consistência editorial;
- preservar as conclusões aprovadas;
- gerar DOCX e PDF finais;
- não alterar números sem validação;
- não atualizar history ou knowledge diretamente durante a revisão editorial.

## Estrutura do repositório

```text
azmina-reporting/
├── COMANDO.md
├── README.md
├── START_HERE.md
├── reports/
│   └── AAAA-MM/
│       ├── source/
│       ├── analysis/
│       │   ├── ga4_analise.md
│       │   ├── google_ads_analise.md
│       │   ├── gsc_analise.md
│       │   └── semrush_analise.md
│       ├── output/
│       │   └── resumo_executivo.md
│       └── manifest.json
├── history/
│   ├── monthly/
│   ├── indicadores_historicos.csv
│   └── evolucao_mensal.md
├── knowledge/
│   ├── 01_PROJETO.md
│   ├── 02_MONITORAMENTO_SEMRUSH.md
│   ├── 03_PUBLICOS_E_PAISES.md
│   ├── 04_RELATORIOS.md
│   ├── 05_INDICADORES.md
│   ├── 06_OBJETIVOS.md
│   ├── 07_TIMELINE.md
│   ├── 08_DECISOES_ARQUITETURAIS.md
│   ├── 09_BOAS_PRATICAS.md
│   ├── 10_LICOES_APRENDIDAS.md
│   └── 11_CHANGELOG.md
├── prompts/
│   ├── 00_MASTER_SPECIFICATION.md
│   ├── 01_PROMPT_RELATORIO_EXECUTIVO.md
│   ├── 02_ESTILO_DE_ESCRITA.md
│   ├── 03_REGRAS_DE_ANALISE.md
│   ├── 04_GLOSSARIO.md
│   ├── 05_HISTORICO_DO_PROJETO.md
│   ├── 06_HIPOTESES_E_CONFIANCA.md
│   ├── 07_ESTILO_CONSULTIVO.md
│   └── 08_RELATORIO_EXECUTIVO.md
├── templates/
└── scripts/
```

## Responsabilidade dos diretórios e arquivos principais

- COMANDO.md contém o comando operacional de entrada para o processo mensal.
- START_HERE.md orienta o início do trabalho e a sequência mínima de execução.
- README.md apresenta o projeto, sua finalidade e o uso do repositório.
- reports/ armazena cada competência mensal e seus entregáveis.
- source/ guarda os PDFs originais da competência.
- analysis/ guarda as quatro análises técnicas individuais em Markdown.
- output/ guarda o resumo executivo e os documentos finais.
- manifest.json identifica a competência, os arquivos de origem e o estado de validação e encerramento.
- history/ guarda resultados mensais aprovados e indicadores comparáveis.
- knowledge/ guarda memória permanente, regras e contexto estrutural.
- prompts/ guarda instruções reutilizáveis para análise e redação.
- templates/ guarda modelos de documentos e estruturas reutilizáveis.
- scripts/ guarda automações e rotinas operacionais.

Cada competência é autocontida em reports/AAAA-MM/. Os PDFs originais nunca devem ser renomeados manualmente. Nenhuma análise pode começar antes da validação do manifest.json.

## Responsabilidade dos arquivos de knowledge

- 01_PROJETO.md registra o contexto institucional e estratégico do projeto.
- 02_MONITORAMENTO_SEMRUSH.md registra regras e contexto permanente do monitoramento SEMrush.
- 03_PUBLICOS_E_PAISES.md registra públicos, mercados, países e segmentações relevantes.
- 04_RELATORIOS.md registra regras estruturais dos relatórios e entregas.
- 05_INDICADORES.md registra definições e critérios dos indicadores principais.
- 06_OBJETIVOS.md registra objetivos e prioridades de negócio vigentes.
- 07_TIMELINE.md registra marcos e contexto temporal relevante.
- 08_DECISOES_ARQUITETURAIS.md registra decisões sobre estrutura, processo e tecnologia.
- 09_BOAS_PRATICAS.md registra práticas operacionais e analíticas reutilizáveis.
- 10_LICOES_APRENDIDAS.md recebe apenas aprendizados reutilizáveis.
- 11_CHANGELOG.md registra mudanças no repositório e no fluxo.

knowledge/ guarda memória permanente. history/ guarda resultados mensais aprovados. Dados mensais comuns não devem ser copiados para knowledge/. Os arquivos knowledge/01 a knowledge/09 só devem ser atualizados quando houver informação estrutural nova.

## Responsabilidade dos prompts

- 00_MASTER_SPECIFICATION.md define a fonte estrutural única do projeto.
- 01_PROMPT_RELATORIO_EXECUTIVO.md instrui a consolidação do resumo executivo.
- 02_ESTILO_DE_ESCRITA.md define o padrão de linguagem e redação.
- 03_REGRAS_DE_ANALISE.md define critérios e limites da análise.
- 04_GLOSSARIO.md define nomenclaturas e conceitos recorrentes.
- 05_HISTORICO_DO_PROJETO.md instrui o uso do histórico aprovado.
- 06_HIPOTESES_E_CONFIANCA.md define a separação entre fatos, hipóteses e confiança.
- 07_ESTILO_CONSULTIVO.md define o tom consultivo e a orientação para decisão.
- 08_RELATORIO_EXECUTIVO.md organiza a estrutura final do relatório executivo.

## Política de Versionamento

Devem ser versionados:

- prompts;
- knowledge;
- history;
- markdown;
- json;
- csv;
- scripts;
- templates.

Não devem ser versionados:

- PDFs;
- DOCX;
- PDF final;
- arquivos temporários;
- arquivos locais.

Os PDFs são apenas fontes de entrada para análise.

Eles nunca são patrimônio do repositório.

Os arquivos finais em DOCX e PDF permanecem locais após a finalização editorial.

## Fontes obrigatórias

### Google Analytics 4

A análise deve considerar, quando disponíveis, usuários ativos, novos usuários, sessões, sessões engajadas, taxa de engajamento, tempo médio de engajamento, visualizações, eventos, eventos principais, canais, origem e mídia, páginas, países, cidades, dispositivos e eventos personalizados do AzMina.

Exemplos de eventos recorrentes são article_view, azmina-real-scroll, scroll_25, scroll_50, scroll_75, scroll_90, azmina___sessão_app, azmina___sessão_newsletter, apoie e eventos de clique em lojas de aplicativos.

Entrega obrigatória: `reports/AAAA-MM/analysis/ga4_analise.md`.

### Google Ads

A análise deve considerar, quando disponíveis, impressões, cliques, CTR, custo, CPC médio, CPM, conversões, todas as conversões, taxa de conversão, custo por conversão, custo por todas as conversões, ROAS, campanhas, grupos de anúncios, anúncios, palavras-chave, termos de pesquisa, dispositivos, sazonalidade e variação da demanda.

Regras permanentes:

- nunca interpretar uma queda isolada como deterioração estrutural;
- verificar se a procura do período diminuiu;
- considerar a sequência dos meses anteriores;
- diferenciar redução de demanda de perda de eficiência;
- identificar campanhas, grupos e palavras-chave responsáveis pelo resultado;
- evitar mudanças amplas com base em apenas um mês atípico;
- priorizar realocação de orçamento quando a ineficiência estiver concentrada.

Entrega obrigatória: `reports/AAAA-MM/analysis/google_ads_analise.md`.

### Google Search Console

A análise deve considerar cliques, impressões, CTR, posição média, páginas, consultas, países, dispositivos, crescimento e perda de visibilidade, oportunidades de CTR e recuperação ou perda de ranking.

Posição média menor é melhor e posição média maior é pior.

Entrega obrigatória: `reports/AAAA-MM/analysis/gsc_analise.md`.

### SEMrush

SEMrush é fonte obrigatória e gera análise individual. Os relatórios mensais podem incluir dados integrados do Google Search Console, comparação mensal, gráficos anuais, páginas, países, dispositivos, posição média, CTR, cliques, impressões, monitoramento de posição, backlinks, domínios de referência, auditoria técnica, palavras-chave e oportunidades de SEO.

Regras obrigatórias:

- gráficos anuais são contexto histórico e não substituem o comparativo mensal;
- o bloco de comparação mensal deve comparar a competência atual com o mês imediatamente anterior;
- não confundir comparação anual com comparação mensal;
- posição média menor representa melhora;
- posição média maior representa piora;
- crescimento de impressões sem crescimento proporcional de cliques pode indicar perda de eficiência;
- queda de impressões acompanhada de aumento de CTR pode indicar redução de alcance com maior eficiência;
- páginas com muitas impressões e CTR baixo devem receber prioridade;
- variações percentuais em bases pequenas não devem ser tratadas como grandes oportunidades sem observar o volume absoluto.

Entrega obrigatória: `reports/AAAA-MM/analysis/semrush_analise.md`.

## Camada mínima de evidência numérica

Toda afirmação de crescimento, queda, melhora, piora, avanço, regressão, estabilidade, ganho ou perda de eficiência deve incluir, quando disponíveis, valor atual, valor anterior, variação absoluta e variação percentual.

Não criar tabelas, salvo solicitação explícita. Não listar todas as métricas disponíveis. Selecionar apenas os números que sustentam a leitura estratégica.

## Correlação obrigatória

O sistema deve correlacionar GA4 com GSC, GSC com SEMrush, Google Ads com GA4, Google Ads com procura e sazonalidade, páginas orgânicas com comportamento pós clique e histórico mensal com a competência atual.

Exemplos de leitura:

- crescimento de cliques no GSC acompanhado de crescimento orgânico no GA4 reforça avanço orgânico;
- queda de cliques no GSC e queda de sessões orgânicas no GA4 reforçam retração de demanda ou visibilidade;
- aumento de tráfego no GA4 com queda de engajamento indica crescimento de audiência com menor profundidade;
- queda de conversões em Google Ads com impressões estáveis pode indicar menor intenção pós clique;
- melhora de CTR com queda de impressões representa maior eficiência sobre uma base menor;
- divergências entre fontes devem ser declaradas, não ocultadas.

## Fluxo mensal

1. Preparação da competência.
2. Importação dos PDFs.
3. Validação dos arquivos.
4. Carregamento de prompts, knowledge e history.
5. Geração das quatro análises individuais.
6. Geração do resumo executivo.
7. Revisão humana.
8. Finalização editorial no ChatGPT.
9. Encerramento operacional após aprovação.

A competência deve estar no formato AAAA-MM. O Codex deve interromper após preparar a competência e solicitar os PDFs. O Codex deve interromper novamente após gerar os arquivos Markdown.

## Estrutura do resumo executivo

O resumo executivo deve consolidar as quatro fontes sem parecer uma soma de relatórios. A estrutura obrigatória é:

1. Resumo Geral
2. Pontos Fortes
3. Pontos de Atenção
4. Impacto Geral no Projeto
5. Recomendações Priorizadas

As recomendações devem ser classificadas em Alta prioridade, Média prioridade ou Baixa prioridade. O resumo deve ser compatível com no máximo duas páginas após conversão para DOCX/PDF.

## Padrão editorial obrigatório

Os relatórios devem:

- ser escritos em português brasileiro;
- usar Markdown simples;
- ser consultivos e objetivos;
- explicar impacto;
- evitar repetição do dashboard;
- não usar emojis, tabelas ou travessões;
- não citar nomes de PDFs;
- não usar referências ou citações no texto entregue ao cliente;
- não usar linguagem de resumo automático;
- não apresentar hipótese como fato;
- não afirmar causalidade sem evidência;
- não exagerar conclusões;
- evitar recomendações genéricas.

## Atualização do histórico

Após a aprovação humana, atualizar:

- history/evolucao_mensal.md;
- history/indicadores_historicos.csv;
- knowledge aplicável;
- knowledge/10_LICOES_APRENDIDAS.md quando houver aprendizado reutilizável;
- knowledge/11_CHANGELOG.md;
- manifest.json.

history/indicadores_historicos.csv deve contemplar indicadores principais das quatro fontes, quando disponíveis.

## Critérios de qualidade

- precisão numérica;
- comparação correta com o mês anterior;
- correlação entre fontes;
- separação entre fato e hipótese;
- recomendações executáveis;
- síntese executiva;
- rastreabilidade;
- preservação dos PDFs;
- consistência histórica;
- ausência de repetição operacional;
- ausência de emojis, tabelas, travessões e referências no texto final.

## Critério de conclusão

### Pronta para revisão humana

Quando as quatro análises e o resumo executivo estiverem gerados.

### Operacionalmente concluída

Quando houver aprovação explícita, atualização de history, knowledge aplicável, changelog e manifest.

### Pronta para entrega ao cliente

Quando DOCX e PDF forem gerados no ChatGPT e armazenados em output/.

## Entregáveis

```text
reports/AAAA-MM/source/
reports/AAAA-MM/analysis/ga4_analise.md
reports/AAAA-MM/analysis/google_ads_analise.md
reports/AAAA-MM/analysis/gsc_analise.md
reports/AAAA-MM/analysis/semrush_analise.md
reports/AAAA-MM/output/resumo_executivo.md
reports/AAAA-MM/manifest.json
```

Após finalização editorial:

```text
reports/AAAA-MM/output/AzMina_Relatorio_Executivo_AAAA_MM.docx
reports/AAAA-MM/output/AzMina_Relatorio_Executivo_AAAA_MM.pdf
```

## Evoluções futuras

O projeto pode evoluir com leitura automatizada dos PDFs, validação automática do manifest, comparação com histórico, integração direta com APIs, geração assistida de DOCX/PDF, análises preditivas e replicação do framework para outros clientes.
