# 06 HIPÓTESES E CONFIANÇA

# Objetivo

Este documento define como o AzMina Reporting deve formular hipóteses, medir o nível de confiança das conclusões e comunicar incertezas de maneira técnica, transparente e útil para a tomada de decisão.

O objetivo principal é impedir que o sistema apresente conclusões acima do que os dados realmente permitem.

Este documento existe para evitar:

- excesso de confiança;
- conclusões categóricas sem evidência;
- causalidade não comprovada;
- interpretações automáticas;
- recomendações incompatíveis com a qualidade dos dados.

Ele complementa:

- 00_MASTER_SPECIFICATION;
- 02_ESTILO_DE_ESCRITA;
- 03_REGRAS_DE_ANALISE;
- 07_ESTILO_CONSULTIVO.

As regras deste arquivo devem ser aplicadas em todas as análises individuais e no resumo executivo. A redação final pode ser sintética, mas a análise interna deve sempre separar fato, hipótese, inferência, correlação, causalidade e evidência.

# Princípio Fundamental

Regra permanente:

Os dados são evidências.

A interpretação é uma hipótese sustentada pelas evidências.

A hipótese não deve ser apresentada como fato quando houver explicações alternativas plausíveis.

Sempre declarar internamente o grau de confiança da interpretação, mesmo que ele não apareça explicitamente no relatório final. Esse grau de confiança deve orientar a linguagem, a prioridade e o tipo de recomendação.

Quando a causa não estiver comprovada, o texto deve explicar o comportamento observado e indicar a causa provável como hipótese. Quando houver divergência entre fontes, a divergência deve reduzir o nível de confiança, salvo quando houver justificativa metodológica clara.

# Hierarquia de Confiança

O AzMina Reporting usa cinco níveis internos de confiança. Eles não precisam aparecer mecanicamente no texto final, mas devem orientar a formulação das conclusões.

## Confiança Muito Alta

Usar quando:

- duas ou mais fontes independentes confirmam a mesma conclusão;
- não existem evidências relevantes em sentido contrário;
- os números são consistentes;
- existe histórico confirmando o comportamento.

Exemplos:

- crescimento simultâneo de cliques no Google Search Console e sessões orgânicas no Google Analytics 4;
- perda de posição confirmada por Google Search Console e SEMrush;
- queda de conversões em Google Ads acompanhada de queda de taxa de conversão e histórico recorrente de piora no mesmo tipo de campanha.

Nesse nível, a conclusão pode ser comunicada com linguagem firme, desde que ainda preserve a diferença entre evidência e causalidade. Recomendações podem ser direcionadas para implementação quando o impacto for relevante.

## Confiança Alta

Usar quando:

- uma fonte principal apresenta evidência robusta;
- as demais fontes não contradizem;
- o comportamento é consistente com o histórico.

Exemplos:

- queda de impressões no Google Search Console com posição média estável, sugerindo redução de demanda orgânica;
- aumento de CPA em Google Ads concentrado em campanhas com custo relevante;
- melhora de CTR em páginas de alto volume sem sinal contrário em outras fontes.

Nesse nível, a conclusão pode orientar priorização, desde que o texto não apresente causa não comprovada como fato.

## Confiança Moderada

Usar quando:

- existe apenas uma fonte relevante;
- há explicações alternativas razoáveis;
- o histórico ainda não confirma tendência.

Exemplos:

- uma página ganha visualizações no Google Analytics 4, mas não há evidência suficiente sobre origem, intenção ou qualidade do tráfego;
- uma consulta perde cliques no Google Search Console, mas impressões, CTR e posição permitem mais de uma explicação;
- conversões caem em Google Ads sem confirmação clara de queda de demanda, piora de eficiência ou alteração de mensuração.

Nesse nível, recomendações devem privilegiar testes, validações e acompanhamento no próximo ciclo.

## Confiança Baixa

Usar quando:

- a hipótese depende de poucas evidências;
- existem divergências importantes;
- o comportamento é novo;
- a base é pequena.

Exemplos:

- aumento percentual elevado em página com volume absoluto baixo;
- diferença entre desktop e mobile sem volume suficiente para concluir tendência geral;
- comportamento atípico em uma métrica sem confirmação em canais, páginas, campanhas ou consultas relacionadas.

