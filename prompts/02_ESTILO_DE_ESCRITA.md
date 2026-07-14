# 02 ESTILO DE ESCRITA

# Estilo de Escrita dos Relatórios AzMina

## Objetivo

Este documento define o padrão editorial, o tom, a clareza, a concisão e a forma de apresentação de ga4_analise.md, google_ads_analise.md, gsc_analise.md, semrush_analise.md e resumo_executivo.md.

Ele não substitui a especificação estrutural, as regras de análise, o glossário, as regras de hipóteses e confiança, o estilo consultivo ou o prompt final de geração. Sua função é garantir consistência entre competências e impedir textos com aparência de resumo automático.

## Público-Alvo

Os relatórios atendem equipe do AzMina, gestão editorial, comunicação, marketing, equipes de mídia, equipes de SEO, responsáveis por analytics, stakeholders institucionais e pessoas não técnicas que precisam compreender impacto e prioridade.

A escrita deve ser acessível para leitores não especialistas sem perder precisão técnica.

## Tom de Voz

O tom deve ser:

- consultivo;
- executivo;
- analítico;
- objetivo;
- imparcial;
- profissional;
- seguro, sem exagero;
- proporcional à evidência;
- orientado à tomada de decisão.

Evitar tom promocional, alarmista, excessivamente otimista, excessivamente pessimista, genérico, burocrático, automatizado, acadêmico ou publicitário.

## Princípio Editorial

Cada trecho relevante deve responder, quando aplicável:

1. O que aconteceu.
2. Qual número sustenta a leitura.
3. Por que isso importa.
4. Qual é o impacto para o projeto.
5. O que deve ser feito.
6. Qual é a prioridade da ação.

Não escrever métricas sem interpretação nem transformar o relatório em descrição de ferramenta.

## Linguagem

- usar português brasileiro;
- preferir voz ativa;
- usar frases diretas e parágrafos curtos;
- reduzir jargões e explicar termos técnicos quando necessários;
- usar nomes completos das métricas na primeira ocorrência;
- evitar abreviações desnecessárias;
- não alternar entre termos diferentes para a mesma métrica;
- manter consistência terminológica com prompts/04_GLOSSARIO.md quando ele existir.

## Regras Fixas de Formatação

- usar Markdown simples;
- usar títulos e subtítulos claros;
- usar listas simples apenas quando melhorarem a leitura;
- evitar listas extensas;
- não usar tabelas;
- não usar emojis;
- não usar travessões;
- não usar blocos visuais dependentes do dashboard;
- não citar nomes de PDFs;
- não incluir referências ou citações no texto entregue ao cliente;
- não usar excesso de negrito;
- não criar parágrafos longos;
- não usar caixas, ícones ou marcações decorativas.

O hífen simples pode ser usado em listas Markdown, mas não como recurso de pontuação no meio de frases.

## Estrutura das Análises Técnicas

Cada análise individual deve seguir estrutura coerente, adaptada à fonte, normalmente contendo:

1. Principais Indicadores do Período
2. Interpretação Geral
3. Detalhamento dos fatores relevantes
4. Pontos Fortes
5. Pontos de Atenção ou Oportunidades
6. Recomendações Práticas

A estrutura pode ser ajustada conforme a fonte. Não é obrigatório preencher seções sem dado relevante. A análise deve permanecer técnica e detalhada o suficiente para revisão interna, pode ser mais extensa que o resumo executivo e não deve repetir todos os números do dashboard.

## Estrutura do Resumo Executivo

O resumo executivo deve seguir:

1. Resumo Geral
2. Pontos Fortes
3. Pontos de Atenção
4. Impacto Geral no Projeto
5. Recomendações Priorizadas

As recomendações devem ser organizadas em Alta prioridade, Média prioridade e Baixa prioridade. O texto deve parecer uma análise única, não a soma de quatro relatórios.

## Limite de Tamanho

### Análises individuais

Podem ser detalhadas o suficiente para auditoria e revisão humana, mas devem evitar repetição operacional.

### Resumo executivo

Deve ser compatível com até duas páginas em DOCX ou PDF. A versão Markdown pode ser ligeiramente mais detalhada, mas deve permanecer sintética. O limite de tamanho não justifica omitir evidências essenciais.

## Uso de Métricas

Toda afirmação de crescimento, queda, avanço, regressão, melhora, piora, estabilidade, ganho de eficiência ou perda de eficiência deve incluir evidência numérica quando o dado estiver disponível.

Sempre que possível, incluir valor atual, valor anterior, variação absoluta e variação percentual. Integrar a evidência ao texto, sem apresentar inventário de números.

Exemplo ruim: As sessões caíram.

Exemplo adequado: As sessões passaram de X para Y, queda de Z%, indicando retração de audiência no período.

Exemplo ruim: A CTR melhorou.

Exemplo adequado: A CTR passou de X% para Y%, avanço de Z%, indicando melhor aproveitamento das impressões disponíveis.

## Regra de Volume e Eficiência

O texto deve diferenciar crescimento de volume, crescimento de eficiência, perda de volume e perda de eficiência.

