# 📋 Guía de Configuración Paso a Paso

## 🎯 Resumen Rápido
Esta guía te llevará desde cero hasta tener tu sitio funcionando en Internet en menos de 15 minutos.

## 📦 Archivos Necesarios

Asegúrate de tener estos 5 archivos en tu carpeta:
- ✅ `index.html` - Tu landing page
- ✅ `README.md` - Documentación
- ✅ `package.json` - Configuración del proyecto
- ✅ `.gitignore` - Archivos ignorados
- ✅ `render.yaml` - Configuración de Render

## 🔧 Paso 1: Preparación Local

### 1.1 Crear carpeta del proyecto
```bash
mkdir audiovisual-portfolio
cd audiovisual-portfolio
```

### 1.2 Copiar los archivos
Coloca todos los archivos mencionados arriba en esta carpeta

### 1.3 Probar localmente (opcional)
```bash
# Con Python
python -m http.server 8000
# Abre http://localhost:8000
```

## 🐙 Paso 2: Configurar GitHub

### 2.1 Crear cuenta en GitHub
1. Ve a [github.com](https://github.com)
2. Click en "Sign up"
3. Sigue los pasos de registro

### 2.2 Instalar Git (si no lo tienes)
- **Windows**: Descarga desde [git-scm.com](https://git-scm.com)
- **Mac**: `brew install git` o descarga desde el sitio
- **Linux**: `sudo apt-get install git`

### 2.3 Configurar Git
```bash
git config --global user.name "Tu Nombre"
git config --global user.email "tu-email@ejemplo.com"
```

### 2.4 Crear repositorio en GitHub
1. Click en el "+" arriba a la derecha
2. Selecciona "New repository"
3. Configura:
   - **Repository name**: `audiovisual-portfolio`
   - **Description**: "Landing page para estudio audiovisual"
   - **Public** (seleccionado)
   - NO selecciones "Initialize this repository with README"
4. Click en "Create repository"

### 2.5 Subir tu código
En tu terminal, dentro de la carpeta del proyecto:

```bash
# Inicializar Git
git init

# Agregar todos los archivos
git add .

# Crear primer commit
git commit -m "Primer commit - Landing page completo"

# Conectar con GitHub (reemplaza TU-USUARIO con tu nombre de usuario)
git remote add origin https://github.com/TU-USUARIO/audiovisual-portfolio.git

# Subir archivos
git branch -M main
git push -u origin main
```

**¿Problemas con autenticación?**
GitHub ya no acepta contraseñas. Necesitas un token:
1. Ve a GitHub → Settings → Developer settings → Personal access tokens
2. Generate new token (classic)
3. Selecciona "repo" en los permisos
4. Copia el token y úsalo como contraseña

## 🚀 Paso 3: Desplegar en Render

### 3.1 Crear cuenta en Render
1. Ve a [render.com](https://render.com)
2. Click en "Get Started for Free"
3. Puedes registrarte con GitHub (recomendado)

### 3.2 Crear nuevo sitio estático
1. En el Dashboard, click en "New +"
2. Selecciona "Static Site"

### 3.3 Conectar con GitHub
1. Click en "Connect GitHub"
2. Autoriza a Render
3. Selecciona "Only select repositories"
4. Busca y selecciona `audiovisual-portfolio`
5. Click en "Install"

### 3.4 Configurar el sitio
1. **Name**: `audiovisual-portfolio` (o el nombre que prefieras)
2. **Branch**: `main`
3. **Build Command**: (déjalo vacío)
4. **Publish directory**: `.` (un punto)
5. Click en "Create Static Site"

### 3.5 ¡Listo! 
- Tu sitio se construirá automáticamente
- En 2-3 minutos estará disponible en: `https://audiovisual-portfolio.onrender.com`
- Cada vez que hagas cambios en GitHub, se actualizará automáticamente

## 🔄 Actualizar tu Sitio

### Opción 1: Desde la terminal
```bash
# Hacer cambios en index.html
# Luego:
git add .
git commit -m "Descripción de los cambios"
git push
```

### Opción 2: Editando en GitHub
1. Ve a tu repositorio en GitHub
2. Click en `index.html`
3. Click en el lápiz para editar
4. Haz tus cambios
5. Click en "Commit changes"

**Render actualizará automáticamente tu sitio en 2-3 minutos**

## 🎨 Personalización Importante

### Cambiar los enlaces (IMPORTANTE)
Edita estas líneas en `index.html`:

```javascript
const links = {
    cotizador: 'URL_DE_TU_FORMULARIO',
    agenda: 'URL_DE_TU_CALENDLY',
    whatsapp: 'https://wa.me/52TUNUMERO',
    instagram: 'https://instagram.com/TUCUENTA',
    youtube: 'https://youtube.com/@TUCANAL',
    behance: 'https://behance.net/TUPERFIL',
    linkedin: 'https://linkedin.com/company/TUEMPRESA',
    vimeo: 'https://vimeo.com/TUPERFIL'
};
```

### Cambiar información de contacto
Busca y reemplaza:
- `contacto@studio.com` → Tu email
- `+52 123 456 7890` → Tu teléfono
- `Ciudad de México, México` → Tu ubicación

### Cambiar el nombre
Busca y reemplaza:
- `STUDIO` → Tu marca
- `CREATIVE STUDIO` → Tu nombre completo

## 🆓 Dominio Personalizado (Opcional)

### Dominio gratuito de Render
Tu sitio ya tiene: `https://audiovisual-portfolio.onrender.com`

### Usar tu propio dominio
1. En Render, ve a Settings → Custom Domains
2. Click en "Add Custom Domain"
3. Sigue las instrucciones para configurar DNS

## ❓ Problemas Comunes

### "Permission denied (publickey)"
- Necesitas configurar SSH keys o usar token de acceso personal

### "El sitio no se actualiza"
- Espera 2-3 minutos después del push
- Revisa el Dashboard de Render para ver el estado

### "Las imágenes no cargan"
- Verifica que las URLs sean HTTPS (no HTTP)
- Si usas imágenes locales, súbelas a GitHub

### "Error 404 en Render"
- Verifica que `index.html` esté en la raíz del repositorio
- Revisa que Publish directory sea `.`

## 🎉 ¡Felicidades!

Ya tienes tu sitio profesional funcionando en Internet. 

### Próximos pasos recomendados:
1. ✏️ Personaliza todos los textos y enlaces
2. 🖼️ Agrega tus propias imágenes
3. 🎨 Ajusta los colores a tu marca
4. 📱 Prueba en diferentes dispositivos
5. 📊 Agrega Google Analytics
6. 🔍 Optimiza para SEO

## 📞 Soporte

Si tienes problemas:
1. Revisa esta guía paso a paso
2. Consulta la documentación de [Render](https://render.com/docs)
3. Busca en [Stack Overflow](https://stackoverflow.com)

---

**Tip Pro**: Guarda esta guía, te servirá para futuros proyectos 🚀