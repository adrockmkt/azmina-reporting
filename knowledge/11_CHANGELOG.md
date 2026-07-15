# 11 CHANGELOG
## Objetivo
Este arquivo define a política oficial de changelog do AzMina Reporting.
Ele registra alterações relevantes no repositório, no framework e no fluxo.
Ele não registra desempenho de competências.
Ele não substitui timeline.
Ele não substitui history.
Ele não substitui commits do Git.
Ele complementa o Git com contexto humano.
O changelog deve ajudar a entender o que mudou, por que mudou e quais arquivos foram afetados.
## O que Registrar
Registrar criação ou alteração estrutural de prompts.
Registrar criação ou alteração estrutural de knowledge.
Registrar mudança em README, START_HERE ou COMANDO.
Registrar mudança na política de versionamento.
Registrar mudança no manifest template.
Registrar mudança de fluxo operacional.
Registrar inclusão de fonte obrigatória.
Registrar mudança de responsabilidade.
Registrar alteração de entregáveis.
Registrar nova camada de histórico.
Registrar criação de scripts ou automações relevantes.
Registrar alteração que afete competências futuras.
Registrar remoção de regra obsoleta quando relevante.
## O que Não Registrar
Não registrar métricas mensais.
Não registrar resultados de competência.
Não registrar campanha específica.
Não registrar página específica.
Não registrar hipótese transitória.
Não registrar variação de indicador.
Não registrar arquivo PDF recebido.
Não registrar DOCX ou PDF final.
Não registrar detalhes que pertencem ao manifest.
Não registrar todo ajuste de redação menor, salvo quando afetar regra permanente.
Não registrar commits sem impacto estrutural.
## Quando Registrar
Registrar durante o encerramento operacional quando houver alteração de memória ou framework.
Registrar ao criar documento permanente.
Registrar ao mudar política de versionamento.
Registrar ao mudar fluxo.
Registrar ao mudar responsabilidade.
Registrar ao consolidar aprendizado permanente.
Registrar ao remover conhecimento obsoleto.
Registrar ao alterar template ou estrutura de competência.
Registrar após validação e aprovação quando a mudança nascer de uma competência.
Não registrar antes de aprovação humana quando a mudança depender de análise mensal.
## Quem Registra
Codex pode registrar alterações operacionais e estruturais quando executar a etapa.
Rafael e Ad Rock validam decisões estratégicas e mudanças sensíveis.
AzMina pode validar contexto institucional, editorial e mudanças de escopo quando aplicável.
ChatGPT não deve alterar changelog durante a finalização editorial, salvo solicitação operacional explícita.
O responsável pelo commit deve garantir coerência entre changelog e arquivos alterados.
## Diferença entre Changelog e Timeline
Timeline registra marcos estruturais de alto nível.
Changelog registra alterações detalhadas do framework.
Timeline explica a evolução narrativa do sistema.
Changelog explica o que mudou nos arquivos e no fluxo.
Uma mudança pode aparecer nos dois quando for estrutural.
No changelog, registrar mais detalhe operacional.
Na timeline, registrar apenas o marco.
Nem todo changelog entra na timeline.
## Diferença entre Changelog e History
History registra desempenho aprovado e memória de competências.
Changelog registra mudanças no framework.
History responde o que aconteceu nos resultados.
Changelog responde o que mudou no sistema.
Uma recomendação mensal aprovada entra em history.
Uma mudança permanente de metodologia entra no changelog.
Um aprendizado candidato fica em history.
Um aprendizado promovido pode gerar entrada no changelog.
## Diferença entre Changelog e Git
Git registra commits.
Changelog registra contexto.
Git mostra diferença técnica.
Changelog explica intenção e impacto.
O changelog não precisa repetir hash de todos os commits.
O changelog deve ser legível para humanos.
O commit deve ter escopo específico.
O changelog deve agrupar mudanças relevantes quando fizer sentido.
## Estrutura Recomendada para Entradas Futuras
Usar o formato:
### Período ou versão
Resumo:
descrever a mudança em uma frase.
Arquivos alterados:
listar arquivos principais.
Motivação:
explicar por que a mudança foi feita.
Impacto:
explicar como afeta competências futuras.
Tipo:
indicar se é arquitetura, prompt, knowledge, histórico, template, política, script ou correção.
Revisão:
indicar se exige acompanhamento futuro.
Não usar tabela.
Não registrar métrica mensal.
## Critérios de Granularidade
Registrar entradas claras.
Evitar entradas grandes demais sem separação.
Evitar entradas pequenas demais sem relevância.
Agrupar mudanças da mesma etapa quando fizer sentido.
Separar mudanças de naturezas diferentes.
Uma etapa de construção de knowledge pode ser uma entrada.
Uma correção de nomenclatura pode ser entrada se afetar contexto institucional.
Um ajuste ortográfico comum não precisa entrar.
## Governança do Changelog
O changelog deve permanecer permanente.
O changelog deve ser atualizado com cautela.
O changelog deve preservar contexto de mudanças estruturais.
O changelog não deve virar diário operacional.
O changelog não deve virar histórico mensal.
O changelog não deve duplicar timeline integralmente.
O changelog deve ser consistente com commits.
O changelog deve evitar caminhos absolutos.
O changelog deve evitar informações pessoais desnecessárias.
O changelog deve preservar linguagem objetiva.
## Alterações Estruturais já Realizadas
### Estruturação inicial do framework em julho de 2026
Resumo:
Foi criada a arquitetura base do AzMina Reporting.
Arquivos alterados:
README.md, START_HERE.md, COMANDO.md, prompts e knowledge inicial.
Motivação:
Formalizar o processo mensal de análise, revisão, memória e entrega.
Impacto:
O projeto passou a operar com competências autocontidas, quatro fontes obrigatórias, análises individuais e resumo executivo.
Tipo:
arquitetura.
Revisão:
revisar quando o fluxo mensal mudar.
### Criação da especificação mestre
Resumo:
Foi criado `prompts/00_MASTER_SPECIFICATION.md` como fonte estrutural do projeto.
Arquivos alterados:
prompts/00_MASTER_SPECIFICATION.md.
Motivação:
Concentrar arquitetura, fontes, responsabilidades e critérios de qualidade.
Impacto:
Mudanças estruturais devem ser refletidas primeiro na especificação mestre e depois propagadas.
Tipo:
prompt e arquitetura.
Revisão:
revisar quando houver mudança estrutural relevante.
### Criação do Prompt 01 como controlador
Resumo:
Foi criado `prompts/01_PROMPT_RELATORIO_EXECUTIVO.md` como controlador de execução.
Arquivos alterados:
prompts/01_PROMPT_RELATORIO_EXECUTIVO.md.
Motivação:
Orquestrar contexto, validações, prompts especializados, análises e interrupções.
Impacto:
O Prompt 01 coordena o fluxo sem duplicar regras dos prompts especializados.
Tipo:
prompt.
Revisão:
revisar quando o fluxo operacional mudar.
### Consolidação dos prompts especializados
Resumo:
Foram criados prompts para estilo, análise, glossário, histórico, hipóteses, estilo consultivo e relatório executivo.
Arquivos alterados:
prompts/02_ESTILO_DE_ESCRITA.md a prompts/08_RELATORIO_EXECUTIVO.md.
Motivação:
Separar responsabilidades e reduzir ambiguidades.
Impacto:
Cada camada do framework passou a ter papel próprio.
Tipo:
prompt.
Revisão:
revisar quando houver nova responsabilidade especializada.
### Definição da política de versionamento
Resumo:
Foi definida a separação entre arquivos versionados e não versionados.
Arquivos alterados:
.gitignore, README.md, START_HERE.md, COMANDO.md, prompts/00_MASTER_SPECIFICATION.md.
Motivação:
Proteger PDFs, DOCX, PDF final e arquivos locais.
Impacto:
Fontes brutas permanecem locais e o repositório guarda arquitetura, memória e Markdown.
Tipo:
política.
Revisão:
revisar se houver nova política de armazenamento.
### Criação do manifest template
Resumo:
Foi criado `templates/manifest.template.json`.
Arquivos alterados:
templates/manifest.template.json.
Motivação:
Padronizar validação inicial de competência.
Impacto:
Cada competência possui estrutura mínima para status, fontes, análises, output, revisão e encerramento.
Tipo:
template.
Revisão:
revisar se o manifest ganhar novos campos obrigatórios.
### Criação da base knowledge principal
Resumo:
Foram criados arquivos permanentes para projeto, SEMrush, públicos, relatórios, indicadores, objetivos e timeline.
Arquivos alterados:
knowledge/01_PROJETO.md a knowledge/07_TIMELINE.md.
Motivação:
Preservar contexto institucional, regras, indicadores, públicos, objetivos e marcos estruturais.
Impacto:
O framework ganhou memória permanente separada de history.
Tipo:
knowledge.
Revisão:
revisar quando houver obsolescência ou mudança permanente.
### Correção do nome da consultoria
Resumo:
O nome da consultoria foi padronizado como Ad Rock Digital Mkt.
Arquivos alterados:
knowledge/01_PROJETO.md.
Motivação:
Corrigir nomenclatura institucional permanente.
Impacto:
O contexto do projeto passou a refletir o nome correto da consultoria.
Tipo:
correção de knowledge.
Revisão:
revisar se houver nova alteração institucional.
### Conclusão da base knowledge
Resumo:
Foram criados arquivos de decisões arquiteturais, boas práticas, lições aprendidas e changelog.
Arquivos alterados:
knowledge/08_DECISOES_ARQUITETURAIS.md, knowledge/09_BOAS_PRATICAS.md, knowledge/10_LICOES_APRENDIDAS.md, knowledge/11_CHANGELOG.md.
Motivação:
Completar a memória permanente do framework.
Impacto:
O projeto passou a ter governança documentada para decisões, práticas, aprendizados e alterações.
Tipo:
knowledge e governança.
Revisão:
revisar após a primeira competência real concluída.
## Atualização deste Arquivo
Atualizar quando houver mudança estrutural.
Atualizar quando houver alteração permanente em knowledge.
Atualizar quando houver alteração em prompts.
Atualizar quando houver mudança de política.
Atualizar quando houver mudança em templates.
Atualizar quando houver automação relevante.
Atualizar quando um aprendizado for promovido.
Não atualizar por desempenho mensal.
Não atualizar por arquivo recebido.
Não atualizar por hipótese transitória.
## Regras de Ouro
- changelog registra mudança do framework;
- history registra resultado aprovado;
- timeline registra marco estrutural;
- Git registra diff técnico;
- changelog explica contexto humano;
- não registrar métricas mensais;
- não registrar PDFs;
- não transformar changelog em diário;
- registrar impacto;
- registrar motivação;
- preservar escopo;
- manter linguagem simples;
- atualizar quando a mudança afetar competências futuras.
