# 04 RELATÓRIOS
## Objetivo
Este arquivo define os tipos de relatórios aceitos, suas funções, obrigatoriedade, regras de identificação e limitações.
Ele registra conhecimento permanente sobre entradas documentais do AzMina Reporting.
Ele não armazena resultados mensais.
Ele não substitui o manifest.
Ele não substitui os prompts de análise.
Seu papel é orientar o reconhecimento, a validação e o uso correto dos relatórios em cada competência.
Relatório aceito é aquele que pode ser identificado, lido, associado a uma fonte e usado com rastreabilidade.
Relatório sem período confiável pode servir apenas como contexto, quando isso não afetar a análise principal.
Relatório sem fonte identificável não deve sustentar conclusão.
## Fontes Obrigatórias
As fontes obrigatórias são:
- Google Analytics 4;
- Google Ads;
- Google Search Console;
- SEMrush.
Cada fonte deve gerar análise individual.
A ausência de uma fonte obrigatória deve bloquear a análise completa, salvo decisão operacional explícita registrada.
Uma fonte pode estar dentro de relatório consolidado quando o bloco for suficiente e identificável.
Cada fonte obrigatória precisa ter evidência mínima própria.
Fonte obrigatória não pode ser considerada presente apenas por menção superficial.
## Relatório Consolidado Geral
Uma competência pode conter relatório consolidado com múltiplas fontes.
O pipeline deve:
- identificar blocos internos;
- mapear cada fonte;
- validar legibilidade;
- registrar no manifest;
- não duplicar métricas;
- não considerar a fonte ausente quando o bloco estiver completo.
Relatório consolidado não elimina a necessidade de quatro análises individuais.
Cada bloco deve ser associado à fonte correta.
Quando o bloco estiver incompleto, registrar limitação.
Quando houver dúvida sobre origem da métrica, interromper ou validar antes da análise.
Blocos internos devem ser tratados como fontes separadas para fins de análise.
Se o consolidado trouxer a mesma métrica em mais de um bloco, usar a versão compatível com o recorte correto.
O manifest deve indicar quando a fonte foi reconhecida dentro de relatório consolidado.
## Relatórios de GA4
Relatórios de GA4 podem conter:
- visão geral;
- usuários;
- sessões;
- visualizações;
- canais;
- origem e mídia;
- páginas;
- eventos;
- países;
- cidades;
- dispositivos;
- engajamento;
- comparativos mensais.
Sua função é sustentar leitura de audiência, aquisição, comportamento, engajamento e eventos.
Sua limitação principal é depender de implementação, consentimento, atribuição e configuração de eventos.
GA4 não deve ser usado para explicar sozinho toda a procura orgânica.
GA4 deve ser correlacionado com GSC quando a leitura envolver busca.
Relatório de GA4 pode conter eventos personalizados do AzMina.
Eventos devem ser interpretados conforme implementação.
Tempo e engajamento exigem cautela quando houver indício de anomalia.
## Relatórios de Google Ads
Relatórios de Google Ads podem conter:
- visão geral;
- campanhas;
- grupos;
- anúncios;
- palavras-chave;
- termos de pesquisa;
- dispositivos;
- conversões;
- custo;
- CPA;
- CTR;
- CPC;
- ROAS;
- comparativos.
Sua função é sustentar leitura de exposição paga, custo, demanda, eficiência, conversões e qualidade por campanha.
Relatórios detalhados em CSV podem ser usados em diagnósticos específicos.
O pipeline mensal principal trabalha com fontes presentes na competência.
Google Ads deve ser interpretado com histórico, demanda e comportamento pós clique quando possível.
Relatórios de Google Ads podem conter conversões principais e todas as conversões.
Essas métricas devem ser diferenciadas antes da recomendação.
Quando houver Google Ad Grants, o contexto institucional deve ser preservado.
## Relatórios de Google Search Console
Relatórios de GSC podem conter:
- cliques;
- impressões;
- CTR;
- posição;
- páginas;
- consultas;
- países;
- dispositivos;
- comparativos.
Sua função é sustentar leitura de presença orgânica real no Google.
GSC deve ser usado para entender visibilidade, captura de clique e posição.
GSC não mostra comportamento completo dentro do site.
GSC deve ser correlacionado com GA4 quando a leitura envolver sessões orgânicas.
Posição média deve ser interpretada com sentido correto.
Consultas e páginas devem ser usadas para explicar o resultado geral.
Países e dispositivos ajudam a qualificar a oportunidade orgânica.
## Relatórios do SEMrush
Relatórios do SEMrush devem seguir knowledge/02_MONITORAMENTO_SEMRUSH.md.
Podem incluir:
- GSC via SEMrush;
- Position Tracking;
- Backlinks;
- Site Audit;
- On Page SEO Checker;
- Keyword Strategy;
- outros relatórios validados.
SEMrush é fonte obrigatória.
SEMrush pode incluir dados integrados, estimativas e métricas proprietárias.
Cada relatório SEMrush deve ser identificado por tipo e recorte.
Não duplicar aqui as regras detalhadas do monitoramento SEMrush.
Quando SEMrush trouxer gráficos anuais e comparativos mensais, separar as duas camadas.
Quando SEMrush trouxer estimativas, registrar essa natureza.
## Relatórios Obrigatórios e Complementares
Obrigatórios:
- evidência suficiente de GA4;
- evidência suficiente de Google Ads;
- evidência suficiente de GSC;
- evidência suficiente de SEMrush.
Complementares:
- auditorias;
- backlinks;
- relatórios de palavras-chave;
- relatórios técnicos;
- CSVs;
- documentos de contexto.
Relatório complementar melhora diagnóstico, mas não substitui fonte obrigatória.
Relatório complementar só deve orientar conclusão quando tiver relação clara com a competência.
Complementares podem elevar confiança, reduzir incerteza ou orientar investigação.
Complementares não devem gerar entregável novo sem solicitação ou decisão estrutural.
## Identificação Automática
O pipeline deve identificar relatórios por:
- nome do arquivo;
- conteúdo;
- títulos internos;
- métricas;
- plataforma;
- período;
- recorte.
Não depender exclusivamente do nome.
Nome do arquivo pode estar incompleto, genérico ou ambíguo.
Conteúdo interno deve confirmar fonte, período e métrica.
Quando a identificação falhar, registrar bloqueio.
Identificação deve ocorrer antes da extração de conclusões.
Relatório não identificado não deve ser usado para preencher lacunas de fonte obrigatória.
## Período do Relatório
Validar:
- competência atual;
- mês anterior;
- data inicial;
- data final;
- comparação;
- quantidade de dias;
- fuso quando relevante.
Não aceitar relatório ambíguo sem registrar bloqueio.
Período incorreto pode comprometer toda a análise.
Comparações devem preservar recortes equivalentes.
Quando o período tiver limitação, registrar no manifest e refletir no texto analítico.
O período deve ser compatível com a competência ativa.
Dados fora do período podem ser contexto, mas não resultado mensal atual.
## Relatórios com Múltiplos Períodos
Relatórios podem conter:
- comparativo mensal;
- gráfico anual;
- acumulado;
- período total;
- ano contra ano;
- mês contra mês.
A competência atual deve sempre usar o comparativo correto.
Gráfico anual não substitui comparação mensal.
Acumulado não substitui mês atual.
Ano contra ano não substitui mês contra mês.
Quando houver múltiplos períodos, declarar qual período sustenta a conclusão.
Se o relatório alternar visualizações de período, conferir o rótulo de cada bloco.
Não misturar acumulado e mês isolado na mesma variação.
## Arquivos Originais
Arquivos originais ficam em source/.
Arquivos originais mantêm nome.
Arquivos originais não são renomeados.
Arquivos originais não são versionados.
Arquivos originais não são alterados.
Arquivos originais funcionam como evidência.
source/ é área local.
Os arquivos originais não são o entregável principal.
O relatório final deve evitar citar nomes dos arquivos de origem.
Arquivos originais podem ser consultados novamente durante revisão.
A preservação do arquivo original garante rastreabilidade.
## Formatos Aceitos
O fluxo pode receber, conforme evolução:
- PDF;
- CSV;
- XLSX;
- JSON;
- exportações de plataformas;
- documentos complementares.
Na arquitetura atual, PDFs são a entrada mensal principal.
Arquivos brutos permanecem locais em source/.
CSV e XLSX podem ser aceitos para diagnóstico específico.
JSON pode apoiar manifest ou integrações futuras.
Novos formatos devem ser documentados quando se tornarem recorrentes.
Formato aceito não significa que será versionado.
Arquivos brutos continuam protegidos pela política de versionamento.
## Duplicidades
Duplicidades podem ser:
- duplicidade idêntica;
- versões diferentes;
- relatórios sobrepostos;
- arquivos repetidos;
- recortes complementares.
Interromper apenas quando a duplicidade comprometer a identificação.
Arquivos idênticos podem ser ignorados com registro.
Versões diferentes exigem escolha explícita ou validação humana.
Relatórios sobrepostos podem complementar análise se os recortes forem claros.
Não somar dados duplicados.
Duplicidade deve ser descrita no manifest quando afetar validação.
Relatórios complementares semelhantes podem ser usados para confirmar leitura, não para duplicar volume.
## Relatórios Ilegíveis ou Incompletos
Bloqueios possíveis:
- página cortada;
- métrica ausente;
- período não identificável;
- valor truncado;
- baixa legibilidade;
- ausência de comparação;
- arquivo corrompido.
Não inventar dados.
Não preencher lacuna com histórico.
Não usar estimativa externa para substituir valor ausente.
Se a limitação não impedir a leitura geral, registrar ressalva.
Se a limitação impedir fonte obrigatória, interromper.
Quando a limitação for parcial, preservar o que é confiável e declarar o que não pode ser concluído.
Documento incompleto nunca deve justificar dado inventado.
## Rastreabilidade
O manifest deve registrar:
- nome do arquivo;
- tipo;
- fonte;
- período;
- obrigatoriedade;
- status;
- observações;
- possíveis limitações.
Não registrar caminho absoluto.
Não registrar informação pessoal desnecessária.
Não registrar dados específicos fora do necessário para validação.
Rastreabilidade serve para auditar a competência.
Rastreabilidade não deve expor arquivos locais no Git.
O manifest deve ser suficiente para entender o estado da competência.
O manifest não substitui a leitura crítica do relatório.
## Papel das Análises Individuais
A relação entre fonte e arquivo é:
- GA4 para ga4_analise.md;
- Google Ads para google_ads_analise.md;
- GSC para gsc_analise.md;
- SEMrush para semrush_analise.md.
Cada análise individual transforma fonte em interpretação técnica.
Cada análise individual preserva detalhe necessário para revisão.
Cada análise individual alimenta o resumo executivo.
Análise individual pode ser mais detalhada que o resumo.
Análise individual deve preservar evidência suficiente para revisão.
## Papel do Resumo Executivo
O resumo executivo usa as análises já validadas.
Ele não substitui o trabalho de leitura das fontes.
Ele não deve nascer de recortes soltos.
Ele deve consolidar as quatro fontes em narrativa única.
Ele deve preservar apenas achados relevantes para decisão.
Resumo executivo não deve citar todos os relatórios recebidos.
Resumo executivo deve refletir fontes validadas, não arquivos brutos isolados.
## Relatórios Fora do Escopo Mensal
Podem ser aceitos para diagnósticos específicos, mas não devem alterar automaticamente o pipeline.
Exemplos:
- diagnóstico completo de Google Ads;
- termos de pesquisa;
- auditoria técnica extensa;
- relatório anual;
- benchmark competitivo;
- análise de backlinks aprofundada.
Esses materiais devem ser tratados como complementares.
Eles não devem mudar obrigatoriedade sem decisão estrutural.
Eles não devem alimentar knowledge automaticamente.
## Atualização deste Arquivo
Atualizar quando houver:
- nova fonte;
- novo relatório recorrente;
- novo formato;
- alteração de obrigatoriedade;
- nova regra de identificação;
- mudança no manifest;
- alteração estrutural do pipeline.
Não atualizar por relatório isolado.
Não atualizar por arquivo incompleto pontual.
Não atualizar por diagnóstico específico sem recorrência.
## Regras de Ouro
- confirmar quatro fontes obrigatórias;
- identificar fonte por conteúdo, não só nome;
- validar período antes de analisar;
- registrar relatório consolidado no manifest;
- não duplicar métricas;
- não somar dados repetidos;
- não aceitar fonte obrigatória ilegível;
- preservar arquivos originais;
- manter source/ local;
- não versionar arquivos brutos;
- não registrar caminho absoluto;
- tratar CSVs como apoio quando aplicável;
- separar obrigatório de complementar;
- separar mensal de anual;
- registrar limitações;
- não inventar dados;
- manter rastreabilidade;
- gerar quatro análises individuais;
- gerar resumo apenas após análises;
- atualizar este arquivo só por mudança estrutural.
