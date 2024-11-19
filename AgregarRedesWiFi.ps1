# AgregarRedesWiFi.ps1
# Definición de redes WiFi
$nuevasRedes = @(
    @{ Nombre = "Test2"; Contraseña = "password2" }
    @{ Nombre = "NuevaRed1"; Contraseña = "Contraseña1" }
    @{ Nombre = "NuevaRed2"; Contraseña = "Contraseña2" }
    @{ Nombre = "Test"; Contraseña = "password" }
    @{ Nombre = "Test3"; Contraseña = "password3" }
)

# Detección automática del usuario actual y ruta para guardar perfiles
$usuarioActual = [Environment]::UserName
$rutaArchivos = "C:\Users\$usuarioActual\Documentos\PerfilesWiFi"

# Creación del directorio si no existe
if (-not (Test-Path $rutaArchivos)) {
    New-Item -ItemType Directory -Path $rutaArchivos | Out-Null
}

# Iterar sobre cada red
$nuevasRedes | ForEach-Object {
    $nombreRed = $_.Nombre
    $contraseña = $_.Contraseña

    # Validar que los valores no estén vacíos
    if ([string]::IsNullOrWhiteSpace($nombreRed) -or [string]::IsNullOrWhiteSpace($contraseña)) {
        Write-Host "Error: El nombre o la contraseña de una red están vacíos. Red omitida." -ForegroundColor Red
        return
    }

    # Ruta del archivo XML
    $rutaArchivoPerfil = Join-Path -Path $rutaArchivos -ChildPath "$nombreRed.xml"

    # Generar contenido del perfil XML
    @"
<?xml version="1.0"?>
<WLANProfile xmlns="http://www.microsoft.com/networking/WLAN/profile/v1">
    <name>$nombreRed</name>
    <SSIDConfig>
        <SSID>
            <name>$nombreRed</name>
        </SSID>
    </SSIDConfig>
    <connectionType>ESS</connectionType>
    <connectionMode>auto</connectionMode>
    <MSM>
        <security>
            <authEncryption>
                <authentication>WPA2PSK</authentication>
                <encryption>AES</encryption>
                <useOneX>false</useOneX>
            </authEncryption>
            <sharedKey>
                <keyType>passPhrase</keyType>
                <protected>false</protected>
                <keyMaterial>$contraseña</keyMaterial>
            </sharedKey>
        </security>
    </MSM>
</WLANProfile>
"@ | Set-Content -Path $rutaArchivoPerfil

    # Agregar el perfil al sistema
    try {
        netsh wlan add profile filename="$rutaArchivoPerfil" | Out-Null
        Write-Host "Perfil de red WiFi agregado exitosamente: $nombreRed" -ForegroundColor Green
    } catch {
        Write-Host "Error al agregar la red WiFi: $nombreRed. Detalles: $_" -ForegroundColor Red
    }

    # Eliminar archivo XML después de agregar el perfil
    try {
        Remove-Item -Path $rutaArchivoPerfil -Force
    } catch {
        Write-Host "No se pudo eliminar el archivo: $rutaArchivoPerfil. Detalles: $_" -ForegroundColor Yellow
    }
}
