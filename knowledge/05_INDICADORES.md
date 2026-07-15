# 05 INDICADORES
## Objetivo
Este arquivo define os indicadores permanentes do projeto, sua interpretação, função analítica e presença no histórico.
Ele não armazena valores mensais.
Ele não substitui o glossário.
Ele não substitui as regras de análise.
Ele organiza quais indicadores merecem atenção recorrente e como devem ser usados.
Indicadores devem servir à decisão.
Indicadores não devem ser listados apenas porque existem no relatório.
## Princípios de Uso
- não interpretar indicador isoladamente;
- diferenciar volume e eficiência;
- usar atual, anterior, variação absoluta e percentual;
- observar base absoluta;
- preservar unidade e moeda;
- não confundir métricas equivalentes apenas no nome;
- usar apenas indicadores úteis para decisão.
Todo indicador deve ser lido com contexto.
Indicador de volume mostra escala.
Indicador de eficiência mostra aproveitamento.
Indicador de qualidade exige combinação de sinais.
Indicador indisponível deve ser tratado como ausência, não como zero.
## Indicadores de GA4
### Usuários ativos
Representa usuários com atividade relevante no período.
Interpretar como audiência ativa, não como pessoas únicas reais.
Correlacionar com sessões, novos usuários, engajamento, canais e páginas.
Erro comum: tratar crescimento de usuários como qualidade automática.
### Novos usuários
Representa usuários identificados como novos no período.
Interpretar como renovação ou expansão de audiência.
Correlacionar com usuários ativos, canais, países e engajamento.
Erro comum: tratar todo novo usuário como público qualificado.
### Usuários recorrentes
Representa retorno de audiência reconhecida pela plataforma.
Interpretar como sinal de fidelização relativa.
Correlacionar com direct, páginas, eventos e engajamento.
Erro comum: ignorar limitações de identificação entre dispositivos e consentimento.
### Sessões
Representa visitas ao site.
Interpretar como volume de acessos, não como pessoas.
Correlacionar com usuários, canais, sessões engajadas e origem.
Erro comum: confundir sessão com usuário.
### Sessões engajadas
Representa sessões que atendem critérios de engajamento do GA4.
Interpretar como qualidade relativa da visita.
Correlacionar com sessões, taxa de engajamento, tempo e eventos.
Erro comum: tratar como conversão final.
### Taxa de engajamento
Representa proporção de sessões engajadas.
Interpretar como eficiência de engajamento, com cautela.
Correlacionar com sessões, canais, páginas e eventos.
Erro comum: usar isoladamente sem volume.
### Tempo médio de engajamento
Representa tempo médio de uso ativo.
Interpretar como profundidade relativa de consumo.
Correlacionar com páginas, canais, eventos e possíveis anomalias.
Erro comum: concluir desinteresse sem validar mensuração.
### Visualizações
Representam carregamentos ou exibições de páginas.
Interpretar como consumo bruto.
Correlacionar com usuários, sessões, páginas e eventos.
Erro comum: tratar visualização como leitura completa.
### Eventos
Representam interações registradas.
Interpretar conforme implementação e objetivo.
Correlacionar com páginas, sessões e eventos principais.
Erro comum: tratar todo evento como ação estratégica.
### Eventos principais
Representam eventos marcados como relevantes.
Interpretar conforme objetivo configurado.
Correlacionar com tráfego, páginas, campanhas e qualidade.
Erro comum: tratar eventos diferentes como equivalentes.
### Organic Search
Representa tráfego orgânico de buscadores.
Interpretar como aquisição orgânica no GA4.
Correlacionar com GSC e SEMrush.
Erro comum: atribuir toda variação a SEO sem investigar demanda.
### Direct
Representa tráfego direto ou sem origem identificada.
Interpretar com cautela.
Correlacionar com marca, recorrência, campanha e perda de atribuição.
Erro comum: tratar sempre como força de marca.
### Google CPC
Representa tráfego pago do Google atribuído no GA4.
Interpretar como comportamento pós clique de mídia paga.
Correlacionar com Google Ads.
Erro comum: confundir clique de Ads com sessão no GA4.
### Páginas
Representam URLs consumidas.
Interpretar por volume, origem, engajamento e eventos.
Correlacionar com GSC, SEMrush e conteúdo editorial.
Erro comum: listar páginas sem explicar impacto.
### Países
Representam distribuição geográfica.
Interpretar com volume, mercado, idioma e anomalias.
Correlacionar com dispositivos, canais e páginas.
Erro comum: inferir expansão internacional com base pequena.
### Cidades
Representam recorte geográfico mais granular.
Interpretar com cautela por volume e confiabilidade.
Correlacionar com países, tráfego atípico e origem.
Erro comum: criar ranking fixo de cidades.
### Dispositivos
Representam desktop, mobile, tablet ou outros recortes.
Interpretar por volume e comportamento.
Correlacionar com engajamento, CTR, páginas e conversão.
Erro comum: somar recortes incompatíveis.
## Eventos Personalizados do AzMina
Eventos recorrentes incluem:
- article_view;
- azmina-real-scroll;
- scroll_25;
- scroll_50;
- scroll_75;
- scroll_90;
- azmina___sessão_app;
- azmina___sessão_newsletter;
- apoie;
- cliques em lojas de aplicativos.
Evento não é automaticamente conversão final.
Eventos podem ter diferenças de implementação.
Nomes e definições devem ser validados.
Mudanças de coleta devem ser documentadas.
article_view pode indicar consumo de artigo, conforme implementação.
Scrolls indicam profundidade de navegação, não leitura qualificada completa.
Sessões relacionadas a app ou newsletter devem ser interpretadas pelo objetivo do projeto.
apoie pode ser evento estratégico, mas depende da configuração.
Cliques em lojas de aplicativos indicam intenção de saída para app, não instalação confirmada.
## Indicadores de Google Ads
### Impressões
Representam exibição dos anúncios.
Correlacionar com demanda, orçamento, participação e CTR.
Erro comum: tratar impressão como tráfego.
### Cliques
Representam interações de clique.
Correlacionar com sessões Google CPC, CTR, custo e conversões.
Erro comum: tratar clique como sessão.
### CTR
Representa cliques divididos por impressões.
Correlacionar com anúncios, termos, intenção e volume.
Erro comum: destacar CTR alta em base pequena.
### Custo
Representa gasto registrado pela plataforma.
Correlacionar com cliques, conversões, CPA e orçamento.
Erro comum: avaliar custo sem resultado.
### CPC médio
Representa custo médio por clique.
Correlacionar com qualidade, concorrência, CTR e conversões.
Erro comum: tratar CPC menor como sucesso automático.
### CPM
Representa custo por mil impressões.
Correlacionar com objetivo de exposição.
Erro comum: comparar diretamente com CPC sem contexto.
### Conversões
Representam ações configuradas como conversão.
Correlacionar com cliques, custo, taxa de conversão e objetivo.
Erro comum: tratar toda conversão como receita.
### Todas as conversões
Representam conjunto ampliado de ações atribuídas.
Correlacionar com conversões principais e eventos secundários.
Erro comum: somar ações de valor diferente sem distinção.
### Taxa de conversão
Representa eficiência pós clique.
Correlacionar com cliques, conversões, landing page e intenção.
Erro comum: atribuir queda apenas à campanha.
### CPA
Representa custo por conversão.
Correlacionar com custo, conversões e tipo de ação.
Erro comum: comparar campanhas de objetivos distintos só pelo CPA.
### Custo por todas as conversões
Representa custo médio considerando todas as ações atribuídas.
Correlacionar com a composição das conversões.
Erro comum: tratar como equivalente ao CPA principal.
### ROAS
Representa retorno sobre gasto quando há receita válida.
Correlacionar com valor de conversão e contexto da conta.
Erro comum: usar como métrica financeira em contexto sem receita real.
### Campanhas
Representam estrutura de objetivo e orçamento.
Correlacionar com grupos, anúncios, custo e conversão.
Erro comum: generalizar a conta por campanha isolada.
### Grupos
Representam agrupamentos internos.
Correlacionar com palavras-chave, anúncios e eficiência.
Erro comum: ignorar concentração de problema em poucos grupos.
### Palavras-chave
Representam termos configurados.
Correlacionar com termos reais, CTR, CPC e conversão.
Erro comum: confundir palavra-chave com consulta real.
### Termos de pesquisa
Representam buscas reais acionadoras.
Correlacionar com intenção, custo, cliques e conversão.
Erro comum: ignorar termos pouco aderentes.
### Dispositivos
Representam recortes de entrega por aparelho.
Correlacionar com CTR, CPC, conversão e GA4.
Erro comum: recomendar ajuste sem volume suficiente.
### Participação de impressões
Quando disponível, representa parcela de exposição possível capturada.
Correlacionar com orçamento, ranking e demanda.
Erro comum: tratar baixa participação como problema sem avaliar objetivo.
### Índice de qualidade
Quando disponível, indica relevância estimada pelo Google Ads.
Correlacionar com CTR, anúncio e landing page.
Erro comum: tratar como causa única do desempenho.
## Conversões de Google Ads
Conversões podem ser fracionadas pela atribuição.
Todas as conversões podem incluir ações adicionais.
Eventos diferentes não devem ser tratados como equivalentes.
Valores atribuídos podem ser artificiais.
ROAS pode não representar receita real.
Contexto de Google Ad Grants exige cautela.
Conversões devem ser explicadas pelo tipo de ação.
Mudanças de configuração devem ser documentadas.
## Indicadores de GSC
### Cliques
Representam cliques orgânicos vindos do Google.
Correlacionar com impressões, CTR, posição, páginas e consultas.
Erro comum: tratar clique como sessão.
### Impressões
Representam aparições nos resultados.
Correlacionar com demanda, cobertura, posição e consultas.
Erro comum: tratar impressão como tráfego.
### CTR
Representa aproveitamento da visibilidade.
Correlacionar com posição, snippet, consulta e volume.
Erro comum: avaliar sem impressões.
### Posição média
Posição menor é melhor.
Posição maior é pior.
Correlacionar com impressões, cliques e mix de consultas.
Erro comum: interpretar variação ao contrário.
### Páginas
Representam URLs exibidas ou clicadas.
Correlacionar com consultas, CTR e intenção.
Erro comum: interpretar slug sem confirmação.
### Consultas
Representam termos pesquisados.
Correlacionar com intenção, página, posição e volume.
Erro comum: criar pauta apenas por volume.
### Países
Representam distribuição geográfica das buscas.
Correlacionar com idioma, volume e mercados.
Erro comum: inferir expansão sem recorrência.
### Dispositivos
Representam recorte por aparelho.
Correlacionar com CTR, posição e comportamento.
Erro comum: somar recortes sem validação.
## Indicadores de SEMrush
### Posição monitorada
Representa ranking acompanhado pela ferramenta.
Limitação: não substitui posição média do GSC.
### Visibilidade
Representa métrica proprietária do projeto monitorado.
Limitação: depende do conjunto de palavras-chave.
### Tráfego estimado
Representa aproximação modelada.
Limitação: não é tráfego real coletado.
### Palavras-chave
Representam termos monitorados ou estimados.
Limitação: não equivalem a todas as consultas reais.
### Distribuição de posições
Representa agrupamento de rankings.
Limitação: depende do conjunto monitorado.
### Backlinks
Representam links externos encontrados.
Limitação: quantidade não garante qualidade.
### Domínios de referência
Representam domínios que apontam links.
Limitação: diversidade precisa ser avaliada por relevância.
### Authority Score
Representa métrica proprietária.
Limitação: não é métrica do Google.
### Toxicidade
Representa classificação automática de risco.
Limitação: exige revisão humana.
### Problemas técnicos
Representam achados da auditoria.
Limitação: nem todo problema é prioridade alta.
### URLs afetadas
Representam páginas impactadas por achados.
Limitação: prioridade depende de relevância e volume.
## Indicadores de Volume
Indicadores de volume mostram escala.
Exemplos:
- usuários;
- sessões;
- visualizações;
- impressões;
- cliques;
- conversões;
- backlinks.
Volume alto não significa qualidade.
Volume baixo não significa irrelevância automática.
Volume precisa ser combinado com eficiência e impacto.
## Indicadores de Eficiência
Indicadores de eficiência mostram aproveitamento.
Exemplos:
- CTR;
- taxa de conversão;
- CPA;
- CPC;
- taxa de engajamento;
- tempo médio;
- ROAS;
- cliques por impressão.
Eficiência precisa ser avaliada junto com volume.
Melhor eficiência em base pequena pode ter baixo impacto.
Pior eficiência em canal estratégico pode exigir prioridade.
## Indicadores de Qualidade
Qualidade não é uma única métrica.
Pode envolver:
- engajamento;
- aderência da origem;
- página consumida;
- eventos;
- conversão;
- recorrência;
- objetivo da campanha.
Qualidade depende do objetivo.
Qualidade deve combinar sinais quantitativos e contexto editorial.
## Indicadores de Demanda
Demanda pode ser inferida com cautela usando:
- impressões;
- consultas;
- termos de pesquisa;
- volume de busca;
- histórico;
- sazonalidade;
- cobertura.
Não existe um único indicador absoluto de demanda em todos os relatórios.
Demanda deve ser diferenciada de desempenho.
Queda de demanda não é automaticamente piora de campanha ou conteúdo.
## Camada Mínima de Evidência
Quando disponível, usar:
- atual;
- anterior;
- variação absoluta;
- variação percentual.
Exceções:
- base anterior zero;
- dado indisponível;
- arredondamento;
- relatório estimado;
- alteração de metodologia.
Quando não houver base comparável, não forçar percentual.
Quando houver arredondamento, evitar precisão falsa.
## Fórmulas
Variação absoluta:
```text
valor atual - valor anterior
```
Variação percentual:
```text
(valor atual - valor anterior) / valor anterior
```
CTR:
```text
cliques / impressões
```
Taxa de conversão:
```text
conversões / cliques
```
CPA:
```text
custo / conversões
```
CPC médio:
```text
custo / cliques
```
CPM:
```text
(custo / impressões) * 1000
```
ROAS:
```text
valor de conversão / custo
```
Taxa de engajamento:
```text
sessões engajadas / sessões
```
Aplicar definições da plataforma quando houver diferença oficial.
## Moedas e Unidades
Preservar moeda original.
Não converter sem necessidade.
Identificar US$, R$ ou outra moeda.
Não somar moedas diferentes.
Preservar percentuais.
Preservar segundos ou minutos.
Padronizar apresentação no relatório.
Não alterar casas decimais de forma que distorça o dado.
Unidade deve acompanhar interpretação.
Moeda deve acompanhar custo, CPC, CPA, CPM e ROAS quando aplicável.
## Indicadores Históricos Mínimos
history/indicadores_historicos.csv deve conter apenas indicadores comparáveis.
### GA4
Conjunto comparável possível:
- usuários ativos;
- novos usuários;
- sessões;
- sessões engajadas;
- tempo médio de engajamento;
- visualizações;
- eventos principais;
- Organic Search;
- Direct;
- Google CPC.
### Google Ads
Conjunto comparável possível:
- impressões;
- cliques;
- CTR;
- custo;
- conversões;
- taxa de conversão;
- CPA;
- ROAS;
- principal campanha positiva;
- principal campanha negativa.
### GSC
Conjunto comparável possível:
- cliques;
- impressões;
- CTR;
- posição média;
- principal página com ganho;
- principal página com queda;
- principal consulta com ganho;
- principal consulta com queda.
### SEMrush
Conjunto comparável possível:
- cliques;
- impressões;
- CTR;
- posição média;
- principal oportunidade de CTR;
- principal página com ganho;
- principal página com queda;
- observação metodológica.
Não incluir todos os indicadores disponíveis.
O histórico deve favorecer comparabilidade e continuidade.
## Indicadores Textuais no Histórico
Campos qualitativos podem incluir:
- principal página com ganho;
- principal página com queda;
- principal campanha positiva;
- principal campanha negativa;
- principal oportunidade;
- principal risco;
- observação metodológica.
Campos textuais devem ser curtos e rastreáveis.
Campos textuais não substituem análise.
## Mudanças de Definição
Quando uma plataforma alterar definição ou coleta:
- documentar;
- evitar comparação direta sem ressalva;
- registrar no changelog;
- revisar série histórica quando necessário;
- não reescrever o passado sem justificativa.
Mudança de configuração pode quebrar comparabilidade.
Mudança de evento deve ser registrada antes de entrar na série.
## Anomalias e Valores Ausentes
Representar corretamente:
- dado indisponível;
- não aplicável;
- zero real;
- falha de coleta;
- valor estimado;
- cálculo impossível.
Não substituir ausência por zero.
Zero real significa ocorrência válida igual a zero.
Dado indisponível significa ausência de informação.
Valor estimado deve ser identificado.
Cálculo impossível deve ser declarado.
## Critérios de Seleção
Um indicador deve entrar no relatório quando:
- explica o resultado;
- sustenta recomendação;
- mede objetivo;
- mostra risco;
- permite comparação;
- tem qualidade suficiente.
## Atualização deste Arquivo
Atualizar quando houver:
- novo indicador permanente;
- nova fórmula;
- mudança de plataforma;
- alteração de conversão;
- novo evento;
- nova unidade;
- mudança no histórico;
- aprendizado metodológico confirmado.
Não atualizar com valores mensais.
Não atualizar por anomalia isolada.
Não atualizar por métrica temporária.
## Regras de Ouro
- indicador não é conclusão;
- não interpretar métrica isolada;
- separar volume de eficiência;
- preservar unidade e moeda;
- usar atual e anterior quando possível;
- calcular variação absoluta;
- calcular variação percentual com base válida;
- não substituir ausência por zero;
- posição média menor é melhor;
- posição média maior é pior;
- conversão depende da configuração;
- todas as conversões podem ter escopo diferente;
- ROAS exige receita válida;
- estimativa não é dado real;
- evento não é conversão final automática;
- base pequena exige cautela;
- histórico deve ser comparável;
- mudança de coleta deve ser documentada;
- indicador deve servir à decisão;
- resumo executivo deve usar apenas indicadores essenciais.
