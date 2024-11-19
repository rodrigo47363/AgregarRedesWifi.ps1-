### README: **AgregarRedesWiFi.ps1**

## **Agregar Redes WiFi - Script PowerShell**

Este script simplifica la configuración de redes WiFi en sistemas Windows al automatizar la creación y adición de perfiles WiFi.

---

### **Características**
- **Automatización Eficiente**: Agrega perfiles de red WiFi automáticamente sin necesidad de comandos manuales.
- **Personalización Fácil**: Define nombres de red y contraseñas directamente en el script.
- **Compatibilidad**: Funciona en cualquier versión de Windows con soporte para PowerShell y el comando `netsh`.
- **Limpieza Automática**: Los archivos XML generados se eliminan automáticamente después de su uso.

---

### **Instrucciones de Uso**

1. **Descarga el Script**:
   - Clona este repositorio o descarga el archivo `AgregarRedesWiFi.ps1`.

2. **Abre PowerShell**:
   - Asegúrate de abrir PowerShell **como administrador** para evitar problemas de permisos.

3. **Navega hasta la Ubicación del Script**:
   - Usa el comando `cd` para ir al directorio donde está guardado el script:
     ```powershell
     cd C:\ruta\al\script
     ```

4. **Ejecuta el Script**:
   - Ejecuta el script con el comando:
     ```powershell
     .\AgregarRedesWiFi.ps1
     ```

---

### **Personalización**
Dentro del script encontrarás una sección como esta:
```powershell
$nuevasRedes = @(
    @{ Nombre = "NombreRed1"; Contraseña = "Contraseña1" },
    @{ Nombre = "NombreRed2"; Contraseña = "Contraseña2" }
)
```
- Cambia `NombreRedX` y `ContraseñaX` por los datos de las redes WiFi que desees agregar.
- Guarda los cambios antes de ejecutar el script.

---

### **Requisitos**
- **Sistema Operativo**: Windows.
- **Permisos de Administrador**: Necesarios para ejecutar el comando `netsh`.
- **Ejecución de Scripts Habilitada**:
  - Si los scripts están deshabilitados, habilítalos temporalmente con:
    ```powershell
    Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
    ```

---

### **Notas**
- **Seguridad**: Las contraseñas se almacenan en texto plano en el script. Asegúrate de protegerlo adecuadamente.
- **Limpieza de Archivos XML**: El script elimina automáticamente los archivos XML después de agregar los perfiles WiFi.

---

### **Palabras Clave**
WiFi, PowerShell, Automatización, Redes Inalámbricas, Windows, Configuración de Redes, Administración de Redes, Script WiFi.

---

### **Contribuciones**
Las contribuciones son bienvenidas. Si tienes sugerencias, encuentras errores o mejoras, por favor:
1. Abre un "issue" en este repositorio.
2. Envía un "pull request" con tus cambios.

---

### **Licencia**
Este proyecto se distribuye bajo la Licencia MIT. Para más información, consulta el archivo [LICENSE](LICENSE).
