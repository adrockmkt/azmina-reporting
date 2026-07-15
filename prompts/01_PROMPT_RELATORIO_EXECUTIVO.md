# 01 PROMPT RELATÓRIO EXECUTIVO
## Objetivo
Este arquivo é o controlador de execução do pipeline analítico do AzMina Reporting.
Ele coordena contexto, validações, prompts especializados, análises individuais, resumo executivo, consistência, interrupções e saídas.
Ele funciona como maestro do framework.
Ele não substitui nenhum prompt especializado.
Ele não concentra regras detalhadas de análise, estilo, glossário, histórico, hipóteses, consultoria ou estrutura final do relatório executivo.
Sua função é garantir que cada camada seja acionada na ordem correta e dentro de sua responsabilidade.
O Prompt 01 deve impedir execução incompleta, leitura fora da competência, geração parcial indevida e atualização prematura de memória.
Ele deve preservar a separação entre evidência, análise, entrega, revisão humana e encerramento operacional.
Ao final da execução conduzida por este prompt, devem existir quatro análises individuais e um resumo executivo em Markdown, prontos para revisão humana.
# PAPEL DO PROMPT 01
Este documento orquestra.
Este documento valida.
Este documento coordena.
Este documento controla a sequência.
Este documento verifica pré-requisitos.
Este documento garante consistência.
Ele deve orientar quando cada documento do framework entra no processo.
Ele deve garantir que os arquivos sejam criados na competência correta.
Ele deve garantir que a execução não ignore prompts especializados.
Ele deve garantir que o resumo executivo nasça das quatro análises individuais.
Ele não ensina análise.
Ele não define estilo.
Ele não define conceitos.
Ele não armazena histórico.
Ele não gera DOCX.
Ele não gera PDF.
Ele não atualiza memória antes da aprovação.
Ele não deve duplicar regras já definidas em outros prompts.
Quando houver dúvida sobre conteúdo especializado, consultar o prompt responsável.
Quando houver dúvida sobre fluxo operacional, consultar START_HERE.md e COMANDO.md.
Quando houver dúvida estrutural, consultar prompts/00_MASTER_SPECIFICATION.md.
# PRINCÍPIO DE ORQUESTRAÇÃO
Nenhuma etapa analítica pode começar antes que a competência esteja válida.
Nenhuma etapa analítica pode começar antes que o manifest esteja consistente.
Nenhuma etapa analítica pode começar antes que as quatro fontes obrigatórias estejam presentes.
Nenhuma etapa analítica pode começar antes que o contexto tenha sido carregado.
Nenhuma etapa analítica pode começar antes que os arquivos pertençam ao período correto.
Cada camada especializada deve ser acionada apenas para sua responsabilidade.
O Prompt 01 deve coordenar, não reinterpretar.
O Prompt 01 deve validar, não substituir evidência.
O Prompt 01 deve controlar sequência, não criar metodologia própria.
O fluxo deve sempre preservar a competência ativa como fronteira operacional.
O histórico pode contextualizar, mas não pode ser usado como dado atual.
O conhecimento permanente pode orientar, mas não pode anular evidência da competência.
Se houver bloqueio crítico, a execução deve parar e registrar o motivo.
Se houver ausência de fonte obrigatória, não gerar análise parcial.
Se houver dúvida de competência, período ou arquivo, interromper antes de interpretar.
# ENTRADAS OBRIGATÓRIAS
- competência no formato AAAA-MM;
- README.md;
- START_HERE.md;
- COMANDO.md;
- prompts/00_MASTER_SPECIFICATION.md;
- prompts/02_ESTILO_DE_ESCRITA.md;
- prompts/03_REGRAS_DE_ANALISE.md;
- prompts/04_GLOSSARIO.md;
- prompts/05_HISTORICO_DO_PROJETO.md;
- prompts/06_HIPOTESES_E_CONFIANCA.md;
- prompts/07_ESTILO_CONSULTIVO.md;
- prompts/08_RELATORIO_EXECUTIVO.md;
- todos os arquivos de knowledge/;
- todos os arquivos disponíveis em history/;
- reports/${COMPETENCIA}/manifest.json;
- PDFs exclusivamente em reports/${COMPETENCIA}/source/.
As entradas devem ser lidas como camadas complementares.
Nenhuma entrada mensal deve ser buscada fora de reports/${COMPETENCIA}/.
Arquivos de history/ podem ser consultados apenas como contexto aprovado.
Arquivos de knowledge/ podem ser consultados apenas como memória permanente.
# PRÉ-REQUISITOS DE EXECUÇÃO
Antes de gerar qualquer análise, confirmar:
- competência válida;
- diretórios presentes;
- manifest existente ou criado;
- PDFs legíveis;
- períodos coerentes;
- ausência de mistura de competências;
- ausência de duplicidade crítica;
- presença das quatro fontes obrigatórias.
Os diretórios mínimos são:
- reports/${COMPETENCIA}/source/;
- reports/${COMPETENCIA}/analysis/;
- reports/${COMPETENCIA}/output/.
O manifest deve registrar a competência, os arquivos encontrados, as fontes identificadas e o estado de validação.
Os PDFs devem permanecer com os nomes originais.
Não alterar PDFs.
Não renomear PDFs.
Não mover PDFs entre competências.
Interromper caso qualquer pré-requisito crítico falhe.
Quando interromper, informar objetivamente o bloqueio e o que falta para continuar.
# ORDEM DE CARREGAMENTO DO CONTEXTO
Carregar exatamente nesta ordem:
1. README.md
2. START_HERE.md
3. COMANDO.md
4. prompts/00_MASTER_SPECIFICATION.md
5. prompts/02_ESTILO_DE_ESCRITA.md
6. prompts/03_REGRAS_DE_ANALISE.md
7. prompts/04_GLOSSARIO.md
8. prompts/05_HISTORICO_DO_PROJETO.md
9. prompts/06_HIPOTESES_E_CONFIANCA.md
10. prompts/07_ESTILO_CONSULTIVO.md
11. prompts/08_RELATORIO_EXECUTIVO.md
12. todos os arquivos de knowledge/, em ordem numérica
13. todos os arquivos de history/
14. manifest.json da competência
15. exclusivamente os PDFs da competência ativa
Todos devem permanecer ativos simultaneamente durante a geração.
A ordem de carregamento não muda a hierarquia de responsabilidade dos documentos.
README.md, START_HERE.md e COMANDO.md orientam a operação.
prompts/00_MASTER_SPECIFICATION.md orienta a arquitetura.
Os prompts 02 a 08 orientam responsabilidades especializadas.
knowledge/ orienta memória permanente.
history/ orienta contexto aprovado.
manifest.json orienta validação da competência.
Os PDFs da competência ativa são a evidência original do mês.
# VALIDAÇÃO DA COMPETÊNCIA
COMPETENCIA deve estar no formato AAAA-MM.
Todos os caminhos usam COMPETENCIA.
Nenhum arquivo de outra competência pode ser lido como dado atual.
Histórico de outras competências serve apenas como contexto.
Análises e saídas devem permanecer dentro de reports/${COMPETENCIA}/.
O Prompt 01 deve impedir uso de mês fixo.
O Prompt 01 deve impedir uso de competência de exemplo.
O Prompt 01 deve impedir escrita fora da competência ativa durante o pipeline mensal.
Se a competência não existir, preparar a estrutura mínima antes de solicitar os PDFs.
Se a competência existir, validar sua consistência antes de seguir.
Se houver conflito entre competência informada, manifest e PDFs, interromper.
Se houver dados de outro mês dentro de source/, interromper.
# VALIDAÇÃO DAS FONTES
Confirmar obrigatoriamente:
- Google Analytics 4;
- Google Ads;
- Google Search Console;
- SEMrush.
Cada fonte deve estar identificada no manifest.
Cada fonte deve possuir evidência suficiente para gerar sua análise individual.
Uma fonte pode estar contida em relatório consolidado quando:
- o bloco estiver claramente identificado;
- os dados estiverem legíveis;
- houver evidência suficiente;
- essa condição estiver registrada no manifest.
Não gerar análises parciais quando faltar fonte obrigatória.
Não inferir fonte ausente a partir de histórico.
Não substituir fonte ausente por conhecimento permanente.
Não usar dado de outra competência para completar fonte ausente.
Quando uma fonte estiver ambígua, validar pelo conteúdo antes de gerar.
# COORDENAÇÃO DOS PROMPTS
O Prompt 01 apenas coordena as responsabilidades abaixo.
## Prompt 02
Responsável pelo estilo editorial.
Usar para linguagem, tom, formatação, clareza e padrão textual.
## Prompt 03
Responsável pela metodologia analítica.
Usar para interpretação, correlação, comparações, evidência e limites da análise.
## Prompt 04
Responsável pelo vocabulário oficial.
Usar para nomenclatura, conceitos, termos proibidos, termos padronizados e consistência terminológica.
## Prompt 05
Responsável pelo uso de history e knowledge.
Usar para consultar memória, separar histórico de conhecimento e evitar promoção indevida.
## Prompt 06
Responsável por hipóteses, evidência e confiança.
Usar para calibrar fato, hipótese, inferência, causalidade, divergência e recomendação.
## Prompt 07
Responsável pela postura consultiva e priorização.
Usar para impacto, decisão, prioridade, risco, oportunidade e recomendação prática.
## Prompt 08
Responsável pela estrutura e qualidade do resumo executivo.
Usar como especificação principal para reports/${COMPETENCIA}/output/resumo_executivo.md.
O Prompt 01 não deve repetir o conteúdo desses documentos.
O Prompt 01 deve garantir que eles sejam aplicados.
# GERAÇÃO DAS ANÁLISES INDIVIDUAIS
Gerar, nesta ordem:
1. reports/${COMPETENCIA}/analysis/ga4_analise.md
2. reports/${COMPETENCIA}/analysis/google_ads_analise.md
3. reports/${COMPETENCIA}/analysis/gsc_analise.md
4. reports/${COMPETENCIA}/analysis/semrush_analise.md
Cada análise deve usar os prompts especializados.
Cada análise deve comparar com o mês anterior.
Cada análise deve aplicar evidência numérica.
Cada análise deve respeitar o vocabulário oficial.
Cada análise deve separar fato, hipótese e recomendação.
Cada análise deve permanecer dentro da competência ativa.
Cada análise deve consultar histórico e conhecimento quando isso mudar a interpretação.
Cada análise deve registrar divergências relevantes.
Cada análise deve preservar a rastreabilidade das fontes.
Não repetir aqui regras analíticas específicas por fonte.
Não gerar resumo executivo antes de concluir as quatro análises.
Não atualizar history/ ou knowledge/ durante esta etapa.
# GERAÇÃO DO RESUMO EXECUTIVO
Gerar somente após concluir e validar as quatro análises:
reports/${COMPETENCIA}/output/resumo_executivo.md
Usar prompts/08_RELATORIO_EXECUTIVO.md como especificação principal de conteúdo.
Usar os demais prompts como camadas de apoio.
O resumo deve integrar as quatro fontes.
O resumo deve evitar capítulos isolados por ferramenta.
O resumo deve apresentar uma única narrativa.
O resumo deve priorizar impacto e decisão.
O resumo deve manter evidência numérica mínima.
O resumo deve respeitar o limite editorial definido.
O resumo deve refletir as análises individuais sem copiá-las.
O resumo deve apontar pontos fortes, pontos de atenção, impacto geral e recomendações priorizadas.
O resumo deve preservar hipóteses como hipóteses.
O resumo deve registrar divergências relevantes quando afetarem a decisão.
O resumo deve estar pronto para revisão humana, não para entrega final em DOCX ou PDF.
# CONTROLE DE CONSISTÊNCIA
Antes de considerar os arquivos prontos, verificar:
- coerência entre números;
- coerência entre atual e anterior;
- variações matematicamente plausíveis;
- posição média interpretada corretamente;
- comparação mensal separada da anual;
- divergências registradas;
- hipóteses proporcionais à evidência;
- recomendações proporcionais à confiança;
- consistência entre análises e resumo;
- consistência terminológica;
- ausência de números inventados;
- ausência de conclusões não sustentadas;
- ausência de referências a PDFs no texto final;
- ausência de emojis, tabelas e travessões.
Também verificar se os cinco arquivos esperados existem.
Também verificar se todos estão dentro de reports/${COMPETENCIA}/.
Também verificar se nenhum arquivo de history/ ou knowledge/ foi alterado antes da aprovação.
Se houver inconsistência crítica, corrigir antes da interrupção para revisão humana.
# INTERRUPÇÕES OBRIGATÓRIAS
O fluxo possui três interrupções obrigatórias.
## Interrupção 1
Após preparar a competência, solicitar os PDFs.
Aguardar exatamente:
CONTINUAR
Antes de CONTINUAR, não gerar análises.
Antes de CONTINUAR, não interpretar dados.
Antes de CONTINUAR, não alterar history/ ou knowledge/.
## Interrupção 2
Após gerar as quatro análises e o resumo executivo, solicitar revisão humana.
Aguardar exatamente:
APROVADO PARA ENCERRAMENTO
Antes dessa aprovação, não atualizar history/.
Antes dessa aprovação, não atualizar knowledge/.
Antes dessa aprovação, não marcar manifest como encerrado.
## Interrupção 3
Não iniciar geração de DOCX ou PDF no Codex.
A finalização editorial ocorre no ChatGPT.
O Codex pode preparar Markdown e encerramento operacional após aprovação, mas não deve produzir os documentos finais.
# SAÍDAS ESPERADAS
As saídas obrigatórias da etapa analítica são:
reports/${COMPETENCIA}/analysis/ga4_analise.md
reports/${COMPETENCIA}/analysis/google_ads_analise.md
reports/${COMPETENCIA}/analysis/gsc_analise.md
reports/${COMPETENCIA}/analysis/semrush_analise.md
reports/${COMPETENCIA}/output/resumo_executivo.md
manifest.json deve refletir:
- arquivos encontrados;
- fontes identificadas;
- validação;
- revisão;
- conclusão operacional.
Após a etapa analítica, a conclusão operacional ainda não deve estar marcada como final se não houver aprovação humana.
Após aprovação explícita, o encerramento pode atualizar history, knowledge aplicável, changelog e manifest conforme os documentos responsáveis.
As saídas finais em DOCX e PDF pertencem à finalização editorial no ChatGPT.
# LIMITES DO PROMPT 01
O Prompt 01 não deve redefinir arquitetura.
O Prompt 01 não deve duplicar prompts.
O Prompt 01 não deve armazenar histórico.
O Prompt 01 não deve promover conhecimento.
O Prompt 01 não deve criar conceitos.
O Prompt 01 não deve explicar métricas detalhadamente.
O Prompt 01 não deve alterar PDFs.
O Prompt 01 não deve gerar DOCX.
O Prompt 01 não deve gerar PDF.
O Prompt 01 não deve atualizar history ou knowledge antes da aprovação.
O Prompt 01 não deve modificar arquivos fora da competência ativa durante a execução mensal.
O Prompt 01 não deve resolver conflito metodológico sozinho.
O Prompt 01 não deve substituir revisão humana.
O Prompt 01 não deve usar histórico como dado atual.
O Prompt 01 não deve usar conhecimento permanente como evidência mensal.
Quando uma regra especializada faltar, registrar a lacuna e seguir o documento responsável mais próximo.
# CHECKLIST OPERACIONAL
Antes da análise:
- competência válida;
- estrutura criada ou validada;
- manifest criado ou validado;
- PDFs presentes e legíveis;
- quatro fontes confirmadas;
- contexto carregado na ordem correta.
Durante a geração:
- quatro análises individuais geradas;
- prompts especializados aplicados;
- resumo executivo gerado após as análises;
- consistência verificada;
- arquivos salvos na competência ativa.
Antes da revisão humana:
- cinco arquivos Markdown presentes;
- divergências relevantes registradas;
- hipóteses tratadas com cautela;
- nenhuma atualização prematura de memória;
- interrupção para revisão executada.
# REGRAS DE OURO
- validar antes de gerar;
- carregar antes de interpretar;
- não duplicar responsabilidades;
- não pular prompts especializados;
- não misturar competências;
- não usar histórico como dado atual;
- não gerar análise parcial sem as quatro fontes;
- não gerar resumo antes das quatro análises;
- não atualizar memória antes da aprovação;
- não gerar DOCX ou PDF no Codex;
- manter saídas na competência ativa;
- interromper nos pontos definidos;
- registrar bloqueios;
- preservar rastreabilidade;
- garantir consistência;
- não improvisar regras ausentes;
- usar o Prompt 01 apenas como controlador.
