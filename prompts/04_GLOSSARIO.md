# 04 GLOSSÁRIO
## Objetivo
Este documento padroniza a linguagem do framework AzMina Reporting.
Ele define o vocabulário oficial usado nas análises de Google Analytics 4, Google Ads, Google Search Console e SEMrush.
Nenhum termo importante deve possuir interpretações diferentes entre competências.
Este documento não é um simples glossário.
Ele define significado, contexto, interpretação correta, erros comuns, quando utilizar e quando evitar leituras equivocadas.
O glossário complementa:
- estilo de escrita;
- regras de análise;
- hipóteses;
- estilo consultivo.
Ele não substitui esses documentos.
Quando houver dúvida entre termos parecidos, usar este glossário para preservar consistência terminológica.
Quando um termo tiver definição específica em uma ferramenta, respeitar a natureza da fonte.
Quando a métrica permitir mais de uma interpretação, declarar a hipótese com cautela.
O vocabulário deve servir à decisão, não à repetição de dashboard.
## Como usar este glossário
Usar este glossário antes de nomear métricas em análises individuais.
Usar este glossário antes de classificar crescimento, queda, risco ou oportunidade.
Usar este glossário para evitar alternância entre sinônimos imprecisos.
Usar este glossário quando duas fontes utilizarem termos parecidos com sentidos diferentes.
Usar este glossário para explicar conceitos técnicos em linguagem executiva.
Usar este glossário para revisar se uma recomendação está conectada ao termo correto.
Usar este glossário para impedir que volume seja chamado de eficiência.
Usar este glossário para impedir que hipótese seja apresentada como fato.
Usar este glossário para manter continuidade entre competências.
Usar este glossário como vocabulário oficial, não como substituto da análise.
# CONCEITOS DE ANALYTICS
## Usuário
Conceito: pessoa ou identificador reconhecido pelo GA4 em determinado período.
Interpretação correta: representa alcance de audiência, não necessariamente leitura qualificada.
Erros comuns: confundir usuário com sessão, visualização ou pessoa única real.
Uso no framework: avaliar tamanho de audiência junto com engajamento, canais e páginas.
## Novo Usuário
Conceito: usuário identificado como novo no período analisado.
Interpretação correta: indica renovação ou expansão de audiência.
Erros comuns: tratar todo novo usuário como público qualificado.
Uso no framework: avaliar crescimento de alcance junto com sessões engajadas e origem.
## Usuário Ativo
Conceito: usuário com atividade relevante registrada no período.
Interpretação correta: aproxima melhor audiência ativa do que usuário total isolado.
Erros comuns: interpretar como engajamento profundo sem validar eventos e tempo.
Uso no framework: medir audiência com cautela e cruzar com sessões engajadas.
## Sessão
Conceito: conjunto de interações de um usuário em uma visita.
Interpretação correta: mede visitas, não pessoas.
Erros comuns: confundir sessões com usuários ou visualizações.
Uso no framework: avaliar volume de visitas e dependência de canais.
## Sessão Engajada
Conceito: sessão que atende critérios de engajamento definidos pelo GA4.
Interpretação correta: indica visita com maior qualidade relativa.
Erros comuns: tratar como conversão final.
Uso no framework: comparar crescimento de tráfego com profundidade de consumo.
## Tempo Médio de Engajamento
Conceito: tempo médio em que o conteúdo esteve em uso ativo.
Interpretação correta: sinal de profundidade, dependente de mensuração.
Erros comuns: interpretar isoladamente ou concluir desinteresse quando está zerado.
Uso no framework: analisar com eventos, páginas, canais e possíveis anomalias.
## Visualização
Conceito: carregamento ou exibição de página ou tela.
Interpretação correta: indica consumo bruto de páginas.
Erros comuns: confundir visualização com leitura completa.
Uso no framework: avaliar volume de consumo junto com tempo e eventos.
## Evento
Conceito: interação registrada no GA4.
Interpretação correta: pode representar ação técnica ou comportamento relevante.
Erros comuns: tratar todo evento como conversão estratégica.
Uso no framework: interpretar conforme natureza, implementação e objetivo.
## Evento Principal
Conceito: evento marcado como principal ou relevante no GA4.
Interpretação correta: possui maior importância analítica que evento comum.
Erros comuns: tratar eventos principais diferentes como equivalentes.
Uso no framework: analisar separadamente conforme valor para o projeto.
## Conversão
Conceito: ação considerada valiosa para o objetivo configurado.
Interpretação correta: depende da configuração e do significado do evento.
Erros comuns: confundir conversão técnica com impacto final do projeto.
Uso no framework: explicar qual ação converteu e por que importa.
## Canal
Conceito: agrupamento de origem de tráfego.
Interpretação correta: mostra como a audiência chegou.
Erros comuns: tratar canal como campanha, origem ou mídia.
Uso no framework: avaliar aquisição, dependência e qualidade por canal.
## Origem
Conceito: fonte específica de tráfego, como google ou domínio de referência.
Interpretação correta: detalha de onde veio o acesso.
Erros comuns: misturar origem com mídia.
Uso no framework: identificar responsáveis por crescimento ou queda.
## Mídia
Conceito: tipo de tráfego, como organic, cpc, referral ou email.
Interpretação correta: qualifica o mecanismo da origem.
Erros comuns: analisar mídia sem origem.
Uso no framework: combinar origem e mídia para entender aquisição.
## Organic Search
Conceito: tráfego vindo de busca orgânica.
Interpretação correta: indica aquisição sem clique pago em buscadores.
Erros comuns: atribuir toda queda orgânica a SEO técnico.
Uso no framework: correlacionar com GSC e SEMrush.
## Direct
Conceito: tráfego sem origem identificada ou acesso direto.
Interpretação correta: pode incluir digitação, favoritos ou perda de atribuição.
Erros comuns: tratar sempre como marca forte.
Uso no framework: analisar com cautela e verificar contexto.
## Google CPC
Conceito: tráfego pago atribuído ao Google com mídia cpc.
Interpretação correta: indica visitas originadas de mídia paga.
Erros comuns: confundir clique de Ads com sessão no GA4.
Uso no framework: cruzar Google Ads com GA4 para avaliar pós clique.
## Referral
Conceito: tráfego vindo de links em outros sites.
Interpretação correta: indica referência externa identificada.
Erros comuns: tratar todo referral como parceria qualificada.
Uso no framework: avaliar fonte, qualidade e possível tráfego atípico.
## Engajamento
Conceito: qualidade e profundidade das interações.
Interpretação correta: deve combinar sessões engajadas, tempo, eventos e páginas.
Erros comuns: reduzir engajamento a uma métrica única.
Uso no framework: avaliar se o crescimento de audiência trouxe consumo qualificado.
# CONCEITOS DE GOOGLE ADS
## Impressões
Definição: vezes em que anúncios foram exibidos.
Interpretação: indicam exposição e demanda disponível.
Erros comuns: confundir impressões com tráfego.
Cuidados: queda pode indicar menor demanda, orçamento ou perda de participação.
## Cliques
Definição: interações de clique nos anúncios.
Interpretação: indicam tráfego potencial enviado ao site.
Erros comuns: confundir clique com sessão ou conversão.
Cuidados: analisar com CTR, CPC, conversão e GA4.
## CTR
Definição: proporção entre cliques e impressões.
Interpretação: mede eficiência de captura da exposição.
Erros comuns: avaliar CTR sem volume de impressões.
Cuidados: CTR alta em base pequena pode ter pouco impacto.
## CPC
Definição: custo médio por clique.
Interpretação: mede custo de aquisição de visita paga.
Erros comuns: tratar CPC menor como sucesso automático.
Cuidados: avaliar com qualidade do tráfego e conversões.
## CPM
Definição: custo por mil impressões.
Interpretação: mede custo de exposição.
Erros comuns: comparar com CPC como se fossem equivalentes.
Cuidados: usar conforme objetivo de mídia.
## CPA
Definição: custo por conversão.
Interpretação: mede eficiência de custo para ação configurada.
Erros comuns: comparar campanhas de objetivos distintos apenas por CPA.
Cuidados: entender qual conversão compõe o indicador.
## Conversão
Definição: ação definida como objetivo no Google Ads.
Interpretação: indica resultado atribuído à campanha.
Erros comuns: tratar toda conversão como valor final igual.
Cuidados: verificar evento, atribuição e qualidade.
## Todas as Conversões
Definição: conjunto ampliado de conversões monitoradas.
Interpretação: mostra visão mais ampla de ações atribuídas.
Erros comuns: comparar diretamente com conversões principais sem contexto.
Cuidados: separar ações estratégicas de ações secundárias.
## Taxa de Conversão
Definição: proporção entre conversões e cliques ou interações.
Interpretação: mede eficiência pós clique.
Erros comuns: atribuir queda apenas à campanha sem avaliar landing page e demanda.
Cuidados: cruzar com CPA, CTR e histórico.
## ROAS
Definição: retorno sobre gasto em anúncios.
Interpretação: mede retorno financeiro atribuído quando há receita válida.
Erros comuns: usar em contexto sem receita real.
Cuidados: em contextos institucionais, interpretar com muita cautela.
## Campanha
Definição: estrutura principal de organização de anúncios.
Interpretação: agrupa objetivo, orçamento e configuração.
Erros comuns: generalizar resultado da conta por uma campanha isolada.
Cuidados: separar leitura geral e leitura por campanha.
## Grupo de Anúncios
Definição: agrupamento interno de anúncios e palavras-chave.
Interpretação: ajuda a localizar eficiência ou ineficiência.
Erros comuns: ignorar concentração de problema em poucos grupos.
Cuidados: usar para recomendações específicas.
## Palavra-chave
Definição: termo configurado para acionar anúncios.
Interpretação: indica intenção buscada pela campanha.
Erros comuns: confundir palavra-chave com termo real pesquisado.
Cuidados: analisar correspondência, intenção e custo.
## Termo de Pesquisa
Definição: consulta real feita pelo usuário.
Interpretação: mostra demanda capturada de fato.
Erros comuns: ignorar termos pouco aderentes.
Cuidados: usar para ajustes e negativação quando aplicável.
## Índice de Qualidade
Definição: indicador de qualidade e relevância no Google Ads.
Interpretação: pode afetar custo e entrega.
Erros comuns: tratar como único fator de desempenho.
Cuidados: avaliar junto com CTR, anúncio e landing page.
## Demanda
Definição: procura disponível no período.
Interpretação: afeta impressões, cliques e conversões.
Erros comuns: confundir queda de demanda com piora de campanha.
Cuidados: verificar histórico, impressões e sazonalidade.
## Eficiência
Definição: capacidade de gerar resultado com melhor aproveitamento de recursos.
Interpretação: envolve CTR, CPC, CPA, taxa de conversão e qualidade.
Erros comuns: chamar volume alto de eficiência.
Cuidados: separar eficiência de volume.
## Volume
Definição: quantidade de impressões, cliques, conversões ou custo.
Interpretação: mostra escala do resultado.
Erros comuns: tratar volume como qualidade.
Cuidados: analisar com eficiência e impacto.
## Sazonalidade
Definição: variação associada a ciclos temporais.
Interpretação: pode explicar redução ou aumento de procura.
Erros comuns: afirmar sazonalidade sem histórico.
Cuidados: tratar como hipótese quando não comprovada.
# CONCEITOS DE SEARCH CONSOLE
## Clique
Definição: clique orgânico vindo dos resultados do Google.
Interpretação: mede tráfego orgânico capturado.
Cuidados: não confundir com sessão no GA4.
## Impressão
Definição: exibição de uma URL nos resultados de busca.
Interpretação: mede oportunidade de visibilidade.
Cuidados: impressão não é tráfego nem leitura.
## CTR
Definição: cliques divididos por impressões.
Interpretação: mede aproveitamento da visibilidade.
Cuidados: analisar com posição, snippet, consulta e volume.
## Posição Média
Definição: posição média em que a URL apareceu nas buscas.
Interpretação: posição média menor representa melhora.
Cuidados: posição média maior representa piora e pode variar por consulta, país e dispositivo.
## Consulta
Definição: termo pesquisado pelo usuário no Google.
Interpretação: revela intenção de busca.
Cuidados: não criar pauta apenas por volume.
## Página
Definição: URL exibida ou clicada nos resultados.
Interpretação: mostra qual conteúdo captura demanda.
Cuidados: não interpretar pelo slug quando houver dúvida.
## Cobertura
Definição: presença e indexação de páginas no Google.
Interpretação: indica capacidade de aparecer nas buscas.
Cuidados: separar problema de cobertura de problema de CTR.
## Ranking
Definição: posição relativa nos resultados de busca.
Interpretação: ajuda a avaliar visibilidade orgânica.
Cuidados: ranking isolado não explica tráfego.
## Snippet
Definição: apresentação do resultado no Google.
Interpretação: afeta CTR e percepção do conteúdo.
Cuidados: melhorar snippet sem usar clickbait.
## Visibilidade
Definição: capacidade de aparecer para consultas relevantes.
Interpretação: depende de impressões, ranking e cobertura.
Cuidados: visibilidade não equivale a cliques.
## Intenção de Busca
Definição: necessidade por trás da consulta.
Interpretação: orienta conteúdo, título e recomendação.
Cuidados: respeitar precisão editorial em temas sensíveis.
# CONCEITOS DE SEMRUSH
## Posição Monitorada
Definição: posição acompanhada pelo SEMrush para palavra-chave ou URL.
Interpretação: indica ranking monitorado.
Limitações: não substitui posição média do GSC.
## Ranking
Definição: colocação estimada ou monitorada em resultados de busca.
Interpretação: sinal de visibilidade orgânica.
Limitações: não é tráfego real.
## Visibilidade
Definição: indicador de presença orgânica estimada.
Interpretação: útil para contexto e monitoramento.
Limitações: deve ser validada com GSC quando possível.
## Backlinks
Definição: links externos apontando para o domínio ou página.
Interpretação: indicam autoridade potencial e relações externas.
Limitações: quantidade não garante qualidade.
## Autoridade
Definição: métrica estimada de força do domínio ou página.
Interpretação: contexto complementar de SEO.
Limitações: não deve ser tratada como métrica oficial do Google.
## Keyword
Definição: palavra-chave monitorada ou estimada pela ferramenta.
Interpretação: ajuda a mapear demanda e ranking.
Limitações: não equivale necessariamente a consulta real do GSC.
## Desktop
Definição: recorte de dados para buscas em computador.
Interpretação: mostra comportamento específico de dispositivo.
Limitações: não generalizar sem observar volume.
## Mobile
Definição: recorte de dados para buscas em dispositivos móveis.
Interpretação: geralmente relevante pelo peso do mobile.
Limitações: não somar com desktop sem compatibilidade.
## Comparação Mensal
Definição: comparação entre competência atual e mês anterior.
Interpretação: base principal da análise mensal.
Limitações: exige período correto e métrica compatível.
## Gráfico Anual
Definição: visualização de comportamento ao longo do ano.
Interpretação: serve como contexto histórico.
Limitações: gráficos anuais nunca substituem comparação mensal.
## Estimativa
Definição: valor modelado pela ferramenta.
Interpretação: sinal aproximado, não dado real coletado.
Limitações: não tratar como tráfego confirmado.
## Auditoria
Definição: avaliação técnica de problemas e oportunidades.
Interpretação: indica pontos técnicos possíveis.
Limitações: precisa de priorização por impacto.
# CONCEITOS METODOLÓGICOS
## Fato
Definição: informação diretamente observada e verificável.
Quando utilizar: para números, variações e ocorrências comprovadas.
Quando não utilizar: para causas não demonstradas.
## Hipótese
Definição: explicação provável sustentada por evidências.
Quando utilizar: quando há alternativas plausíveis.
Quando não utilizar: quando não existe evidência mínima.
## Correlação
Definição: ocorrência conjunta de comportamentos relacionados.
Quando utilizar: para reforçar leitura entre fontes.
Quando não utilizar: como prova de causa.
## Causalidade
Definição: demonstração de que um fator gerou resultado.
Quando utilizar: apenas com evidência suficiente e alternativas descartadas.
Quando não utilizar: com coincidência temporal isolada.
## Evidência
Definição: dado, histórico ou validação que sustenta leitura.
Quando utilizar: em toda conclusão relevante.
Quando não utilizar: como sinônimo de opinião.
## Confiança
Definição: grau interno de segurança da interpretação.
Quando utilizar: para calibrar linguagem e recomendação.
Quando não utilizar: para esconder incerteza.
## Volume
Definição: escala absoluta de uma métrica.
Quando utilizar: para medir impacto potencial.
Quando não utilizar: como prova de eficiência.
## Eficiência
Definição: melhor aproveitamento da base ou recurso disponível.
Quando utilizar: ao relacionar resultado com oportunidade ou custo.
Quando não utilizar: como sinônimo de crescimento bruto.
## Prioridade
Definição: grau de urgência e importância de ação.
Quando utilizar: em recomendações.
Quando não utilizar: com base apenas no tamanho da variação.
## Impacto
Definição: consequência para audiência, aquisição, engajamento, conversão ou decisão.
Quando utilizar: para justificar destaque.
Quando não utilizar: quando a métrica não muda a decisão.
## Risco
Definição: possibilidade de perda, piora ou decisão incorreta.
Quando utilizar: quando há evidência e impacto potencial.
Quando não utilizar: para toda queda pontual.
## Oportunidade
Definição: possibilidade de ganho com ação viável.
Quando utilizar: quando há impacto, evidência e caminho de ação.
Quando não utilizar: para toda alta percentual.
## Tendência
Definição: comportamento recorrente ou consolidado ao longo do tempo.
Quando utilizar: com histórico ou múltiplas evidências.
Quando não utilizar: com apenas uma competência.
## Oscilação
Definição: variação pontual sem confirmação estrutural.
Quando utilizar: para movimento ainda inconclusivo.
Quando não utilizar: quando há recorrência comprovada.
## Anomalia
Definição: comportamento inesperado ou tecnicamente suspeito.
Quando utilizar: quando os dados exigem validação.
Quando não utilizar: como explicação final sem investigação.
## Recorrência
Definição: repetição relevante em múltiplas competências.
Quando utilizar: para fortalecer hipótese ou aprendizado.
Quando não utilizar: com repetições sem comparabilidade.
## Conhecimento Permanente
Definição: aprendizado estrutural válido para competências futuras.
Quando utilizar: quando aprovado e elegível para knowledge.
Quando não utilizar: para resultado mensal comum.
## Aprendizado
Definição: lição extraída de análise, erro ou limitação.
Quando utilizar: quando melhora o método.
Quando não utilizar: como regra permanente sem promoção.
## Contexto
Definição: informação que ajuda a interpretar o dado atual.
Quando utilizar: para evitar leitura isolada.
Quando não utilizar: para substituir evidência atual.
# EXPRESSÕES PADRONIZADAS
## Crescimento consistente
Usar quando houver mais de um período ou confirmação entre fontes.
Evitar em alta isolada ou base pequena.
## Ganho de eficiência
Usar quando há melhor aproveitamento da mesma ou menor base.
Evitar quando houve apenas aumento de volume.
## Perda de eficiência
Usar quando a base existe, mas o aproveitamento piora.
Evitar quando a queda decorre apenas de menor demanda.
## Queda pontual
Usar para retração isolada sem recorrência confirmada.
Evitar quando há sequência de queda.
## Tendência
Usar com recorrência, histórico ou múltiplas evidências.
Evitar para variação de um mês.
## Demanda
Usar para procura disponível ou interesse do público.
Evitar como sinônimo de desempenho da campanha.
## Maior oportunidade
Usar quando há impacto, evidência, volume e ação clara.
Evitar para percentual alto em base pequena.
## Principal risco
Usar quando há impacto potencial relevante e evidência suficiente.
Evitar para queda sem consequência clara.
## Alta prioridade
Usar para risco ou oportunidade com impacto relevante e ação necessária.
Evitar quando a confiança é baixa.
## Média prioridade
Usar para ação importante que pode ser planejada ou testada.
Evitar quando exige ação imediata.
## Baixa prioridade
Usar para acompanhamento, refinamento ou oportunidade complementar.
Evitar quando há risco direto e recorrente.
# EXPRESSÕES PROIBIDAS
Evitar "certamente" porque sugere certeza acima da evidência.
Evitar "sem dúvida" porque elimina incerteza metodológica.
Evitar "prova que" quando há apenas indício ou correlação.
Evitar "comprova que" quando a fonte não demonstra causalidade.
Evitar "foi causado por" sem evidência causal.
Evitar "aconteceu porque" quando há explicações alternativas.
Evitar "é evidente que" porque pode soar categórico demais.
Evitar "os dados mostram claramente" quando há divergência ou limitação.
Evitar "desempenho excelente" sem métrica, impacto e contexto.
Evitar "resultado preocupante" sem proporcionalidade.
Evitar "o relatório mostra" no texto final ao cliente.
Evitar "segundo o PDF" no texto final ao cliente.
Evitar "podemos observar" por soar automático.
# ERROS CLÁSSICOS DE INTERPRETAÇÃO
CTR sem impressões: CTR só ganha sentido com volume de exposição.
Posição média ao contrário: número menor representa melhora.
Impressões como tráfego: impressão é exposição, não clique nem sessão.
Sessões como usuários: sessão mede visita, usuário mede audiência identificada.
Conversão como evento: nem todo evento é conversão estratégica.
Demanda como desempenho: menor procura pode reduzir resultado sem piora operacional.
Gráfico anual como mensal: gráfico anual contextualiza, mas não compara competência.
Percentual sem contexto: alta percentual em base pequena pode ser ruído.
Cliques como sessões: clique em Ads ou GSC pode não virar sessão no GA4.
Ranking como tráfego: posição melhor não garante crescimento se a demanda cair.
Volume como eficiência: mais cliques não significam melhor aproveitamento.
Hipótese como fato: causa provável precisa de linguagem proporcional.
# VOCABULÁRIO OFICIAL DO FRAMEWORK
## Crescimento consistente
Interpretação: avanço sustentado por histórico ou múltiplas fontes.
Uso: indicar evolução confiável.
## Estabilidade
Interpretação: variação pequena ou sem mudança material.
Uso: indicar manutenção de patamar.
## Recuperação
Interpretação: retomada após queda anterior.
Uso: apenas quando houver base histórica para comparar.
## Deterioração
Interpretação: piora relevante de eficiência, volume ou qualidade.
Uso: exigir evidência e impacto, não apenas queda isolada.
## Ganho estrutural
Interpretação: avanço com recorrência, impacto e sustentação.
Uso: evitar em um único mês.
## Perda estrutural
Interpretação: regressão recorrente ou confirmada por evidências fortes.
Uso: nunca aplicar a oscilação pontual.
## Oportunidade rápida
Interpretação: ação de baixo esforço e potencial claro.
Uso: páginas com alto volume e CTR baixo são exemplo possível.
## Melhoria incremental
Interpretação: ajuste de baixo risco e ganho complementar.
Uso: refinamentos sem urgência.
## Ação imediata
Interpretação: medida necessária por risco, falha ou oportunidade crítica.
Uso: exige alta confiança e impacto relevante.
## Monitoramento
Interpretação: acompanhamento de sinal ainda inconclusivo.
Uso: quando confiança ou volume ainda são limitados.
# REGRAS DE OURO
- usar sempre o mesmo termo para o mesmo conceito;
- posição média menor representa melhora;
- posição média maior representa piora;
- impressão não é clique;
- clique não é sessão;
- sessão não é usuário;
- visualização não prova leitura completa;
- evento não é automaticamente conversão;
- conversão depende da configuração e do objetivo;
- CTR deve ser analisado com impressões;
- CPC deve ser analisado com qualidade e conversão;
- CPA deve considerar o tipo de conversão;
- ROAS só faz sentido com receita válida;
- volume não é eficiência;
- eficiência não é volume;
- demanda não é desempenho;
- tendência exige histórico;
- queda pontual não é perda estrutural;
- gráfico anual não substitui comparação mensal;
- estimativa não é dado real;
- hipótese não é fato;
- correlação não prova causalidade;
- oportunidade exige ação viável;
- risco exige impacto potencial;
- prioridade depende de impacto, urgência, esforço e confiança;
- vocabulário consistente gera análise mais confiável.
