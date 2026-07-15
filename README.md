# AzMina Reporting

## Objetivo

Este repositório centraliza o processo mensal de análise dos dados digitais do portal AzMina.

Domínio principal: <https://azmina.com.br/>.

O projeto transforma relatórios técnicos de Google Analytics 4, Google Ads, Google Search Console e SEMrush em:

- análises individuais em Markdown;
- histórico comparável;
- resumo executivo orientado à decisão;
- documentos finais em DOCX e PDF após revisão humana.

O projeto não substitui dashboards ou plataformas de mídia e SEO. Ele funciona como camada de análise, documentação, consolidação e fechamento mensal.

## Visão Geral do Fluxo

O processo distribui responsabilidades complementares entre Codex e ChatGPT.

### Codex

- prepara a competência;
- valida estrutura e arquivos;
- gera manifest.json;
- lê prompts, knowledge e history;
- produz as quatro análises individuais;
- produz resumo_executivo.md;
- aguarda revisão humana;
- atualiza histórico e memória somente após aprovação.

### ChatGPT

- revisa os arquivos Markdown;
- ajusta clareza editorial;
- preserva números e conclusões validadas;
- gera DOCX e PDF finais.

## Fontes Obrigatórias

### Google Analytics 4

Sustenta a análise de audiência, sessões, usuários, engajamento, eventos, canais, páginas, países, cidades e dispositivos.

### Google Ads

Sustenta a análise de impressões, cliques, CTR, custo, CPC, conversões, CPA, ROAS, campanhas, grupos, anúncios, palavras-chave, dispositivos, demanda e sazonalidade.

### Google Search Console

Sustenta a análise de cliques, impressões, CTR, posição média, páginas, consultas, países, dispositivos e oportunidades orgânicas.

### SEMrush

É uma fonte obrigatória separada e sustenta a análise mensal de desempenho orgânico, páginas, dispositivos, países, CTR, posição média, cliques, impressões, rankings, backlinks, auditoria e oportunidades de SEO.

Os gráficos anuais do SEMrush servem como contexto histórico. O bloco mensal deve comparar a competência atual com o mês imediatamente anterior.

