<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Plantilla que coincide con el elemento raíz "/" y define la estructura básica de la página HTML -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Concurso de Participantes</title>
                <!-- Vinculando el archivo CSS para estilos -->
                <link rel="stylesheet" type="text/css" href="estilos.css" />
            </head>
            <body>
                <!-- Cabecera de la página -->
                <div class="header">
                    <h1>Concurso de Participantes</h1>
                </div>
                <!-- Contenido principal -->
                <main>
                    <!-- Llamada a otra plantilla que maneja la lista de participantes -->
                    <xsl:call-template name="listaParticipantes" />
                </main>
            </body>
        </html>
    </xsl:template>
    
    <!-- Plantilla que crea una lista de participantes -->
    <xsl:template name="listaParticipantes">
        <h2>Lista de Participantes</h2>
        <!-- Creando una tabla para mostrar la información de los participantes -->
        <table class="participantes-t">
            <!-- Encabezado de la tabla -->
            <tr>
                <th>Código</th>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Edad</th>
                <th>Provincia</th>
                <th>Puntos</th>
            </tr>
            <!-- Iterando sobre cada elemento participante en el XML -->
            <xsl:for-each select="concurso/participante">
                <tr>
                    <!-- Mostrando el atributo código -->
                    <td><xsl:value-of select="@codigo" /></td>
                    <!-- Mostrando los elementos nombre, apellidos, edad, provincia, y puntos -->
                    <td><xsl:value-of select="nombre" /></td>
                    <td><xsl:value-of select="apellidos" /></td>
                    <td><xsl:value-of select="edad" /></td>
                    <td><xsl:value-of select="provincia" /></td>
                    <td><xsl:value-of select="puntos" /></td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
    
</xsl:stylesheet>