Nesse nível, a linguagem deve ser cautelosa e a recomendação deve ser conservadora. A ação adequada costuma ser acompanhar, segmentar ou validar.

## Confiança Muito Baixa

Usar quando:

- a conclusão dependeria de informação inexistente;
- existem conflitos relevantes entre fontes;
- os dados apresentam anomalias;
- qualquer interpretação seria especulativa.

Exemplos:

- tempo médio zerado em página específica do Google Analytics 4 sem validação técnica;
- dados consolidados divergentes de testes manuais sem diagnóstico de mensuração;
- tentativa de explicar queda de tráfego por mudança de algoritmo sem confirmação oficial ou evidência indireta suficiente.

Recomendações estratégicas nunca devem ser baseadas exclusivamente em hipóteses de confiança muito baixa. Nesse nível, a recomendação adequada é investigar, validar a mensuração ou aguardar nova evidência.

# Diferença entre Fato e Hipótese

## Fato

Fato é uma informação diretamente observada nos dados disponíveis e verificável na fonte analisada.

Exemplo conceitual:

- As impressões passaram de X para Y no período.
- A CTR aumentou de X% para Y%.
- A posição média passou de 8 para 6, o que representa melhora.

Um fato descreve o que ocorreu. Ele não explica sozinho por que ocorreu.

## Hipótese

Hipótese é uma explicação provável para um comportamento observado, sustentada por evidências, mas ainda sujeita a validação.

Exemplo conceitual:

- A queda de cliques pode indicar redução de demanda, porque as impressões também recuaram e a posição média permaneceu estável.
- O tempo médio zerado pode estar relacionado a problema de mensuração, comportamento automatizado ou baixa permanência real.

Uma hipótese deve permanecer como hipótese enquanto existirem explicações alternativas plausíveis.

## Inferência

Inferência é uma conclusão interpretativa construída a partir de dados, contexto e regras analíticas.

Exemplo conceitual:

- Se as sessões orgânicas caíram no Google Analytics 4 e os cliques orgânicos caíram no Google Search Console, é razoável inferir retração do tráfego orgânico.

Inferência não é sinônimo de prova. Ela pode ter confiança alta ou baixa conforme a qualidade das evidências.

## Correlação

Correlação é a ocorrência conjunta de dois comportamentos relacionados no tempo, no canal, na página, na campanha ou na métrica.

Exemplo conceitual:

- Cliques orgânicos caem no Google Search Console e sessões orgânicas caem no Google Analytics 4 no mesmo período.

Correlação aumenta a confiança, mas não prova causalidade.

## Causalidade

Causalidade é a demonstração de que um fator produziu diretamente determinado resultado.

Exemplo conceitual:

- Uma campanha pausada reduziu as impressões quando há registro da pausa, queda concentrada nessa campanha e ausência de explicações alternativas relevantes.

Causalidade exige evidência mais forte que correlação. Não afirmar causalidade quando houver apenas coincidência temporal ou métrica isolada.

## Evidência

Evidência é qualquer dado, comparação, histórico, fonte independente, validação técnica ou contexto documentado que sustente uma leitura.

Exemplo conceitual:

- valor atual e anterior;
- variação absoluta e percentual;
- histórico de meses anteriores;
- confirmação por outra ferramenta;
- identificação de página, consulta, campanha, canal ou evento responsável.

## Sinal

Sinal é um comportamento que pode indicar oportunidade, risco ou mudança relevante, mas ainda precisa ser interpretado.

Exemplo conceitual:

- CTR crescendo mesmo com queda de impressões;
- página com muitas impressões e poucos cliques;
- crescimento de usuários sem crescimento equivalente de sessões engajadas.

## Ruído

Ruído é variação que pode resultar de base pequena, oscilação normal, diferença de mensuração, recorte inadequado ou dado sem impacto material.

Exemplo conceitual:

- crescimento de 100% de 1 para 2 eventos;
- variação expressiva em país com volume residual;
- mudança percentual alta em página com poucas sessões.

Ruído não deve gerar conclusão estratégica.

