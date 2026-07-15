# 05 HISTÓRICO DO PROJETO
## Objetivo
Este documento é o manual oficial de uso da memória do framework AzMina Reporting.
Ele ensina como utilizar corretamente `history/` e `knowledge/` durante as análises, hipóteses, recomendações e atualizações após aprovação humana.
Este documento não armazena histórico.
Este documento não registra resultados mensais.
Este documento não substitui `history/`.
Este documento não substitui `knowledge/`.
Os resultados mensais pertencem a `history/`.
O conhecimento permanente pertence a `knowledge/`.
Este documento apenas governa como ambos devem ser utilizados.
A função principal deste arquivo é impedir que dados mensais virem regra permanente sem critério e impedir que conhecimento permanente seja ignorado durante competências futuras.
O uso correto da memória deve melhorar:
- consistência entre competências;
- leitura de recorrências;
- interpretação de sazonalidade;
- qualidade das hipóteses;
- precisão das recomendações;
- prevenção de erros já identificados;
- separação entre resultado mensal e conhecimento permanente.
# FILOSOFIA DA MEMÓRIA
## O papel da memória no framework
A memória existe para dar continuidade ao raciocínio analítico do AzMina Reporting.
Cada competência é autocontida, mas não deve ser analisada como se fosse o primeiro mês do projeto.
O histórico aprovado ajuda a responder se uma variação é nova, recorrente, sazonal, estrutural, pontual ou inconclusiva.
O conhecimento permanente ajuda a preservar regras, decisões, características e aprendizados que seguem válidos independentemente da competência.
A memória deve funcionar como contexto.
A memória não deve funcionar como atalho.
O sistema deve consultar a memória para:
- reconhecer padrões já observados;
- comparar a competência atual com ciclos anteriores;
- avaliar se uma hipótese ganhou força;
- avaliar se uma hipótese perdeu força;
- evitar repetir conclusões descartadas;
- entender decisões permanentes;
- preservar aprendizados metodológicos;
- evitar recomendações incompatíveis com o histórico.
A memória protege o relatório contra conclusões apressadas.
Quando uma queda ocorre após meses de crescimento, a memória ajuda a evitar diagnóstico estrutural sem evidência.
Quando uma anomalia técnica já apareceu antes, a memória orienta validação antes de interpretar comportamento humano.
Quando uma limitação de ferramenta é conhecida, a memória impede que a fonte seja usada acima do que permite.
## Conhecimento não é estatística
Números mensais não são conhecimento.
Conhecimento representa comportamento confirmado, regra metodológica, decisão aprovada, limitação conhecida ou característica permanente.
Um número mensal pode iniciar uma investigação.
Um número mensal não deve ser promovido automaticamente a conhecimento.
Exemplo:
- "As sessões orgânicas caíram em junho" é resultado mensal.
- "Quedas orgânicas com posição estável podem indicar menor demanda" é aprendizado metodológico, quando validado.
Exemplo:
- "A campanha X teve CPA maior no mês" é resultado mensal.
- "Queda de conversões em Google Ads não significa automaticamente piora da campanha" é conhecimento metodológico.
Exemplo:
- "A página Y teve CTR baixo" é resultado mensal.
- "Páginas com muitas impressões e CTR baixo podem ser oportunidade" é regra de análise, quando houver volume e alinhamento editorial.
Exemplo:
- "O SEMrush exibiu um gráfico anual com queda" é dado da fonte.
- "Gráficos anuais do SEMrush não comprovam comportamento mensal" é conhecimento permanente.
Exemplo:
- "O tempo médio ficou zerado em uma página" é fato mensal.
- "Tempo médio zerado no GA4 exige validação antes de conclusão editorial" é aprendizado metodológico.
O conhecimento deve sobreviver a mais de uma competência.
O conhecimento deve orientar decisões futuras.
O conhecimento não deve depender de data, valor, campanha, página ou consulta específica.
Se uma informação depende de um mês específico, ela pertence a `history/`.
Se uma informação define como interpretar competências futuras, ela pode pertencer a `knowledge/`.
## Memória como contexto
A memória complementa os dados atuais.
A memória nunca substitui os dados atuais.
Toda análise deve começar pela competência ativa e pelas fontes validadas dessa competência.
O histórico deve ser usado depois para contextualizar o que os dados atuais indicam.
O sistema não deve usar histórico para forçar tendência.
O sistema não deve usar conhecimento antigo para ignorar evidência nova.
O sistema não deve transformar padrão histórico em causa automática.
A memória aumenta a qualidade da interpretação quando:
- confirma comportamento atual;
- mostra recorrência;
- mostra ruptura;
- recupera hipótese já acompanhada;
- indica limitação conhecida;
- ajuda a definir confiança.
A memória reduz a qualidade da interpretação quando:
- substitui dados atuais;
- copia conclusão antiga sem revalidar;
- mistura resultado mensal com regra permanente;
- mantém conhecimento obsoleto;
- ignora divergências entre fontes.
# HIERARQUIA DA MEMÓRIA
A memória do AzMina Reporting deve ser entendida em camadas.
O fluxo conceitual é:
```text
Relatórios PDF
↓
Análises da competência
↓
history/monthly
↓
history/evolucao_mensal
↓
history/indicadores_historicos.csv
↓
knowledge
↓
prompts
```
Cada camada tem função própria.
Nenhuma camada deve substituir a outra.
## Relatórios PDF
Os relatórios PDF são a evidência original da competência.
Eles pertencem a `reports/AAAA-MM/source/`.
Eles não são memória permanente.
Eles não devem ser alterados.
Eles não devem ser renomeados manualmente.
Eles não devem ser usados como dados atuais de outra competência.
Neles a informação nasce como dado bruto.
## Análises da competência
As análises da competência transformam os PDFs em leitura técnica.
Elas pertencem a `reports/AAAA-MM/analysis/`.
Elas separam fatos, hipóteses, riscos, oportunidades e recomendações.
Antes da revisão humana, não são histórico consolidado.
Depois da aprovação, podem alimentar `history/`.
Elas não alimentam `knowledge/` automaticamente.
## history/monthly
`history/monthly/` deve ser a camada mensal rica do histórico.
Quando implementado, cada competência poderá ter um arquivo `AAAA-MM.md`.
Esse arquivo poderá consolidar fatos, hipóteses, recomendações, aprendizados candidatos e observações.
Essa camada permite consulta futura mais detalhada por agentes de IA.
Ela registra contexto mensal aprovado.
Ela não registra conhecimento permanente diretamente.
Aprendizado candidato ainda não é conhecimento.
## history/evolucao_mensal
`history/evolucao_mensal.md` é a síntese longitudinal aprovada.
Ele mostra continuidade entre competências.
Ele ajuda a identificar:
- tendências;
- recorrências;
- mudanças de rota;
- hipóteses acompanhadas;
- recomendações persistentes;
- pontos que perderam relevância.
Ele não deve guardar todos os números.
Ele não substitui arquivos mensais detalhados quando existirem.
## history/indicadores_historicos.csv
`history/indicadores_historicos.csv` é a camada numérica comparável.
Ele registra os principais indicadores mensais das quatro fontes, quando disponíveis.
Ele permite comparação objetiva entre competências.
Ele ajuda a verificar crescimento, queda, estabilidade e mudança de patamar.
Ele não deve conter interpretações longas.
Ele não substitui análises em Markdown.
Ele não deve virar glossário, prompt ou knowledge.
## knowledge
`knowledge/` guarda memória permanente.
Ele recebe apenas informação estrutural, institucional, metodológica ou recorrente.
Ele deve ser atualizado somente após aprovação explícita e avaliação de elegibilidade.
`knowledge/` pode guardar:
- contexto permanente do projeto;
- características do portal;
- públicos recorrentes;
- objetivos vigentes;
- decisões arquiteturais;
- boas práticas;
- aprendizados reutilizáveis;
- limitações conhecidas;
- changelog do projeto.
`knowledge/` não deve guardar:
- números mensais comuns;
- ranking mensal de páginas;
- desempenho isolado de campanha;
- hipótese não validada;
- observação pontual;
- conclusão sem aprovação humana.
## prompts
`prompts/` guarda instruções reutilizáveis.
Os prompts definem como analisar, escrever, formular hipóteses, usar histórico e aplicar estilo consultivo.
Prompts governam comportamento.
Prompts não guardam resultados mensais.
Prompts não devem guardar memória detalhada do cliente.
Este arquivo é um manual de uso, não um repositório de histórico.
## Onde a informação nasce
A informação nasce nos relatórios da competência.
Ela ganha interpretação nas análises.
Ela ganha validade operacional após revisão humana.
Ela entra em `history/` quando representa resultado aprovado.
Ela pode entrar em `knowledge/` quando deixa de ser resultado mensal e passa a ser aprendizado permanente.
Ela pode alterar prompts apenas quando se torna regra metodológica ou decisão arquitetural.
## Como a informação amadurece
Um dado isolado é evidência da competência.
Uma hipótese acompanhada por ciclos pode se tornar padrão recorrente.
Um padrão recorrente pode se tornar conhecimento permanente.
Um conhecimento permanente pode justificar atualização metodológica.
Esse amadurecimento deve ser explícito, lento e aprovado.
O framework deve preferir memória confiável a memória abundante.
## Quando deixa de existir
Uma informação deixa de orientar o projeto quando se torna obsoleta, contraditória, descontinuada ou incompatível com o estado atual do framework.
Conhecimento não é eterno.
Memória útil precisa de manutenção.
Quando um processo deixa de existir, sua regra ativa deve ser removida ou arquivada.
Quando uma ferramenta é substituída, suas limitações antigas não devem orientar a nova fonte.
# GOVERNANÇA DO CONHECIMENTO
## Fluxo do Conhecimento
O fluxo oficial do conhecimento é:
```text
Relatórios
↓
Análises
↓
History
↓
Revisão Humana
↓
Knowledge
↓
Competências futuras
```
Relatórios geram evidência.
Análises geram interpretação.
`history/` registra resultado aprovado.
A revisão humana valida preservação.
`knowledge/` recebe apenas o que é permanente, elegível e reutilizável.
Competências futuras usam o conhecimento como contexto e regra de decisão.
O fluxo não pode ser invertido.
Não criar knowledge a partir de impressão não aprovada.
Não atualizar prompt com base em hipótese isolada.
Não usar conhecimento permanente para negar evidência atual.
## Critérios de Promoção para Knowledge
Um aprendizado somente deve ser promovido de `history/` para `knowledge/` quando atender pelo menos um critério:
- recorrência;
- relevância metodológica;
- decisão estrutural;
- limitação permanente da ferramenta;
- comportamento confirmado.
Casos isolados permanecem em `history/`.
Recorrência ocorre quando o mesmo comportamento aparece em múltiplas competências, com relevância e aprovação.
Relevância metodológica ocorre quando um aprendizado melhora o modo de analisar, validar ou recomendar.
Decisão estrutural ocorre quando há escolha aprovada sobre processo, arquitetura, fluxo, responsabilidade, nomenclatura ou entrega.
Limitação permanente da ferramenta ocorre quando uma restrição conhecida afeta leituras futuras.
Comportamento confirmado ocorre quando um padrão foi validado ao longo do projeto e não possui evidência contrária relevante.
Exemplos elegíveis:
- SEMrush não substitui GSC para cliques reais;
- posição média menor representa melhora;
- tempo médio zerado no GA4 exige validação;
- queda de conversões em Ads exige análise de demanda;
- gráficos anuais não substituem comparação mensal.
## Conflitos de Conhecimento
Dois conhecimentos permanentes contraditórios não podem coexistir como válidos.
Quando houver conflito, o sistema deve:
- revisar;
- atualizar;
- arquivar;
- remover.
Nunca duplicar.
Nunca manter regras incompatíveis em paralelo.
Nunca escolher regra apenas por ser mais recente.
O critério deve considerar:
- aderência ao projeto atual;
- força da evidência;
- aprovação explícita;
- metodologia vigente;
- compatibilidade com fontes obrigatórias.
Conflitos de processo devem ser resolvidos em `knowledge/08_DECISOES_ARQUITETURAIS.md`.
Conflitos de aprendizado devem ser resolvidos em `knowledge/10_LICOES_APRENDIDAS.md`.
Conflitos metodológicos gerais podem exigir revisão de prompts.
## Obsolescência do Conhecimento
Conhecimento permanente deve ser removido, revisado ou arquivado quando deixa de representar o projeto atual.
Remover conhecimento obsoleto é parte da manutenção do framework.
Remover conhecimento obsoleto é tão importante quanto criar novo conhecimento.
Conhecimento obsoleto aumenta risco de análise incorreta.
O conhecimento deve ser revisto quando houver:
- mudança estrutural;
- nova ferramenta;
- mudança metodológica;
- mudança editorial;
- evidência consolidada contrária;
- processo descontinuado.
Mudança estrutural ocorre quando fluxo, diretórios, responsabilidades ou entregáveis mudam de forma permanente.
Nova ferramenta exige revisar regras antigas antes de aplicá-las ao novo contexto.
Mudança metodológica exige alinhar knowledge e prompts à metodologia vigente.
Mudança editorial exige revisar conhecimentos ligados a públicos, temas, formatos e prioridades.
Evidência consolidada contrária exige reavaliar conhecimento anterior.
Processo descontinuado não deve permanecer como instrução ativa.
# USO OPERACIONAL
## Como consultar history
Consultar `history/` significa buscar contexto aprovado de competências anteriores.
Ordem recomendada:
1. `history/evolucao_mensal.md`.
2. `history/indicadores_historicos.csv`.
3. `history/monthly/AAAA-MM.md`, quando existir.
`history/evolucao_mensal.md` ajuda a entender a narrativa longitudinal.
`history/indicadores_historicos.csv` ajuda a confirmar números comparáveis.
`history/monthly/` ajuda a recuperar detalhes aprovados de uma competência.
Ao consultar `history/`, verificar:
- competência;
- aprovação;
- comparabilidade;
- definição da métrica;
- fonte;
- período;
- observações metodológicas.
## Como consultar knowledge
Consultar `knowledge/` significa buscar memória permanente.
Cada arquivo tem função própria.
`knowledge/01_PROJETO.md` orienta contexto institucional.
`knowledge/02_MONITORAMENTO_SEMRUSH.md` orienta monitoramento SEMrush.
`knowledge/03_PUBLICOS_E_PAISES.md` orienta públicos e mercados.
`knowledge/04_RELATORIOS.md` orienta estrutura de relatórios.
`knowledge/05_INDICADORES.md` orienta definições de indicadores.
`knowledge/06_OBJETIVOS.md` orienta objetivos vigentes.
`knowledge/07_TIMELINE.md` orienta marcos permanentes.
`knowledge/08_DECISOES_ARQUITETURAIS.md` orienta decisões estruturais.
`knowledge/09_BOAS_PRATICAS.md` orienta práticas aprovadas.
`knowledge/10_LICOES_APRENDIDAS.md` orienta aprendizados reutilizáveis.
`knowledge/11_CHANGELOG.md` registra alterações do projeto.
Ao consultar `knowledge/`, verificar se o conteúdo ainda é vigente.
## Quando consultar history
Consultar `history/` quando for necessário saber:
- se a variação atual é inédita;
- se a variação é recorrente;
- se existe sequência de crescimento;
- se existe sequência de queda;
- se uma hipótese anterior foi confirmada;
- se uma recomendação anterior foi aplicada;
- se uma métrica mudou de patamar;
- se uma queda contradiz o histórico recente;
- se um comportamento já foi tratado como sazonal.
`history/` deve ser consultado antes de classificar variação como tendência.
`history/` deve ser consultado antes de chamar problema de estrutural.
`history/` deve ser consultado antes de repetir recomendação.
## Quando consultar knowledge
Consultar `knowledge/` quando for necessário saber:
- contexto institucional permanente;
- objetivos vigentes;
- públicos relevantes;
- países relevantes;
- definições de métricas;
- limitações de ferramenta;
- decisões estruturais;
- boas práticas aprovadas;
- aprendizados reutilizáveis;
- cuidados editoriais.
`knowledge/` deve ser consultado antes de recomendações sensíveis.
`knowledge/` deve ser consultado antes de atualizar memória permanente.
`knowledge/` deve ser consultado antes de propor mudança estrutural.
## Quando NÃO utilizar histórico
Não utilizar histórico para substituir dados atuais.
Não utilizar histórico para preencher fonte ausente.
Não utilizar histórico para inventar número.
Não utilizar histórico para confirmar hipótese contradita pela competência atual.
Não utilizar histórico de outro mês como dado atual.
Não utilizar histórico sem verificar competência, fonte e métrica.
Não utilizar histórico para forçar narrativa.
Não utilizar histórico não aprovado.
Não utilizar conhecimento obsoleto.
Não utilizar `history/` como `knowledge/`.
Não utilizar `knowledge/` como resultado mensal.
## Como utilizar histórico durante a análise
Durante a análise, o histórico deve contextualizar o comportamento atual.
Processo recomendado:
1. Validar a competência atual.
2. Ler as fontes atuais.
3. Identificar fatos centrais.
4. Consultar histórico aplicável.
5. Verificar recorrência ou ruptura.
6. Formular hipóteses proporcionais.
7. Definir recomendações compatíveis.
O histórico deve ajudar a responder:
- já ocorreu antes?
- ocorreu na mesma fonte?
- teve magnitude semelhante?
- teve causa provável semelhante?
- gerou recomendação anterior?
- reforça conhecimento existente?
- contradiz conhecimento existente?
## Como utilizar histórico durante recomendações
Durante recomendações, o histórico deve orientar prioridade e prudência.
Problema recorrente pode ganhar prioridade.
Variação pontual deve gerar recomendação mais conservadora.
Ação já recomendada deve ser reavaliada.
Recomendação descartada não deve voltar sem nova evidência.
Comportamento que costuma se corrigir pode gerar acompanhamento.
Agravamento progressivo pode elevar prioridade.
Toda recomendação deve continuar conectada aos dados atuais.
## Como utilizar histórico durante hipóteses
Durante hipóteses, o histórico deve aumentar ou reduzir confiança.
Padrão recorrente pode fortalecer hipótese.
Divergência histórica pode reduzir confiança.
Hipótese antiga não confirmada continua hipótese.
Hipótese repetidamente confirmada pode virar aprendizado candidato.
Hipótese contradita deve ser revisada.
O histórico ajuda a diferenciar:
- sazonalidade possível;
- tendência consolidada;
- variação pontual;
- ruído;
- anomalia;
- mudança estrutural.
# CONHECIMENTO PERMANENTE
## Contexto institucional
Contexto institucional é informação estável sobre o projeto, a organização, seus objetivos e seu papel editorial.
Pode incluir missão, públicos, objetivos, restrições e sensibilidades permanentes.
Não inclui desempenho mensal.
Pertence a `knowledge/01_PROJETO.md` ou arquivo aplicável.
## Características permanentes do portal
Características permanentes do portal são atributos estáveis que afetam interpretação.
Podem incluir domínio principal, natureza jornalística, temas sensíveis, dependência de busca orgânica e rigor editorial.
Elas orientam recomendações.
Elas não são desempenho de competência.
## Padrões recorrentes
Padrões recorrentes são comportamentos observados em múltiplas competências.
Eles devem orientar contexto e hipótese.
Eles não devem virar explicação automática.
Exemplos possíveis:
- queda após meses de crescimento em Ads;
- divergência entre GSC e GA4;
- CTR maior com impressões menores;
- tempo médio zerado no GA4;
- gráfico anual confundido com mensal.
## Tendências consolidadas
Tendência consolidada exige repetição, consistência, fonte relevante, ausência de contradição forte e impacto estratégico.
Tendência consolidada pode orientar recomendações mais firmes.
Mesmo assim, a competência atual deve ser validada.
## Aprendizados metodológicos
Aprendizados metodológicos ensinam como analisar melhor.
Podem nascer de erro identificado, limitação de fonte, divergência recorrente ou decisão aprovada.
Exemplos:
- posição média menor é melhor;
- base pequena exige cautela;
- divergência deve ser declarada;
- anomalia exige validação;
- gráfico anual não substitui mês contra mês.
## Particularidades do GA4
Conhecimento permanente sobre GA4 deve registrar limitações e padrões de interpretação.
Pode incluir diferença entre usuários, sessões e visualizações.
Pode incluir cautela com tempo médio isolado.
Pode incluir eventos personalizados.
Pode incluir divergência entre teste manual e consolidado.
Pode incluir indícios de tráfego automatizado.
Resultados mensais de GA4 ficam em `history/`.
## Particularidades do Google Ads
Conhecimento permanente sobre Google Ads deve diferenciar demanda, campanha, orçamento e eficiência.
Pode incluir impressões, CTR, CPC, CPA, taxa de conversão, histórico e sazonalidade.
Pode incluir cautela com reestruturações amplas.
Pode incluir avaliação separada por campanha, grupo e palavra-chave.
Resultados mensais de campanhas ficam em `history/`.
## Particularidades do GSC
Conhecimento permanente sobre GSC deve orientar leitura de busca orgânica.
Cliques, impressões, CTR e posição devem ser lidos em conjunto.
Posição média menor representa melhora.
Queda de cliques pode decorrer de demanda, impressões, CTR, posição ou consultas.
Resultados mensais de páginas e consultas ficam em `history/`.
## Particularidades do SEMrush
Conhecimento permanente sobre SEMrush deve registrar limites da ferramenta.
Gráficos anuais são contexto.
Comparativo mensal é a base da competência.
Desktop e mobile devem ser separados quando necessário.
Estimativas não substituem dados reais.
Rankings não substituem cliques e impressões do GSC.
Resultados mensais do SEMrush ficam em `history/`.
## Erros recorrentes
Erros recorrentes devem ser registrados quando ajudam a prevenir falhas futuras.
Exemplos:
- confundir demanda com desempenho;
- confundir CTR com tráfego;
- confundir impressões com audiência;
- interpretar posição média invertida;
- destacar percentual sem volume;
- recomendar reestruturação sem histórico;
- ocultar divergência;
- tratar hipótese como fato;
- transformar mês atípico em tendência.
Erro isolado pode permanecer em `history/`.
Erro metodológico recorrente pode ir para `knowledge/10_LICOES_APRENDIDAS.md`.
## Decisões permanentes do framework
Decisões permanentes são escolhas aprovadas que orientam o projeto.
Exemplos:
- separar Codex e ChatGPT;
- preservar PDFs originais;
- validar manifest antes da análise;
- gerar quatro análises individuais;
- gerar resumo executivo consolidado;
- interromper para revisão humana;
- atualizar history e knowledge somente após aprovação;
- não gerar DOCX ou PDF no Codex;
- comparar com mês imediatamente anterior.
Decisões permanentes pertencem a `knowledge/08_DECISOES_ARQUITETURAIS.md` ou arquivo aplicável.
# O QUE PERTENCE A HISTORY
`history/` registra resultados aprovados e comparáveis do projeto.
Ele guarda o que aconteceu em cada competência.
Pertencem a `history/`:
- principais fatos mensais;
- valores atuais e anteriores;
- variações absolutas e percentuais;
- hipóteses da competência;
- recomendações aprovadas;
- recomendações pendentes;
- campanhas positivas ou negativas;
- páginas com ganho ou queda;
- consultas com ganho ou queda;
- indicadores mensais comparáveis;
- observações para acompanhamento;
- aprendizados candidatos.
Exemplos:
- sessões orgânicas cresceram em determinada competência;
- cliques do GSC caíram em determinado mês;
- campanha específica teve CPA elevado;
- página específica perdeu impressões;
- consulta específica ganhou CTR;
- hipótese de sazonalidade ficou em acompanhamento;
- recomendação de revisar determinada página foi aprovada;
- evento específico apresentou anomalia naquele mês.
Toda informação em `history/` deve manter relação com uma competência.
Se a informação depende de data, valor ou recorte mensal, pertence a `history/`.
`history/` não deve virar knowledge sem avaliação.
`history/` não deve ser depósito de regras ativas.
# O QUE PERTENCE A KNOWLEDGE
`knowledge/` registra conhecimento permanente, estrutural e reutilizável.
Ele guarda o que continua válido para competências futuras.
Pertencem a `knowledge/`:
- contexto institucional permanente;
- características do portal;
- públicos e mercados relevantes;
- objetivos vigentes;
- definições de indicadores;
- decisões arquiteturais;
- boas práticas;
- aprendizados reutilizáveis;
- limitações conhecidas;
- regras permanentes de interpretação;
- decisões metodológicas aprovadas;
- changelog do projeto.
Exemplos:
- posição média menor representa melhora;
- SEMrush não substitui GSC para cliques reais;
- Google Ads deve ser analisado com demanda e histórico;
- conteúdos sensíveis exigem rigor editorial;
- PDFs originais devem ser preservados;
- atualização de history e knowledge só ocorre após aprovação humana.
`knowledge/` deve ser estável, mas não imutável.
Ele deve ser revisado quando houver obsolescência.
Ele não deve acumular dados mensais.
Ele não deve guardar tudo que foi aprendido.
Ele deve guardar o que continua útil, aprovado e aplicável.
# EVOLUÇÃO FUTURA
Recomenda-se oficialmente a criação e uso operacional de:
```text
history/monthly/
```
Com arquivos por competência no formato:
```text
AAAA-MM.md
```
Cada arquivo poderá conter:
- fatos;
- hipóteses;
- recomendações aprovadas;
- recomendações pendentes;
- aprendizados candidatos;
- observações.
O arquivo mensal deve funcionar como memória rica da competência.
Ele deve ser criado ou atualizado apenas após aprovação humana, salvo regra operacional específica.
Ele não substitui:
- `history/evolucao_mensal.md`;
- `history/indicadores_historicos.csv`.
Ele complementa ambos.
`history/evolucao_mensal.md` continua sendo a síntese longitudinal.
`history/indicadores_historicos.csv` continua sendo a série numérica comparável.
`history/monthly/AAAA-MM.md` registra contexto, hipóteses, recomendações e observações.
Essa camada permitirá consultas futuras mais ricas por agentes de IA.
Agentes poderão recuperar:
- por que uma recomendação foi feita;
- qual hipótese ficou pendente;
- qual fonte sustentou uma leitura;
- qual divergência existia;
- qual aprendizado era candidato;
- qual ponto deveria ser acompanhado.
Essa camada melhora a memória sem contaminar `knowledge/`.
# REGRAS DE OURO
- este documento é manual de uso da memória, não armazenamento de histórico;
- resultados mensais pertencem a `history/`;
- conhecimento permanente pertence a `knowledge/`;
- prompts governam comportamento, não guardam resultados;
- dados atuais sempre vêm antes do histórico;
- histórico contextualiza, mas nunca substitui a competência atual;
- knowledge orienta, mas não anula evidência nova;
- números mensais não são conhecimento;
- aprendizados candidatos permanecem em `history/` até promoção;
- promoção para `knowledge/` exige critério;
- casos isolados não devem virar regra permanente;
- recorrência deve ser validada antes de virar conhecimento;
- limitações permanentes de ferramentas devem ser documentadas;
- decisões estruturais aprovadas devem ser preservadas;
- conhecimentos contraditórios não podem coexistir;
- conhecimento obsoleto deve ser revisado, arquivado ou removido;
- remover conhecimento obsoleto é manutenção do framework;
- `history/` deve preservar rastreabilidade temporal;
- `knowledge/` deve preservar utilidade permanente;
- `history/monthly/` deve complementar as demais camadas;
- hipóteses históricas não confirmadas continuam hipóteses;
- recomendações antigas devem ser reavaliadas antes de repetição;
- divergências históricas reduzem confiança quando ainda relevantes;
- toda atualização de memória deve respeitar revisão humana;
- memória boa melhora decisões futuras sem distorcer dados atuais.
