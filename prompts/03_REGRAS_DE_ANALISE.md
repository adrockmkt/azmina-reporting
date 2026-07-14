# 03 REGRAS DE ANÁLISE

# Regras de Análise dos Relatórios AzMina

## Objetivo

Este documento define como interpretar e correlacionar dados de Google Analytics 4, Google Ads, Google Search Console e SEMrush. Seu objetivo é evitar análises isoladas, conclusões frágeis, causalidade não comprovada, leitura invertida de métricas, confusão entre volume e eficiência, recomendações genéricas e mudanças estruturais baseadas em variações pontuais.

Usar em conjunto com prompts/00_MASTER_SPECIFICATION.md, prompts/02_ESTILO_DE_ESCRITA.md, prompts/06_HIPOTESES_E_CONFIANCA.md, prompts/07_ESTILO_CONSULTIVO.md e prompts/08_RELATORIO_EXECUTIVO.md.

## Princípios Gerais

- nunca analisar métrica isoladamente quando houver contexto disponível;
- sempre comparar com o mês imediatamente anterior;
- sempre consultar o histórico antes de classificar variação como tendência;
- sempre diferenciar fato, hipótese e recomendação;
- sempre diferenciar volume e eficiência;
- sempre observar valor absoluto antes de destacar percentual;
- sempre procurar os elementos responsáveis pelo resultado geral;
- sempre correlacionar fontes quando houver relação possível;
- sempre considerar demanda, sazonalidade, contexto editorial e campanhas;
- nunca tratar sintoma como causa;
- nunca transformar correlação em causalidade;
- nunca transformar mês atípico em tendência estrutural;
- nunca omitir divergências entre ferramentas;
- nunca recomendar mudanças amplas com evidência fraca;
- sempre sustentar conclusões com evidência numérica quando disponível.

A análise deve responder: o que mudou, onde mudou, quanto mudou, qual fonte sustenta a leitura, quais páginas, canais, campanhas, consultas ou eventos explicam o resultado, qual é a causa provável, qual é o impacto, qual ação deve ser priorizada e qual é o nível de confiança da recomendação.

## Validação Antes da Análise

Nenhuma análise pode começar antes de validar a competência e o manifest.json, confirmar as quatro fontes obrigatórias, verificar consistência de períodos, legibilidade dos PDFs, possíveis duplicidades, pertencimento dos dados ao mês ativo e a definição dos períodos atual e anterior.

Interromper quando houver fonte obrigatória ausente, mistura de competências, dados incompatíveis, arquivo ilegível, comparação ambígua ou ausência de informação mínima. Não gerar análise parcial quando a ausência comprometer a interpretação consolidada.

## Hierarquia Analítica das Fontes

Nenhuma fonte é sempre superior. Cada uma responde a pergunta distinta e a interpretação deve respeitar sua natureza.

### Google Analytics 4

Responde principalmente sobre audiência, comportamento, aquisição, canais, engajamento, eventos, consumo de conteúdo, páginas, países, dispositivos e comportamento pós clique.

### Google Ads

Responde principalmente sobre exposição paga, geração de tráfego, eficiência de mídia, custo, conversões, campanhas, grupos, anúncios, palavras-chave, dispositivos e captura da demanda disponível.

### Google Search Console

Responde principalmente sobre presença orgânica real no Google, cliques, impressões, CTR, posição média, páginas, consultas, países, dispositivos e cobertura de demanda orgânica.

### SEMrush

Responde principalmente sobre análise mensal complementar ao Search Console, páginas, países, dispositivos, rankings, monitoramento de posição, autoridade, backlinks, problemas técnicos, oportunidades de SEO e contexto histórico e competitivo.

## Ordem Recomendada de Leitura

1. Validar competência e manifest.
2. Ler relatório consolidado geral, quando existir.
3. Ler GA4 para compreender audiência e comportamento.
4. Ler Google Ads para compreender mídia paga e demanda.
5. Ler Google Search Console para compreender busca orgânica.
6. Ler relatório específico do SEMrush.
7. Consultar history/.
8. Consultar knowledge/.
9. Cruzar as fontes.
10. Identificar fatos centrais e divergências.
11. Formular hipóteses.
12. Priorizar riscos e oportunidades.
13. Definir recomendações.
14. Gerar análises individuais e consolidar o resumo executivo.