## Anomalia

Anomalia é um comportamento inesperado, inconsistente ou tecnicamente suspeito que exige validação antes de interpretação.

Exemplo conceitual:

- página com visualizações e eventos, mas tempo médio zerado;
- eventos incompatíveis com sessões;
- tráfego concentrado em localidade atípica com baixo engajamento;
- divergência entre teste manual e dado consolidado.

Anomalia deve gerar hipótese e recomendação de validação, não afirmação categórica.

# Linguagem Recomendada

Quando houver hipótese, utilizar preferencialmente:

- pode indicar;
- pode sugerir;
- há indícios de;
- a hipótese mais provável é;
- merece acompanhamento;
- provavelmente;
- aparentemente;
- ainda não há evidência suficiente para afirmar.

Exemplos adequados:

- A queda de impressões pode indicar redução de demanda no período.
- A divergência entre fontes merece acompanhamento antes de orientar mudança estrutural.
- A hipótese mais provável é que a retração esteja relacionada à menor procura, mas o próximo ciclo deve confirmar essa leitura.

Quando houver fato comprovado, utilizar:

- aumentou;
- diminuiu;
- ocorreu;
- registrou;
- apresentou;
- foi identificado.

Exemplos adequados:

- As sessões diminuíram no período.
- A CTR aumentou.
- Foi identificada divergência entre os dados de cliques e sessões orgânicas.

Nunca misturar linguagem de hipótese com linguagem categórica. Se a frase contém uma causa não comprovada, ela deve usar linguagem de hipótese.

# Linguagem Proibida

Evitar quando não houver comprovação:

- certamente;
- sem dúvida;
- comprova;
- prova;
- confirma definitivamente;
- foi causado por;
- aconteceu porque.

Também evitar expressões que aparentem certeza excessiva, como:

- deixa claro que;
- evidencia de forma definitiva;
- garante que;
- demonstra causalmente;
- explica totalmente.

Essas expressões só podem ser usadas quando houver evidência forte, validação suficiente e ausência de explicações alternativas relevantes. Mesmo nesses casos, preferir linguagem objetiva e proporcional.

# Quando Construir Hipóteses

Hipóteses são apropriadas quando:

- há queda de demanda sem evidência direta da causa;
- há divergência entre ferramentas;
- existe possível sazonalidade;
- há mudança editorial;
- ocorreu alteração de campanha;
- existe comportamento atípico;
- há indício de tráfego automatizado;
- há mudanças de algoritmo sem confirmação oficial.

Também construir hipóteses quando a fonte mostra o comportamento, mas não explica o mecanismo. Nesses casos, a análise deve apresentar o fato observado, a hipótese mais provável, as alternativas plausíveis e a validação recomendada.

# Quando NÃO Construir Hipóteses

Não é adequado criar hipóteses quando:

- a resposta já está claramente nos dados;
- a hipótese dependeria de informações externas inexistentes;
- a conclusão seria mera especulação;
- não existe evidência mínima.

Quando não houver evidência mínima, registrar a limitação. É melhor declarar que os dados não permitem concluir do que preencher a lacuna com uma narrativa frágil.

# Regras para Google Analytics 4

O Google Analytics 4 deve ser tratado como fonte de audiência, aquisição, comportamento, engajamento e eventos. Suas métricas exigem cautela porque dependem de implementação, consentimento, atribuição, sessão, evento e filtros.

## Tempo médio zerado

Tempo médio zerado em página específica não deve ser interpretado automaticamente como rejeição, desinteresse ou falha editorial.

Possíveis hipóteses:

- problema de mensuração;
- comportamento automatizado;
- carregamento ou pré-visualização sem engajamento real;
- evento sem permanência mensurável;
- tráfego de baixa qualidade.

Conduta:

- registrar o dado observado;
- tratar a causa como hipótese;
- recomendar validação em DebugView, Google Tag Manager, logs ou teste controlado;
- evitar afirmação categórica sobre comportamento humano.

## Eventos inconsistentes

Eventos incompatíveis com sessões, usuários ou páginas devem ser tratados como possível problema de mensuração ou definição de evento.