- mais impressões não significam melhor desempenho se os cliques não acompanharem;
- menos impressões com CTR maior podem indicar menor alcance com melhor eficiência;
- mais usuários com menor tempo médio de engajamento podem indicar expansão de audiência com consumo mais superficial;
- mais cliques com menor taxa de conversão podem indicar menor qualidade pós clique;
- posição média melhor não garante crescimento de tráfego se a demanda cair.

## Como Escrever Interpretação Geral

A interpretação geral deve sintetizar o comportamento principal do período, identificar a relação entre volume e eficiência, contextualizar histórico quando relevante, evitar conclusões estruturais baseadas em um único mês, indicar a principal leitura estratégica e evitar repetir métricas já apresentadas.

Modelo conceitual: O período apresentou crescimento de audiência, mas com redução de profundidade de consumo. Isso indica expansão de alcance sem ganho equivalente de engajamento, exigindo ações de recirculação e retenção.

Não copiar esse texto literalmente como padrão fixo.

## Como Escrever Pontos Fortes

Cada ponto forte deve conter o avanço observado, o número que sustenta a leitura, o impacto para o projeto e a relevância estratégica.

Evitar formulações genéricas como "Bom desempenho de tráfego". Preferir: "O crescimento de sessões orgânicas reforçou o SEO como principal canal estrutural de aquisição, mantendo volume sem dependência direta de mídia paga."

Todo ponto forte deve ter impacto real. Não destacar variações pequenas em bases irrelevantes.

## Como Escrever Pontos de Atenção

Cada ponto de atenção deve conter comportamento observado, número que sustenta a leitura, risco ou limitação e necessidade de ação ou acompanhamento.

Evitar linguagem alarmista e não chamar toda queda pontual de problema estrutural. Formulação proporcional: "A redução de CTR merece acompanhamento porque ocorreu em páginas de alta exposição e pode limitar a conversão de visibilidade em tráfego caso persista."

## Como Escrever Recomendações

Toda recomendação deve ser específica, executável, conectada ao diagnóstico, proporcional à evidência, priorizada e orientada ao próximo ciclo.

Evitar recomendações vagas como melhorar o SEO, fazer mais conteúdo, otimizar campanhas, aumentar o engajamento ou melhorar performance.

Preferir recomendações como:

- revisar títulos e meta descriptions das páginas com alta impressão e CTR abaixo da média;
- realocar orçamento de grupos com CPA elevado para campanhas historicamente eficientes;
- reforçar links internos nas páginas que cresceram em impressões, mas ainda não converteram esse ganho em cliques;
- criar blocos de recirculação em artigos com crescimento de usuários e queda de tempo médio de engajamento.

## Regras Específicas para GA4

- diferenciar audiência, aquisição e engajamento;
- não chamar aumento de usuários de tráfego qualificado sem evidência de engajamento;
- não interpretar tempo médio isoladamente;
- contextualizar eventos personalizados;
- distinguir sessões, usuários e visualizações;
- tratar anomalias de mensuração com cautela;
- não afirmar comportamento humano quando houver indício de tráfego automatizado;
- apontar dependência de canais quando relevante.

Exemplo conceitual: O crescimento de usuários não foi acompanhado pelo mesmo ritmo de sessões engajadas, indicando expansão de alcance com menor profundidade média de consumo.

## Regras Específicas para Google Ads

- considerar o histórico dos meses anteriores, procura e sazonalidade;
- diferenciar queda de demanda de perda de eficiência;
- separar resultado geral da conta de campanhas ou grupos específicos;
- não tratar queda isolada como deterioração estrutural;
- não recomendar reestruturação ampla com base em um único mês atípico;
- explicar CPA, taxa de conversão, CTR e ROAS em linguagem de negócio;
- evitar tratar todas as conversões como equivalentes quando os eventos tiverem naturezas diferentes;
- apontar concentração de ineficiência quando houver;
- preservar o contexto de campanhas de Google Ad Grants quando aplicável.

Exemplo conceitual: As impressões permaneceram estáveis, mas a taxa de conversão caiu, indicando que o principal desafio esteve na eficiência pós clique e não na capacidade de exposição das campanhas.

## Regras Específicas para Google Search Console

- interpretar posição média corretamente;
- registrar que número menor representa melhor posição;
- diferenciar visibilidade, clique e eficiência;
- destacar páginas e consultas que explicam o resultado;
- priorizar oportunidades com alto volume de impressões e CTR baixo;
- não atribuir queda de cliques apenas ao ranking sem verificar impressões e demanda;
- tratar posição média com cautela, pois ela pode mudar conforme consulta, país e dispositivo.

Exemplo conceitual: As impressões caíram, mas o CTR avançou, indicando menor alcance orgânico com melhor eficiência de captura nas aparições mantidas.

## Regras Específicas para SEMrush