A ordem pode ser ajustada quando PDFs estiverem consolidados, mas as quatro fontes devem ser identificadas individualmente.

## Camada Mínima de Evidência Numérica

Toda afirmação de crescimento, queda, melhora, piora, avanço, regressão, estabilidade, ganho de eficiência ou perda de eficiência deve incluir, quando disponíveis, valor atual, valor anterior, variação absoluta e variação percentual.

Nem os quatro valores precisam aparecer em cada seção. As análises técnicas devem manter evidência suficiente para auditoria e o resumo executivo deve usar apenas números essenciais. Percentuais de base pequena exigem contexto, aproximações devem ser identificadas, valores monetários devem preservar a moeda da fonte e inconsistências matemáticas devem ser verificadas antes da análise.

## Regras para Variação Absoluta e Percentual

```text
variação absoluta = valor atual - valor anterior

variação percentual = (valor atual - valor anterior) / valor anterior
```

- variação percentual em base pequena pode ser enganosa;
- crescimento de 100% de 1 para 2 unidades tem baixo impacto absoluto;
- quedas percentuais devem considerar o peso da métrica;
- nunca destacar percentual sem avaliar volume;
- quando o período anterior for zero, não calcular percentual convencional;
- nesses casos, informar que não há base comparável válida.

## Classificação dos Tipos de Problema

Classificar o comportamento antes de recomendar ação. Um mês pode apresentar mais de um tipo de problema.

- Problema de aquisição: queda ou concentração em canais, origens ou campanhas.
- Problema de visibilidade orgânica: queda de impressões, páginas ranqueadas ou cobertura de consultas.
- Problema de CTR: exposição relevante com baixa conversão em clique.
- Problema de posicionamento: páginas ou consultas perdem ranking.
- Problema de demanda: procura disponível diminui sem perda equivalente de posicionamento ou alcance técnico.
- Problema de eficiência de mídia: custo, CPA, taxa de conversão ou ROAS pioram.
- Problema pós clique: tráfego chega, mas engajamento ou conversão diminuem.
- Problema editorial: conteúdo não atende à intenção, está desatualizado ou perde relevância.
- Problema técnico: rastreamento, indexação, performance, schema, canonicals, eventos ou implementação afetam dados.
- Problema de mensuração: ferramentas ou eventos apresentam divergências, anomalias ou ausência de coleta.
- Problema de concentração: poucos canais, páginas, campanhas ou temas sustentam parcela excessiva do resultado.

## Regras de Correlação entre GA4 e GSC

### Crescimento em ambas as fontes

Crescimento de cliques no GSC acompanhado de crescimento de sessões orgânicas no GA4 reforça avanço orgânico real.

### Queda em ambas as fontes

Queda de cliques no GSC acompanhada de queda de sessões orgânicas no GA4 reforça retração de tráfego orgânico. A causa ainda deve ser investigada entre demanda, impressões, CTR, posição, páginas e consultas.

### Impressões sobem e cliques não acompanham

Pode indicar perda de eficiência, expansão para consultas menos clicáveis, piora de CTR, snippets menos competitivos ou exposição em posições inferiores.

### Cliques crescem e sessões orgânicas não acompanham

Pode indicar diferença de mensuração, consentimento, redirecionamento, comportamento pós clique, recorte de canal ou concentração em páginas específicas. Não escolher causa sem validação.

### Posição melhora e tráfego cai

Pode indicar redução de demanda, perda de consultas de alto volume, melhora em termos de menor procura ou mudança no mix de palavras-chave.

### Posição piora e cliques crescem

Pode indicar aumento de demanda, crescimento de impressões, ganho em termos amplos ou melhora de CTR compensando perda de posição.

## Regras de Correlação entre Google Ads e GA4

