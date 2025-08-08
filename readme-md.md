# 🎬 Audiovisual Portfolio Landing Page

Landing page profesional y árbol de links para estudio audiovisual con diseño moderno y animaciones fluidas.

![Preview](https://via.placeholder.com/1200x600/0a0a0a/ff4444?text=Audiovisual+Portfolio)

## ✨ Características

- 🎨 **Diseño Moderno Dark Mode** - Interfaz elegante con gradientes vibrantes
- 📱 **100% Responsive** - Optimizado para todos los dispositivos
- 🔗 **Árbol de Links** - Enlaces rápidos a cotizador, agenda, redes sociales
- 🖼️ **Portfolio Dinámico** - Grid de proyectos con efectos hover
- ⚡ **Animaciones Suaves** - Parallax, fade-in, typing effects
- 🚀 **Carga Rápida** - HTML estático sin dependencias

## 🛠️ Tecnologías

- HTML5
- CSS3 (Variables CSS, Flexbox, Grid)
- JavaScript Vanilla
- Sin frameworks ni dependencias

## 📁 Estructura del Proyecto

```
audiovisual-portfolio/
├── index.html          # Archivo principal
├── README.md          # Documentación
├── package.json       # Configuración del proyecto
├── .gitignore        # Archivos ignorados por Git
└── render.yaml       # Configuración para Render
```

## 🚀 Instalación Local

### Opción 1: Servidor Python (Recomendado)
```bash
# Clonar el repositorio
git clone https://github.com/tu-usuario/audiovisual-portfolio.git
cd audiovisual-portfolio

# Python 3
python -m http.server 8000

# Python 2
python -m SimpleHTTPServer 8000
```
Abre http://localhost:8000 en tu navegador

### Opción 2: VS Code Live Server
1. Instala la extensión "Live Server" en VS Code
2. Click derecho en `index.html`
3. Selecciona "Open with Live Server"

### Opción 3: Abrir directamente
Simplemente abre el archivo `index.html` en tu navegador

## 🌐 Despliegue en Render

### Paso 1: Preparar GitHub
1. Crea una cuenta en [GitHub](https://github.com) si no tienes una
2. Crea un nuevo repositorio
3. Sube los archivos:

```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/tu-usuario/tu-repo.git
git push -u origin main
```

### Paso 2: Configurar Render
1. Ve a [Render.com](https://render.com) y crea una cuenta
2. Click en "New +" → "Static Site"
3. Conecta tu cuenta de GitHub
4. Selecciona tu repositorio
5. Configura:
   - **Name**: audiovisual-portfolio (o el nombre que prefieras)
   - **Branch**: main
   - **Build Command**: (déjalo vacío)
   - **Publish Directory**: `.`
6. Click en "Create Static Site"

¡Tu sitio estará disponible en: `https://audiovisual-portfolio.onrender.com`!

## 🎨 Personalización

### Cambiar Enlaces
Edita el objeto `links` en `index.html`:

```javascript
const links = {
    cotizador: 'https://forms.google.com/tu-formulario',
    agenda: 'https://calendly.com/tu-calendario',
    whatsapp: 'https://wa.me/521234567890',
    instagram: 'https://instagram.com/tu-cuenta',
    // ... más enlaces
};
```

### Cambiar Colores
Modifica las variables CSS en `index.html`:

```css
:root {
    --primary: #ff4444;    /* Color principal */
    --accent: #ffcc00;     /* Color de acento */
    --dark: #0a0a0a;       /* Fondo oscuro */
    --text: #ffffff;       /* Color de texto */
}
```

### Actualizar Contenido
- **Logo/Título**: Busca `STUDIO` y `CREATIVE STUDIO`
- **Servicios**: Sección `.services-grid`
- **Portfolio**: Actualiza las imágenes en `.portfolio-grid`
- **Contacto**: Modifica emails y teléfonos en `.contact`

### Agregar Imágenes Propias
1. Crea una carpeta `images/` en tu proyecto
2. Agrega tus imágenes
3. Reemplaza las URLs de Unsplash con rutas locales:

```html
<!-- Antes -->
<img src="https://images.unsplash.com/..." alt="Proyecto">

<!-- Después -->
<img src="images/proyecto1.jpg" alt="Proyecto">
```

## 📊 SEO y Metadatos

Para mejorar el SEO, agrega estos meta tags en el `<head>`:

```html
<meta name="description" content="Estudio audiovisual profesional. Producción de video, fotografía y contenido digital.">
<meta name="keywords" content="audiovisual, video, fotografía, producción, estudio creativo">
<meta property="og:title" content="Studio Audiovisual">
<meta property="og:description" content="Producción audiovisual y contenido digital">
<meta property="og:image" content="https://tu-sitio.com/preview.jpg">
```

## 🐛 Solución de Problemas

### El sitio se ve negro/vacío
- Recarga con `Ctrl + F5` (limpia caché)
- Usa un servidor local en lugar de abrir directamente el archivo

### Las imágenes no cargan
- Verifica que las URLs sean correctas
- Si usas imágenes locales, revisa las rutas relativas

### El menú móvil no funciona
- Asegúrate de que JavaScript esté habilitado
- Revisa la consola del navegador para errores

## 📝 Licencia

Este proyecto está bajo licencia MIT. Puedes usarlo libremente para proyectos personales y comerciales.

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Por favor:
1. Fork el proyecto
2. Crea una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## 📧 Contacto

Tu Nombre - [@tu_twitter](https://twitter.com/tu_twitter) - email@ejemplo.com

Link del Proyecto: [https://github.com/tu-usuario/audiovisual-portfolio](https://github.com/tu-usuario/audiovisual-portfolio)

## 🙏 Agradecimientos

- [Unsplash](https://unsplash.com) por las imágenes de ejemplo
- [Coverr](https://coverr.co) por los videos de stock
- Inspiración del diseño: Inspiro WordPress Theme

---

Hecho con ❤️ por [Tu Nombre]