#!/bin/bash

# Script de despliegue para GitHub y Render
# Uso: ./deploy.sh "mensaje del commit"

# Colores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}🚀 Iniciando despliegue...${NC}"

# Verificar si hay cambios
if [ -z "$(git status --porcelain)" ]; then 
    echo -e "${YELLOW}⚠️  No hay cambios para commitear${NC}"
    exit 0
fi

# Obtener mensaje de commit o usar uno por defecto
COMMIT_MSG=${1:-"Actualización del sitio"}

# Agregar todos los archivos
echo -e "${GREEN}📁 Agregando archivos...${NC}"
git add .

# Hacer commit
echo -e "${GREEN}💾 Creando commit: ${COMMIT_MSG}${NC}"
git commit -m "$COMMIT_MSG"

# Push a GitHub
echo -e "${GREEN}📤 Subiendo a GitHub...${NC}"
git push origin main

# Verificar si el push fue exitoso
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ ¡Despliegue exitoso!${NC}"
    echo -e "${GREEN}🌐 Render actualizará automáticamente tu sitio en unos minutos${NC}"
    echo -e "${GREEN}📎 Visita: https://tu-sitio.onrender.com${NC}"
else
    echo -e "${RED}❌ Error al subir a GitHub${NC}"
    exit 1
fi