- Cliques pagos crescem e sessões Google CPC não acompanham: investigar mensuração, redirecionamentos, consentimento, parâmetros, sessões não atribuídas e diferença entre clique e sessão.
- Sessões pagas crescem e engajamento cai: pode indicar expansão de alcance com menor qualidade pós clique.
- Impressões estáveis e conversões caem: pode indicar menor intenção de busca, queda de taxa de conversão, mudança de mix de campanha, piora pós clique ou evento de conversão alterado.
- Custo cai e conversões caem mais: indica perda de eficiência, não apenas redução de investimento.
- Custo cresce e conversões crescem proporcionalmente: avaliar CPA, taxa de conversão e qualidade antes de concluir melhora.
- Google CPC com melhor engajamento no GA4: usar como evidência de qualidade do tráfego, sem confundir engajamento com conversão final.

## Regras de Correlação entre Google Ads e Demanda

Avaliar impressões, cliques, termos de pesquisa, comportamento histórico, sazonalidade editorial, temas ativos, campanhas pausadas ou ativadas, disponibilidade de busca e sequência dos meses anteriores.

- queda de impressões pode indicar menor demanda ou perda de participação;
- impressões estáveis com queda de conversão indicam problema posterior à exposição;
- queda de cliques com CTR estável pode indicar menor procura;
- queda de CTR com impressões estáveis pode indicar menor aderência dos anúncios;
- queda após meses consecutivos de alta deve ser contextualizada antes de sugerir reestruturação.

## Regras de Correlação entre GSC e SEMrush

GSC é a fonte real de cliques e impressões orgânicas. SEMrush pode trazer recortes, monitoramento e contexto adicional. Verificar divergências por período, dispositivo, país e filtro.

Rankings do SEMrush não substituem posição média do GSC e estimativas do SEMrush não devem ser tratadas como tráfego real. Gráficos anuais não substituem comparação mensal. Se ambas as fontes apontarem perda de posição, a evidência de regressão orgânica é mais forte. Se divergirem, declarar a divergência.

## Regras Específicas de GA4

- diferenciar usuários, sessões e visualizações;
- analisar usuários novos em relação aos usuários totais;
- comparar sessões com sessões engajadas;
- interpretar tempo médio junto com eventos e páginas;
- avaliar canais e origem/mídia;
- identificar concentração em Organic Search e Direct;
- considerar Google CPC como canal de aquisição e qualidade;
- analisar eventos personalizados do AzMina;
- diferenciar evento registrado de conversão estratégica;
- investigar valores monetários artificiais atribuídos a eventos;
- considerar anomalias geográficas e tráfego automatizado;
- não assumir leitura humana apenas por visualização de página;
- não chamar scroll de conversão final sem contexto;
- não interpretar países e cidades isoladamente quando houver sinais de automação.

### Regras para Anomalias do GA4

Exemplos: página com visualizações e eventos, mas tempo médio zerado; tráfego concentrado em países ou cidades atípicas; alto volume de novos usuários com baixo engajamento; eventos incompatíveis com sessões; divergência entre testes manuais e dados consolidados; sessões com comportamento provável de crawler, monitoramento ou pré-visualização.

Conduta: declarar anomalia, separar dado observado de hipótese, evitar corrigir dados retroativamente sem evidência, recomendar validação via DebugView, GTM, logs ou testes controlados e não concluir automaticamente falha do GA4.

## Regras Específicas de Google Ads

- começar pelos indicadores gerais;
- avaliar conversões e todas as conversões separadamente;
- entender eventos que compõem conversões;
- avaliar custo, CPA, taxa de conversão, CPC, CTR e ROAS;
- separar volume e eficiência;
- identificar campanhas, grupos e palavras-chave responsáveis pelo resultado;
- observar dispositivos e criativos quando houver dado suficiente;
- considerar Google Ad Grants quando aplicável;
- tratar conversões fracionadas conforme a atribuição;
- não comparar campanhas de objetivos diferentes apenas pelo CPA;
- não recomendar pausa por percentual alto em base pequena;
- priorizar realocação quando a ineficiência estiver concentrada;
- identificar termos amplos ou pouco aderentes.

### Regras para Google Ad Grants