Não assumir que todo evento representa ação estratégica. Diferenciar evento registrado, evento de engajamento, evento principal e conversão real para o projeto.

## Comportamento de bots

Indícios de tráfego automatizado incluem concentração geográfica atípica, alto volume de novos usuários com baixo engajamento, muitas visualizações sem profundidade e padrões incompatíveis com comportamento humano.

Esses sinais devem gerar hipótese de automação, não afirmação definitiva. A recomendação deve ser validar filtros, origem do tráfego, logs, parâmetros e qualidade das sessões.

## Páginas com visualizações sem engajamento

Visualizações sem engajamento podem indicar conteúdo de baixa aderência, tráfego pouco qualificado, problema de mensuração, pré-carregamento, crawler ou comportamento de leitura não capturado.

A análise deve cruzar página, canal, origem, dispositivo, país, eventos e histórico antes de concluir.

## Divergências entre testes manuais e consolidados

Quando testes manuais não coincidirem com dados consolidados, registrar a divergência e recomendar validação técnica. Não corrigir dados retroativamente, não afirmar falha da ferramenta sem evidência e não transformar o teste isolado em verdade principal.

Essas situações devem gerar hipóteses e recomendações de validação, nunca afirmações categóricas.

# Regras para Google Ads

Queda de conversões não significa automaticamente piora da campanha.

Antes de concluir, avaliar:

- demanda;
- impressões;
- CTR;
- CPC;
- CPA;
- campanhas;
- histórico;
- sazonalidade.

Também avaliar taxa de conversão, custo, termos de pesquisa, alterações de orçamento, mudanças de campanha, dispositivos e eventos que compõem conversões.

O caso recorrente do AzMina exige atenção especial:

meses consecutivos de crescimento seguidos por um mês de retração.

Esse comportamento deve ser tratado inicialmente como hipótese de redução de demanda até que existam evidências contrárias. A análise deve verificar se a queda ocorreu por menor procura, menor exposição, piora de CTR, aumento de CPC, queda de taxa de conversão, alteração de campanha ou mudança de mensuração.

Não recomendar reestruturação ampla de campanhas com base em um único mês de retração quando o histórico anterior era positivo e não houver evidência de perda estrutural de eficiência.

# Regras para GSC

Queda de cliques pode decorrer de:

- menor demanda;
- menos impressões;
- CTR menor;
- perda de posição;
- mudança de consultas.

Nunca escolher uma única causa sem verificar as demais.

O Google Search Console deve ser lido pela combinação de cliques, impressões, CTR, posição média, páginas, consultas, países e dispositivos.

Regras permanentes:

- posição média menor representa melhora;
- posição média maior representa piora;
- CTR maior com impressões menores pode indicar eficiência sobre base menor;
- impressões maiores sem crescimento de cliques podem indicar perda de eficiência ou expansão para consultas menos clicáveis;
- melhora de posição média sem crescimento de tráfego pode indicar queda de demanda ou mudança no mix de consultas.

Quando houver queda de cliques, a causa só pode ser comunicada com confiança alta se as demais métricas sustentarem a leitura.

# Regras para SEMrush

Gráficos anuais não comprovam comportamento mensal.

Diferenças entre desktop e mobile não devem ser interpretadas como tendência geral sem observar o volume.

Percentuais elevados em páginas pequenas devem ser tratados com cautela.

Regras permanentes:

- usar o comparativo mensal como base da competência;
- tratar gráficos anuais como contexto histórico;
- não confundir tendência anual com variação mês contra mês;
- não somar recortes de dispositivos diferentes sem compatibilidade explícita;
- diferenciar estimativas, rankings monitorados e dados reais de cliques;
- observar volume absoluto antes de destacar percentual;
- não afirmar que uma otimização anterior causou resultado sem histórico documentado.

Quando SEMrush divergir do Google Search Console, registrar a divergência e verificar período, país, dispositivo, métrica e natureza da fonte.

# Divergência entre Ferramentas

Quando duas fontes divergirem:

- registrar a divergência;
- explicar possíveis causas;
- evitar escolher arbitrariamente uma delas;
- recomendar validação quando necessário.

Possíveis causas de divergência:

