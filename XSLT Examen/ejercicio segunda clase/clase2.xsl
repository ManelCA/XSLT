<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Lista de Empleados</title>
      </head>
      <body>
        <h2>Lista de Empleados (Ordenados Alfabéticamente)</h2>
        <ol>
          <xsl:for-each select="employees/employee">
            <xsl:sort select="name"/>
            <li>
              <strong>Nombre: </strong><xsl:value-of select="name"/><br/>
              <strong>Departamento: </strong><xsl:value-of select="department"/><br/>
              <strong>Salario: </strong><xsl:value-of select="salary"/><br/>
              <strong>Años de Experiencia: </strong><xsl:value-of select="years_of_experience"/>
            </li>
          </xsl:for-each>
        </ol>
        
         <h2>Tabla de Empleados (Con Fondos de Colores)</h2>
        <table border="1">
          <tr>
            <th>Nombre</th>
            <th>Departamento</th>
            <th>Salario</th>
            <th>Años de Experiencia</th>
          </tr>
          <xsl:for-each select="employees/employee">
            <xsl:choose>
              <xsl:when test="position() mod 2 = 0">
                <tr class="even">
              </xsl:when>
              <xsl:otherwise>
                <tr class="odd">
              </xsl:otherwise>
            </xsl:choose>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="department"/></td>
            <td><xsl:value-of select="salary"/></td>
            <td><xsl:value-of select="years_of_experience"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>