## Estrutura do Repositório

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
├── prompts/
├── templates/
└── scripts/
```

- COMANDO.md contém o comando operacional de entrada.
- README.md documenta a arquitetura e a operação do projeto.
- START_HERE.md orienta o início do fluxo.
- reports/ armazena competências e seus entregáveis.
- history/ armazena resultados aprovados e série histórica.
- knowledge/ armazena memória permanente e estrutural.
- prompts/ armazena instruções reutilizáveis de análise e redação.
- templates/ armazena modelos reutilizáveis.
- scripts/ armazena automações e validações.

## Organização das Competências

Cada mês deve usar o caminho `reports/AAAA-MM/`.

Exemplo: `reports/2026-06/`.

Cada competência é autocontida. Não misturar arquivos de meses diferentes nem criar análises fora da competência ativa.

## Ordem de Carregamento

Toda competência deve carregar o contexto exatamente nesta ordem:

1. README.md
2. START_HERE.md
3. COMANDO.md
4. prompts/00_MASTER_SPECIFICATION.md
5. prompts/01_PROMPT_RELATORIO_EXECUTIVO.md até prompts/08_RELATORIO_EXECUTIVO.md, em ordem numérica
6. Todos os arquivos de knowledge/, em ordem numérica
7. Todos os arquivos disponíveis em history/
8. manifest.json da competência
9. reports/AAAA-MM/source/

## Estrutura Interna da Competência

### source/

- armazena PDFs originais;
- mantém nomes originais;
- não permite renomeação manual;
- funciona como evidência técnica.

### analysis/

Armazena exclusivamente:

- ga4_analise.md;
- google_ads_analise.md;
- gsc_analise.md;
- semrush_analise.md.

### output/

Armazena:

- resumo_executivo.md;
- AzMina_Relatorio_Executivo_AAAA_MM.docx;
- AzMina_Relatorio_Executivo_AAAA_MM.pdf.

DOCX e PDF só são gerados no ChatGPT após revisão humana.

### manifest.json

Registra:

- competência;
- PDFs encontrados;
- tipo de cada relatório;
- fontes obrigatórias presentes ou ausentes;
- status da validação;
- status da revisão;
- status de encerramento.

Nenhuma análise começa antes da validação do manifest.

## Convenção dos Arquivos Originais

- preservar nomes originais exportados;
- não renomear manualmente;
- não alterar PDFs;
- não mover arquivos entre competências;
- registrar todos os arquivos no manifest;
- identificar relatórios por nome e conteúdo.

## Arquivos Não Versionados

`reports/${COMPETENCIA}/source/` é uma área exclusivamente local.

Os PDFs usados como fonte de análise não devem ser enviados ao GitHub.

DOCX e PDF finais gerados em `reports/${COMPETENCIA}/output/` também permanecem locais.

Markdown, JSON, CSV, prompts, knowledge, history, scripts e templates continuam versionados normalmente.

## Fluxo Operacional Mensal

### 1. Início da competência

- informar competência no formato AAAA-MM;
- criar ou validar estrutura;
- criar ou validar manifest.

### 2. Importação dos PDFs

- copiar arquivos para source/;
- manter nomes originais.

### 3. Validação

- listar PDFs;
- identificar fontes;
- confirmar quatro fontes obrigatórias;
- interromper se houver inconsistência crítica.

### 4. Carregamento de contexto

- ler prompts/;
- ler knowledge/;
- ler history/;
- ler apenas PDFs da competência ativa.

### 5. Geração das análises

Gerar os quatro arquivos de analysis/.

### 6. Geração do resumo executivo

Gerar `reports/AAAA-MM/output/resumo_executivo.md`.

### 7. Revisão humana

- revisar análises;
- solicitar correções quando necessário;
- não atualizar history ou knowledge antes da aprovação.

### 8. Finalização editorial

- gerar DOCX e PDF no ChatGPT.

### 9. Encerramento

Após aprovação:

- atualizar history/evolucao_mensal.md;
- atualizar history/indicadores_historicos.csv;
- atualizar knowledge aplicável;
- atualizar knowledge/10_LICOES_APRENDIDAS.md quando necessário;
- atualizar knowledge/11_CHANGELOG.md;
- atualizar manifest.json.

## Entregáveis Mensais

- PDFs originais preservados;
- ga4_analise.md;
- google_ads_analise.md;
- gsc_analise.md;
- semrush_analise.md;
- resumo_executivo.md;
- DOCX final;
- PDF final;
- manifest atualizado;
- histórico atualizado após aprovação.

## Princípios Analíticos

- comparar sempre com o mês imediatamente anterior;
- diferenciar volume de eficiência;
- não interpretar métrica isoladamente;
- correlacionar fontes;
- posição média menor é melhor;
- não confundir comparação anual com mensal no SEMrush;
- considerar demanda e sazonalidade no Google Ads;
- não tratar queda pontual como problema estrutural;
- priorizar páginas com muitas impressões e CTR baixo;
- observar volume absoluto antes de destacar percentuais;
- declarar divergências entre ferramentas;
- separar fato, hipótese e recomendação.

## Padrão Editorial

- português brasileiro;
- tom consultivo e executivo;
- Markdown simples;
- sem emojis;
- sem tabelas;
- sem travessões;
- sem referências a PDFs no texto final;
- sem linguagem de resumo automático;
- sem causalidade não comprovada;
- recomendações práticas e priorizadas;
- resumo executivo compatível com até duas páginas finais.

## Papel do Dashboard

Dashboards e plataformas continuam sendo a camada operacional. O projeto deve interpretar, correlacionar e priorizar, sem repetir extensivamente números já disponíveis no dashboard. Deve manter evidência numérica mínima para sustentar conclusões.

## Histórico e Base de Conhecimento

### history/

Guarda resultados mensais aprovados e série histórica.

### knowledge/

Guarda memória permanente e estrutural.

Variações mensais comuns pertencem a history/, não a knowledge/.

## Versionamento

Toda alteração relevante deve ser versionada em Git. Comandos básicos de referência:

```bash
git status
git add .
git commit -m "mensagem"
git push origin main
```

## Regras de Qualidade

- competência autocontida;
- validação antes da análise;
- precisão numérica;
- correlação entre fontes;
- comparação correta;
- hipóteses identificadas;
- recomendações proporcionais à evidência;
- preservação dos PDFs;
- revisão humana antes do encerramento;
- atualização de history e knowledge apenas após aprovação;
- working tree limpo ao final de cada etapa versionada.

## Critério de Conclusão

### Pronta para revisão humana

Quatro análises e resumo executivo gerados.

### Operacionalmente concluída

Aprovação humana, histórico, knowledge aplicável, changelog e manifest atualizados.

### Pronta para entrega

DOCX e PDF gerados e armazenados em output/.

## Evolução do Projeto

A arquitetura pode evoluir com:

- scripts de validação;
- templates;
- leitura automática de PDFs;
- integração com APIs;
- comparação automática com histórico;
- análises preditivas;
- replicação para outros clientes.

Qualquer evolução deve preservar:

- competência autocontida;
- validação antes da análise;
- revisão humana;
- separação entre evidência, análise e entrega final.
