# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_MEMORY_SHOW="${SPACESHIP_MEMORY_SHOW=true}"
SPACESHIP_MEMORY_COLOR="green"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

spaceship_memory() {
  [[ SPACESHIP_MEMORY_SHOW == false ]] && return

  local memoryCheck="$(awk '/MemTotal/{t=$2}/MemAvailable/{a=$2}END{print 100-100*a/t"%"}' /proc/meminfo)"
  # local memoryCheck="TESTE"


  spaceship::section \
    "$SPACESHIP_MEMORY_COLOR" \
    " " \
    "$memoryCheck" \
    " "
}
