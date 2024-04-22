<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Inventario de productos</title>
      </head>
      <body>
        <h1 style="font-size: 28px;">INVENTARIO</h1>
        
        <xsl:for-each select="inventario/producto">
          <h3>Producto <xsl:value-of select="@codigo"/></h3>
          <ul>
            <li><strong style="color:red;">Nombre: </strong><xsl:value-of select="nombre"/></li>
            <li><strong>Peso: </strong><xsl:value-of select="concat(peso, ' ', peso/@unidad)"/></li>
            <li><strong>Precio: </strong><xsl:value-of select="precio"/></li>
            <li><strong>Unidades: </strong><xsl:value-of select="unidades"/></li>
          </ul>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
