#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

RUN_CODEX=1
COMPETENCIA=""

find_codex_cli() {
  if command -v codex >/dev/null 2>&1; then
    command -v codex
    return 0
  fi

  local app_codex="/Applications/ChatGPT.app/Contents/Resources/codex"
  if [[ -x "$app_codex" ]]; then
    echo "$app_codex"
    return 0
  fi

  return 1
}

for arg in "$@"; do
  case "$arg" in
    --prepare)
      RUN_CODEX=0
      ;;
    *)
      COMPETENCIA="$arg"
      ;;
  esac
done

if [[ -z "$COMPETENCIA" ]]; then
  echo
  echo "Preparacao de competencia do AzMina Reporting"
  echo
  echo "Pastas de competencia detectadas:"

  found_competencias=0
  for dir in reports/[0-9][0-9][0-9][0-9]-[0-9][0-9]; do
    if [[ -d "$dir" ]]; then
      found_competencias=1
      echo "- ${dir#reports/}"
    fi
  done

  if [[ "$found_competencias" -eq 0 ]]; then
    echo "- nenhuma competencia encontrada ainda"
  fi

  echo
  echo "Se voce ja criou a pasta e colocou os PDFs em reports/AAAA-MM/source/, informe essa competencia."
  echo "Se ainda nao criou, informe a competencia desejada e o comando criara a estrutura."
  echo
  printf "Qual competencia mensal devo processar? Use o formato AAAA-MM: "
  read -r COMPETENCIA
fi

if [[ ! "$COMPETENCIA" =~ ^[0-9]{4}-[0-9]{2}$ ]]; then
  echo "Competencia invalida. Use o formato AAAA-MM, por exemplo 2026-07."
  exit 1
fi

MONTH="${COMPETENCIA:5:2}"
if (( 10#$MONTH < 1 || 10#$MONTH > 12 )); then
  echo "Mes invalido na competencia. Use um mes entre 01 e 12."
  exit 1
fi

if [[ ! -f ".gitignore" ]]; then
  echo "Bloqueio: .gitignore nao encontrado."
  exit 1
fi

if ! git check-ignore -q "reports/${COMPETENCIA}/source/teste.pdf"; then
  echo "Bloqueio: reports/*/source/* nao esta protegido pelo .gitignore."
  exit 1
fi

REPORT_DIR="reports/${COMPETENCIA}"
SOURCE_DIR="${REPORT_DIR}/source"
ANALYSIS_DIR="${REPORT_DIR}/analysis"
OUTPUT_DIR="${REPORT_DIR}/output"
MANIFEST="${REPORT_DIR}/manifest.json"

mkdir -p "$SOURCE_DIR" "$ANALYSIS_DIR" "$OUTPUT_DIR"

if [[ ! -f "${SOURCE_DIR}/.gitkeep" ]]; then
  touch "${SOURCE_DIR}/.gitkeep"
fi

if [[ ! -f "$MANIFEST" ]]; then
  cp "templates/manifest.template.json" "$MANIFEST"
fi

SOURCE_COUNT="$(find "$SOURCE_DIR" -type f ! -name ".gitkeep" ! -name ".DS_Store" | wc -l | tr -d ' ')"

echo
echo "Competencia preparada: ${COMPETENCIA}"
echo
echo "Pastas validadas:"
echo "- ${SOURCE_DIR}"
echo "- ${ANALYSIS_DIR}"
echo "- ${OUTPUT_DIR}"
echo
echo "Manifest:"
echo "- ${MANIFEST}"
echo
echo "Arquivos em source/: ${SOURCE_COUNT}"
echo
if [[ "$SOURCE_COUNT" -eq 0 ]]; then
  echo "Ainda nao encontrei arquivos em ${SOURCE_DIR}/."
  echo
  echo "Coloque os PDFs exportados pelas ferramentas nessa pasta, mantendo os nomes originais."
  echo "Quando terminar, rode novamente:"
  echo
  echo "./start.command"
  echo
  exit 0
fi

echo "Arquivos encontrados em source/:"
find "$SOURCE_DIR" -maxdepth 1 -type f ! -name ".gitkeep" ! -name ".DS_Store" -print | sort | sed 's#^#- #'
echo
PROMPT="Analise a competencia mensal do projeto AzMina Reporting.

COMPETENCIA=${COMPETENCIA}

Os arquivos ja estao em reports/${COMPETENCIA}/source/.
Siga README.md, START_HERE.md, COMANDO.md e prompts/01_PROMPT_RELATORIO_EXECUTIVO.md.
Como source/ ja contem arquivos, nao solicite CONTINUAR. Siga diretamente para validacao dos arquivos e analise.
Nao faca commit nem push sem aprovacao explicita."

if [[ "$RUN_CODEX" -eq 0 ]]; then
  echo "Proximo passo no Codex:"
  echo
  echo "$PROMPT"
  exit 0
fi

CODEX_BIN="$(find_codex_cli || true)"

if [[ -z "$CODEX_BIN" ]]; then
  echo "Codex CLI nao encontrado no terminal."
  echo
  echo "Se o ChatGPT Desktop estiver instalado, abra o app uma vez ou adicione o Codex CLI ao PATH."
  echo
  echo "Use este texto no Codex:"
  echo
  echo "$PROMPT"
  exit 0
fi

echo "Iniciando Codex para analisar a competencia ${COMPETENCIA}..."
echo
exec "$CODEX_BIN" --cd "$ROOT_DIR" --sandbox workspace-write "$PROMPT"