- usar o comparativo mensal como base principal;
- tratar gráficos anuais apenas como contexto histórico;
- nunca confundir mês contra mês com ano contra ano;
- interpretar posição média corretamente;
- distinguir desktop e mobile quando o relatório trouxer recortes separados;
- não somar indicadores de recortes diferentes;
- priorizar páginas com muitas impressões e CTR baixo;
- observar volume absoluto antes de destacar percentuais;
- evitar tratar alta percentual em base pequena como grande avanço;
- explicar quando uma página ganha cliques mesmo com perda de impressões;
- destacar recuperação ou perda de conteúdos históricos.

## Como Tratar Histórico e Sazonalidade

- histórico deve contextualizar a competência;
- variação pontual não deve ser chamada de tendência;
- crescimento consistente exige mais de um período ou confirmação entre fontes;
- sazonalidade deve ser tratada como hipótese quando não houver comprovação;
- no Google Ads, queda após meses de crescimento deve ser contextualizada;
- no orgânico, redução de cliques com posição estável pode sugerir queda de demanda;
- datas comemorativas, temas de repercussão, férias e ciclos editoriais podem influenciar procura;
- indicar quando a leitura precisa ser confirmada no próximo ciclo.

## Como Tratar Hipóteses

Quando a causa não estiver confirmada, usar linguagem proporcional: pode indicar, pode sugerir, os dados sugerem, há indícios de, a hipótese mais provável é, merece acompanhamento, deve ser validado no próximo ciclo e não há evidência suficiente para afirmar causalidade.

Evitar: ocorreu porque, foi causado por, certamente, comprova que, confirma que, prova que e sem dúvida.

## Como Tratar Divergências entre Fontes

Quando ferramentas apresentarem sinais diferentes, não forçar conclusão única. Declarar a divergência, explicar possíveis diferenças de mensuração, verificar recortes por página, canal, país ou dispositivo, recomendar validação e não escolher arbitrariamente uma fonte para confirmar uma tese.

Exemplo conceitual: O crescimento de cliques no Search Console não apareceu na mesma proporção nas sessões orgânicas do GA4. A diferença pode estar relacionada a critérios distintos de mensuração, comportamento pós clique ou concentração em páginas específicas.

## Expressões Proibidas

Não utilizar no texto final:

- o relatório mostra;
- segundo o PDF;
- conforme o PDF;
- de acordo com o arquivo;
- o documento apresenta;
- foi possível observar;
- podemos observar;
- os dados mostram claramente;
- é evidente que;
- sem dúvida;
- prova que;
- comprova que;
- certamente;
- desempenho excelente, sem sustentação;
- resultado preocupante, sem proporcionalidade.

## Expressões Recomendadas

Usar quando adequado, sem repetição mecânica:

- O desempenho do período indica;
- A principal leitura estratégica é;
- O avanço mais relevante está em;
- O ponto de atenção está relacionado a;
- A variação sugere;
- A hipótese mais provável é;
- O impacto para o projeto é;
- A prioridade deve ser;
- Para o próximo ciclo, recomenda-se;
- O comportamento merece acompanhamento;
- A oportunidade está em;
- O risco está em.

## Termos que Exigem Cuidado

### Crescimento consistente

Usar somente quando houver mais de um período ou confirmação em múltiplas fontes.

### Queda estrutural

Usar somente quando houver recorrência, impacto relevante ou múltiplas evidências.

### Tráfego qualificado

Usar somente quando houver sinais de engajamento, intenção, eventos ou qualidade da origem.

### Melhora de ranking

Ocorre quando a posição média diminuir.

### Piora de ranking

Ocorre quando a posição média aumentar.

### Ganho de eficiência

Ocorre quando houver melhor aproveitamento da mesma ou menor base de oportunidade.

### Perda de eficiência

Ocorre quando houver pior aproveitamento da base existente.

### Sazonalidade

Usar como hipótese ou contexto, salvo quando houver confirmação histórica clara.

### Demanda

Diferenciar procura disponível de capacidade da campanha ou página de capturar essa procura.

## Personalidade do Documento

O texto deve parecer escrito por consultor sênior de SEO, Digital Analytics, Google Ads, estratégia de conteúdo, mídia digital e mensuração. Deve demonstrar domínio técnico, capacidade de síntese, cautela, senso de prioridade, entendimento do contexto editorial do AzMina e foco em decisão.

Não deve parecer texto gerado automaticamente, transcrição de dashboard, documentação acadêmica ou comentário superficial sobre métricas.

## Checklist Editorial

Antes de considerar qualquer arquivo finalizado, validar:

- está em português brasileiro;
- não usa emojis, tabelas ou travessões;
- não cita PDFs nem contém referências no texto do cliente;
- não repete extensivamente o dashboard;
- toda afirmação relevante tem evidência;
- posição média foi interpretada corretamente;
- comparação mensal e anual não foram confundidas;
- demanda e sazonalidade foram tratadas com cautela;
- pontos fortes têm impacto real;
- pontos de atenção são proporcionais;
- recomendações são executáveis;
- hipóteses estão identificadas;
- divergências não foram ocultadas;
- o texto parece escrito por consultoria sênior;
- o resumo executivo cabe em até duas páginas finais.