Quando aplicável, considerar natureza não comercial da conta, limite e regras do programa, relevância e qualidade, aderência à missão, diferença entre valor de mídia e investimento financeiro real, objetivos de tráfego, leitura, newsletter, app e apoio e impossibilidade de interpretar ROAS de forma puramente comercial quando não houver receita real.

## Regras Específicas de GSC

- interpretar cliques, impressões, CTR e posição em conjunto;
- posição média menor é melhor;
- evitar posição média isolada;
- verificar páginas, consultas, países e dispositivos;
- priorizar páginas com alto volume de impressões e CTR baixo;
- identificar perda de visibilidade e ganho de eficiência;
- diferenciar demanda de ranking;
- considerar que mudança do mix de consultas altera posição média;
- não recomendar alteração de title apenas porque CTR geral caiu;
- verificar página e consulta responsáveis;
- não confundir página de alto volume com página de melhor eficiência.

## Regras Específicas de SEMrush

- identificar período mensal e mês anterior usados na comparação;
- separar gráficos anuais;
- conferir sentido da seta e da métrica antes de usar percentual;
- interpretar posição média de forma inversa ao volume;
- separar desktop e mobile;
- não somar blocos de dispositivos diferentes;
- verificar se tabela representa país ou página;
- priorizar URLs completas quando disponíveis;
- não inventar nome de URL truncada;
- usar apenas URLs identificáveis com segurança;
- considerar bases pequenas;
- diferenciar cliques reais de estimativas;
- tratar backlinks, autoridade e auditoria como complementares;
- identificar oportunidades de CTR, páginas históricas com queda e conteúdos novos com crescimento;
- não afirmar que otimização anterior gerou resultado sem histórico documentado.

## Regras para Posição Média

- número menor representa melhor posicionamento;
- número maior representa pior posicionamento;
- passagem de 8 para 6 é melhora;
- passagem de 6 para 8 é piora;
- percentual positivo exibido pela ferramenta pode significar melhora ou piora conforme seu cálculo;
- verificar valores absolutos atual e anterior;
- nunca interpretar apenas seta ou percentual;
- contextualizar posição por impressões, cliques e mix de consultas.

## Regras para CTR

- interpretar CTR em relação a impressões e posição;
- CTR baixa em página com alto volume de impressões é oportunidade;
- CTR alta em base pequena não significa impacto estratégico;
- aumento de CTR com queda de impressões representa maior eficiência sobre menor alcance;
- queda de CTR com crescimento de impressões pode ocorrer por expansão para termos mais amplos;
- alterações de title e description devem considerar intenção de busca;
- não recomendar clickbait;
- títulos devem preservar precisão editorial e temas sensíveis.

## Regras para Páginas e Conteúdos

Identificar páginas responsáveis por ganho ou queda, páginas com alto volume e baixa eficiência, históricas, novas, sazonais, sensíveis, clusters relevantes, oportunidades de interlinkagem e conteúdos que precisam de atualização.

Não listar URLs sem explicar relevância, nem inventar interpretação apenas pelo slug quando houver dúvida. Conteúdos sobre saúde, aborto e medicamentos exigem cuidado editorial. Recomendações devem preservar rigor, segurança e contexto jornalístico, sem sugerir conteúdo apenas para capturar tráfego.

## Regras para Consultas e Palavras-Chave

Identificar intenção informacional, navegacional ou temática; distinguir termos de marca e não marca; observar volume, cliques, CTR e posição; priorizar consultas intermediárias com potencial; considerar alinhamento editorial e termos sensíveis; evitar pautas só por volume e repetição artificial de palavras-chave; priorizar cobertura semântica, entidades e relação com páginas existentes.

## Regras para Países e Dispositivos

Brasil é o principal mercado. Portugal, Angola e Moçambique são mercados lusófonos recorrentes. Estados Unidos e outros países exigem cautela. Contextualizar percentuais em países de base pequena.

Mobile concentra a maior parte do tráfego e desktop pode se comportar de forma distinta. Não somar dados de desktop e mobile quando o relatório trouxer blocos separados. Priorizar dispositivos conforme volume e impacto.

## Regras para Histórico

Usar history/ para identificar sequência de crescimento ou queda, verificar recorrência, comparar páginas e campanhas, contextualizar meses atípicos, verificar recomendações anteriores, impedir repetição de conclusões descartadas e identificar padrões sazonais.

