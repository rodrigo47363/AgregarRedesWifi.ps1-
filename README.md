# **AgregarRedesWiFi.ps1**

## **Agregar Redes WiFi - Script PowerShell**

Este script simplifica la configuración de redes WiFi en sistemas Windows, automatizando la creación y adición de perfiles WiFi de manera eficiente.

---

### **Características**
- **Automatización Eficiente**: Agrega perfiles de red WiFi automáticamente sin comandos manuales.
- **Personalización Sencilla**: Configura nombres de red y contraseñas directamente en el script.
- **Compatibilidad Universal**: Funciona en cualquier versión de Windows con soporte para PowerShell y `netsh`.
- **Limpieza Automática**: Los archivos XML generados se eliminan automáticamente después de su uso.

---

### **Instrucciones de Uso**

1. **Descarga el Script**:
   - Clona este repositorio o descarga el archivo `AgregarRedesWiFi.ps1`.

2. **Edita el Archivo**:
   - Abre el archivo con un editor de texto (Bloc de Notas, VS Code, etc.).
   - Personaliza la lista de redes WiFi en la sección correspondiente, como en el siguiente ejemplo:
     ```powershell
     $nuevasRedes = @(
         @{ Nombre = "NombreRed1"; Contraseña = "Contraseña1" },
         @{ Nombre = "NombreRed2"; Contraseña = "Contraseña2" }
     )
     ```
     Reemplaza `NombreRedX` y `ContraseñaX` con los datos de las redes WiFi que deseas agregar.

3. **Ejecuta el Script**:
   - Después de editar y guardar el archivo:
     1. **Selecciona todo el contenido del script** (`Ctrl + A`) y **cópialo** (`Ctrl + C`).
     2. Abre PowerShell como **administrador**.
     3. **Pega el contenido del script** directamente en la consola de PowerShell (`Ctrl + V`) y presiona **Enter** para ejecutarlo.

---

### **Requisitos**
- **Sistema Operativo**: Windows.
- **Permisos de Administrador**: Obligatorios para ejecutar el comando `netsh`.
- **Ejecución de Scripts Habilitada**:
  - Si los scripts están deshabilitados, habilítalos temporalmente con el siguiente comando:
    ```powershell
    Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
    ```

---

### **Notas**
- **Resolución de Problemas**: Si el script no funciona después de editarlo, copia todo su contenido y ejecútalo directamente en PowerShell como administrador.
- **Seguridad**: Las contraseñas se almacenan en texto plano dentro del script. Asegúrate de protegerlo adecuadamente.
- **Limpieza Automática**: El script elimina los archivos XML generados después de agregar los perfiles WiFi.

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
Este proyecto se distribuye bajo la Licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.