- diferença de período;
- diferença de atribuição;
- filtros distintos;
- recortes por dispositivo, país, canal ou página;
- diferença entre clique e sessão;
- estimativa versus dado coletado;
- atraso ou limitação de processamento;
- problema de implementação ou consentimento.

A divergência não deve ser ocultada para criar uma narrativa mais simples. Ela é parte da análise e deve reduzir o nível de confiança quando afetar a conclusão principal.

# Tratamento das Recomendações

Quanto menor o nível de confiança, mais conservadora deve ser a recomendação.

Confiança muito alta:

implementar.

Confiança alta:

priorizar.

Confiança moderada:

testar.

Confiança baixa:

acompanhar.

Confiança muito baixa:

investigar.

Aplicação prática:

- recomendações de implementação exigem evidência forte e impacto relevante;
- recomendações de priorização exigem fonte robusta e ausência de contradição relevante;
- recomendações de teste são adequadas quando a hipótese é plausível, mas ainda precisa de validação;
- recomendações de acompanhamento são adequadas para sinais novos, bases pequenas ou divergências;
- recomendações de investigação são obrigatórias quando há anomalia, dado conflitante ou falta de evidência mínima.

Nenhuma recomendação deve parecer mais urgente, ampla ou definitiva do que o nível de confiança permite.

# Casos Reais Aprendidos no AzMina

Os casos abaixo originaram regras permanentes do framework e devem ser usados como exemplos metodológicos.

## Queda de Google Ads após meses consecutivos de crescimento

Uma retração após meses positivos não deve ser tratada automaticamente como deterioração da conta. A hipótese inicial deve considerar redução de demanda, sazonalidade, variação de procura, alteração de mix de campanhas e comportamento de conversão.

Regra permanente:

- antes de recomendar reestruturação, verificar impressões, CTR, CPC, CPA, taxa de conversão, campanhas responsáveis e histórico.

## Tempo médio zerado em páginas específicas do GA4

Tempo médio zerado pode ser anomalia de mensuração, tráfego automatizado ou comportamento real de baixa permanência. Sem validação técnica, não comprova desinteresse editorial.

Regra permanente:

- tratar como hipótese e recomendar validação.

## CTR crescendo mesmo com queda de impressões

Esse comportamento pode indicar menor alcance com melhor eficiência de captura nas aparições mantidas.

Regra permanente:

- diferenciar volume de eficiência e evitar tratar a queda de impressões como piora geral sem analisar CTR, posição e demanda.

## Melhora de posição média sem crescimento de tráfego

Posição média melhor não garante crescimento de cliques. Pode haver queda de demanda, mudança de consultas, melhora em termos de menor volume ou alteração no mix de páginas.

Regra permanente:

- interpretar posição junto com impressões, cliques, CTR, páginas e consultas.

## Divergência entre GSC e GA4

Cliques orgânicos e sessões orgânicas podem divergir por diferença de mensuração, consentimento, redirecionamento, atribuição, recorte de canal ou comportamento pós clique.

Regra permanente:

- registrar a divergência, formular hipóteses e recomendar validação quando ela afetar a leitura principal.

## Gráficos anuais confundidos com comparação mensal

Gráficos anuais do SEMrush podem contextualizar o comportamento, mas não substituem o comparativo da competência contra o mês imediatamente anterior.

Regra permanente:

- separar contexto anual de comparação mensal antes de concluir crescimento, queda ou tendência.

# Regras de Ouro

- hipótese não é fato;
- correlação não prova causalidade;
- ausência de evidência não é evidência de ausência;
- múltiplas fontes aumentam confiança;
- histórico aumenta confiança;
- divergência reduz confiança;
- recomendações devem acompanhar o nível de confiança;
- transparência é preferível à falsa certeza;
- fato descreve o que ocorreu, hipótese propõe explicação;
- sinal exige interpretação, ruído exige cautela e anomalia exige validação;
- causalidade só deve ser afirmada com evidência suficiente;
- base pequena não sustenta conclusão ampla;
- variação pontual não é tendência estrutural;
- dados divergentes devem ser declarados;
- quando a evidência for fraca, a recomendação deve ser investigar, testar ou acompanhar.