Não usar history/ para substituir dados atuais, copiar conclusões antigas, forçar tendência ou tratar hipótese antiga como fato atual.

## Regras para Sazonalidade

Antes de concluir problema estrutural, considerar calendário editorial, repercussão de temas, datas comemorativas, férias, Carnaval, Dia Internacional da Mulher, ciclos de interesse em saúde e sexualidade, publicação de reportagens, campanhas ativas e redução de procura. Sem série histórica suficiente, tratar sazonalidade como hipótese.

## Regras para Dados Divergentes

Quando houver divergência, confirmar períodos, filtros, dispositivos, países, definição da métrica e origem da fonte. Verificar atribuição e mensuração, registrar a divergência e recomendar investigação quando necessário. Nunca ocultar divergência para construir narrativa mais simples.

## Classificação de Evidência

### Evidência forte

Duas ou mais fontes independentes convergem.

### Evidência moderada

Uma fonte principal sustenta a leitura e as demais não contradizem.

### Evidência fraca

Métrica isolada, base pequena, dado incompleto ou fontes divergentes.

A classificação orienta linguagem e prioridade, mas não precisa aparecer mecanicamente no texto final.

## Priorização das Recomendações

### Alta prioridade

Risco direto de perda de tráfego, problema de mensuração, campanha com custo relevante e baixa eficiência, página estratégica com alto volume e CTR muito baixo, problema técnico de indexação, oportunidade clara de impacto relevante ou dependência excessiva de poucos canais ou campanhas.

### Média prioridade

Atualização de conteúdo, revisão de snippets, interlinkagem, expansão de cluster, teste de campanha, ajuste controlado de orçamento ou validação no próximo ciclo.

### Baixa prioridade

Refinamento, oportunidade de base pequena, ação futura, teste sem urgência ou melhoria complementar.

A prioridade deve considerar impacto, urgência, esforço, risco, nível de confiança e alinhamento editorial.

## Critérios para Pontos Fortes

Um ponto forte deve ter relevância estratégica, evidência, impacto explicado e ganho real de volume, eficiência, qualidade, diversificação ou estabilidade. Não deve depender apenas de percentual.

## Critérios para Pontos de Atenção

Um ponto de atenção deve representar risco ou limitação real, ter evidência, explicar impacto, ser proporcional, não transformar variação pontual em crise e indicar ação ou acompanhamento.

## Critérios para Recomendações

Toda recomendação deve ser específica, executável, conectada ao diagnóstico, proporcional à evidência, compatível com o contexto editorial, priorizada e acompanhável no próximo ciclo.

## Regras de Ouro

- nunca analisar antes da validação;
- nunca misturar competências;
- nunca usar dados de outro mês como atuais;
- nunca confundir gráficos anuais com mensais;
- nunca interpretar posição média de forma invertida;
- nunca destacar percentual sem volume;
- nunca tratar impressão como clique, clique como sessão, sessão como usuário ou evento como conversão final sem contexto;
- nunca tratar todas as conversões do Google Ads como equivalentes;
- nunca transformar hipótese em fato;
- nunca ocultar divergências;
- nunca recomendar mudança ampla com evidência fraca;
- sempre correlacionar fontes;
- sempre considerar histórico;
- sempre diferenciar demanda de eficiência;
- sempre considerar contexto editorial;
- sempre aplicar evidência numérica;
- sempre priorizar impacto e execução;
- sempre preservar cautela em temas sensíveis.

## Checklist Analítico

Antes de finalizar uma análise, validar:

- competência, período atual e período anterior corretos;
- quatro fontes identificadas;
- números revisados e cálculos coerentes;
- posição média interpretada corretamente;
- comparação mensal separada da anual;
- volume absoluto considerado;
- páginas, campanhas e consultas responsáveis identificadas;
- divergências registradas;
- sazonalidade tratada com cautela;
- hipóteses identificadas;
- recomendações proporcionais;
- temas sensíveis tratados com responsabilidade;
- texto compatível com prompts/02_ESTILO_DE_ESCRITA.md.
