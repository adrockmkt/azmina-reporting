# 09 BOAS PRÁTICAS
## Objetivo
Este arquivo registra boas práticas permanentes para operação, análise, redação, validação, versionamento e evolução do AzMina Reporting.
Ele não registra resultados mensais.
Ele não substitui prompts especializados.
Ele não substitui decisões arquiteturais.
Ele traduz a arquitetura em condutas práticas.
As boas práticas devem ser aplicadas em todas as competências, salvo decisão estrutural aprovada.
## Princípios Gerais
Validar antes de analisar.
Ler antes de interpretar.
Separar evidência, hipótese e recomendação.
Usar dados atuais como base principal.
Usar histórico como contexto.
Usar knowledge como memória permanente.
Preservar responsabilidade editorial.
Não transformar métrica isolada em conclusão.
Não transformar variação pontual em tendência.
Não transformar hipótese em fato.
Não recomendar ação sem evidência e objetivo.
## Leitura dos PDFs
Confirmar que os arquivos estão em `reports/${COMPETENCIA}/source/`.
Confirmar que pertencem à competência ativa.
Preservar nomes originais.
Não renomear PDFs manualmente.
Não alterar PDFs.
Não usar PDFs de outra competência como dado atual.
Identificar fonte por conteúdo, não apenas por nome.
Verificar período, comparação e recorte.
Verificar se há relatório consolidado com blocos internos.
Registrar limitações no manifest quando necessário.
Interromper quando fonte obrigatória estiver ausente ou ilegível.
Evitar extrair conclusões antes de validar a fonte.
Evitar preencher lacunas com histórico.
## Interpretação das Métricas
Interpretar cada métrica conforme sua fonte.
Diferenciar usuários, sessões, visualizações, eventos e conversões.
Diferenciar impressões, cliques, sessões e tráfego.
Diferenciar CTR de volume.
Diferenciar CPA de eficiência geral.
Diferenciar posição média de tráfego.
Diferenciar estimativa de dado coletado.
Diferenciar evento registrado de conversão estratégica.
Usar unidade e moeda da fonte.
Não substituir dado ausente por zero.
Não destacar percentual sem volume absoluto.
Não comparar métricas incompatíveis.
Não somar recortes sem validação.
## Comparação Mensal
Comparar com o mês imediatamente anterior.
Verificar se os períodos têm recorte equivalente.
Verificar se o relatório mostra mês contra mês ou outro comparativo.
Usar valor atual e anterior quando disponíveis.
Calcular variação absoluta quando necessário.
Calcular variação percentual apenas com base válida.
Evitar comparação quando houve mudança de metodologia sem ressalva.
Registrar limitações quando o período for incompleto.
Não usar acumulado como mês isolado.
Não misturar competência ativa com histórico como dado atual.
## Comparação Anual
Usar gráficos anuais como contexto.
Não usar gráfico anual como substituto da comparação mensal.
Usar anual para levantar hipótese de sazonalidade ou mudança ampla.
Voltar ao bloco mensal antes de concluir.
Evitar afirmar tendência anual sem consistência e contexto.
Não confundir ano contra ano com mês contra mês.
## Uso do Histórico
Consultar history para identificar recorrência.
Consultar history para verificar ruptura.
Consultar history para avaliar recomendações anteriores.
Consultar history para contextualizar sazonalidade.
Consultar history para calibrar confiança.
Não usar history para preencher fonte ausente.
Não copiar conclusão antiga sem revalidar.
Não tratar hipótese antiga como fato.
Não usar resultado histórico como dado da competência atual.
Não promover aprendizado para knowledge sem critério.
## Uso do Knowledge
Consultar knowledge antes de recomendações sensíveis.
Consultar knowledge para entender contexto institucional.
Consultar knowledge para aplicar regras permanentes.
Consultar knowledge para reconhecer limitações conhecidas.
Consultar knowledge para evitar erros recorrentes.
Verificar se o conhecimento ainda está vigente.
Não usar knowledge para negar evidência atual.
Não atualizar knowledge com resultado mensal.
Não duplicar conteúdo já governado por prompts.
## Correlação entre Fontes
Correlacionar GA4 com GSC quando a leitura envolver busca orgânica.
Correlacionar GSC com SEMrush quando a leitura envolver SEO.
Correlacionar Google Ads com GA4 quando a leitura envolver pós clique.
Correlacionar Google Ads com demanda e histórico.
Correlacionar páginas orgânicas com comportamento de consumo.
Declarar divergências relevantes.
Não escolher uma fonte arbitrariamente para confirmar narrativa.
Usar a fonte mais adequada para cada pergunta.
Reconhecer que ferramentas diferentes medem coisas diferentes.
## Recomendações
Toda recomendação deve nascer de diagnóstico.
Toda recomendação deve ter objetivo claro.
Toda recomendação deve indicar escopo.
Toda recomendação deve poder ser acompanhada no ciclo seguinte.
Toda recomendação deve ser proporcional à confiança.
Alta prioridade exige impacto, urgência ou risco relevante.
Média prioridade pode envolver teste, planejamento ou validação.
Baixa prioridade pode envolver acompanhamento ou refinamento.
Quando a evidência for baixa, recomendar investigar ou acompanhar.
Evitar recomendações genéricas.
Evitar reestruturações amplas com um único sinal fraco.
Evitar pautas criadas apenas por volume de busca.
## Redação dos Relatórios
Usar português brasileiro.
Usar Markdown simples.
Usar tom consultivo.
Usar frases diretas.
Evitar linguagem de resumo automático.
Evitar excesso de jargão.
Evitar tabelas.
Evitar emojis.
Evitar travessões tipográficos.
Evitar nomes de PDFs no texto final.
Explicar impacto, não apenas variação.
Selecionar números essenciais.
Manter consistência terminológica.
Preservar hipóteses como hipóteses.
## Validação dos Números
Conferir valores atuais e anteriores.
Conferir sentido da variação.
Conferir cálculos quando forem usados.
Conferir unidade, moeda e percentual.
Conferir posição média com cuidado.
Conferir se base anterior permite percentual.
Conferir se houve arredondamento.
Conferir se os números do resumo estão coerentes com as análises.
Não inventar dado ausente.
Não corrigir dado da fonte sem evidência.
## Tratamento de Divergências
Registrar divergência quando afeta conclusão.
Verificar período.
Verificar filtro.
Verificar país.
Verificar dispositivo.
Verificar definição da métrica.
Verificar diferença entre clique e sessão.
Verificar estimativa versus dado coletado.
Reduzir confiança quando a divergência não tiver explicação.
Transformar divergência relevante em ponto de atenção ou recomendação de validação.
Não ocultar divergência para simplificar a narrativa.
## Revisão Humana
Interromper após gerar análises e resumo.
Aguardar aprovação explícita.
Não atualizar history antes da aprovação.
Não atualizar knowledge antes da aprovação.
Não marcar manifest como encerrado antes da aprovação.
Preservar números e conclusões validadas na finalização editorial.
Registrar correções quando alterarem entendimento.
Usar revisão humana para validar contexto editorial e sensibilidade.
## Organização do Repositório
Manter competência em `reports/AAAA-MM/`.
Manter PDFs em source.
Manter análises em analysis.
Manter resumo em output.
Manter prompts em prompts.
Manter conhecimento permanente em knowledge.
Manter histórico aprovado em history.
Manter templates reutilizáveis em templates.
Não criar arquivos fora da estrutura definida.
Não misturar meses.
Não versionar arquivos brutos protegidos.
## Versionamento
Executar `git diff --check` antes de commit.
Revisar `git status`.
Stagear apenas os arquivos da etapa.
Criar commit específico.
Fazer push para origin/main.
Não usar force push.
Não usar comandos destrutivos.
Não misturar escopos no mesmo commit.
Manter working tree limpo ao final.
Registrar mudanças estruturais no changelog quando aplicável.
## Evolução do Framework
Evoluir somente com decisão clara.
Evitar adicionar abstração sem necessidade.
Preferir padrões já existentes.
Documentar nova fonte antes de torná-la obrigatória.
Documentar novo formato antes de aceitá-lo como recorrente.
Revisar prompts quando regra operacional mudar.
Revisar knowledge quando memória permanente mudar.
Revisar history quando estrutura de histórico mudar.
Remover conhecimento obsoleto.
Preservar compatibilidade com competências futuras.
## Práticas que Devem Ser Evitadas
Evitar analisar antes do manifest.
Evitar ler PDFs fora da competência.
Evitar usar histórico como dado atual.
Evitar repetir dashboard.
Evitar destacar métrica sem impacto.
Evitar interpretar posição média ao contrário.
Evitar tratar impressões como tráfego.
Evitar tratar clique como sessão.
Evitar tratar evento como conversão final.
Evitar tratar estimativa como dado real.
Evitar usar gráfico anual como mensal.
Evitar ignorar base pequena.
Evitar ocultar divergência.
Evitar criar recomendação sem validação possível.
Evitar atualizar knowledge com caso isolado.
Evitar versionar PDFs, DOCX ou PDF final.
## Boas Práticas por Fonte
### GA4
Ler audiência com aquisição, comportamento e eventos.
Validar anomalias antes de concluir.
Correlacionar Organic Search com GSC.
Correlacionar Google CPC com Ads.
### Google Ads
Ler demanda, exposição, custo e conversão em conjunto.
Separar campanhas, grupos e termos responsáveis.
Considerar Google Ad Grants quando aplicável.
Evitar reestruturação ampla sem recorrência.
### GSC
Ler cliques, impressões, CTR e posição juntos.
Usar páginas e consultas para explicar o geral.
Priorizar alto volume com baixa eficiência.
### SEMrush
Usar comparativo mensal como base.
Usar gráficos anuais como contexto.
Separar desktop e mobile.
Validar estimativas e recomendações automáticas.
## Regras de Ouro
- validar antes de analisar;
- contexto não substitui evidência;
- histórico orienta, mas não decide sozinho;
- knowledge orienta, mas não anula dado atual;
- recomendação deve ser executável;
- hipótese não é fato;
- divergência deve ser declarada;
- base pequena exige cautela;
- posição média menor é melhor;
- gráfico anual não substitui mensal;
- source permanece local;
- DOCX e PDF final permanecem locais;
- revisão humana é obrigatória;
- commit deve ter escopo claro;
- evolução deve preservar rastreabilidade.
