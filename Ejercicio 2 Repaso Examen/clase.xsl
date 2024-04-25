<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
   <html>
      <head>
      </head>
      <body>
      
        <h1 style="font-family:courier">Inventario de Producto</h1>
       <xsl:for-each select="inventario/item">
          <xsl:sort select="name"/>
          <h2><xsl:value-of select="name"/></h2>
          <p><xsl:value-of select="brand"/> - <xsl:value-of select="category"/></p>
          <p>Precio: <xsl:value-of select="price"/></p> 
          <xsl:choose>
             <xsl:when test="available ='true'">
               <p style="color:green">Avaliable</p>
               </xsl:when>
              <xsl:otherwise>
               <p style="color:red">Not Stock</p>
             </xsl:otherwise>
             </xsl:choose>
        </xsl:for-each>
        
       <h1 style="font-family:Symbol">Inventario de Productos</h1>
        <table border="1">
          <tr>
            <th>Nombre</th>
            <th>Marca</th>
            <th>Categoría</th>
            <th>Precio</th>
            <th>Disponibilidad</th>
          </tr>
          <xsl:for-each select="inventario/item">
          <tr>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="brand"/></td>
            <td><xsl:value-of select="category"/></td>
            <td><xsl:value-of select="price"/></td>
            <xsl:choose>
             <xsl:when test="available ='true'">
               <td style="color:green">Avaliable</td>
               </xsl:when>
              <xsl:otherwise>
               <td style="color:red">Not Stock</td>
             </xsl:otherwise>
             </xsl:choose>
          </tr>
          </xsl:for-each>
        </table>
        
         <h1 style="font-family:courier">Inventario de Producto</h1>
       <xsl:for-each select="inventario/item">
          <xsl:sort select="name"/>
          <h2><xsl:value-of select="name"/></h2>
          <img src="C:\Users\manuelca\Downloads\Ejercicio 2 Imagenes-Urls" alt="Imagen Producto" width="100"/>
          <p><xsl:value-of select="brand"/> - <xsl:value-of select="category"/></p>
          <p>Precio: <xsl:value-of select="price"/></p> 
          <xsl:choose>
             <xsl:when test="available ='true'">
               <p style="color:green">Avaliable</p>
               </xsl:when>
              <xsl:otherwise>
               <p style="color:red">Not Stock</p>
             </xsl:otherwise>
             </xsl:choose>
        </xsl:for-each>
        
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
