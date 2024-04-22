<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <h1>Library Catalog</h1>
      </head>
      <body>
        <xsl:for-each select="library/book">
          <h3><xsl:value-of select="title"/></h3>
          <p><xsl:value-of select="author"/> - <xsl:value-of select="genre"/></p>
          <p><xsl:value-of select="price"/> $</p>
        <xsl:choose>
          <xsl:when test="available = 'true' ">
            <p style="color:green">Avaliable</p>
          </xsl:when>
          <xsl:otherwise>
            <p style="color:red">Out of Stock</p>
          </xsl:otherwise>
        </xsl:choose>
          <h2>Reviews: </h2>
          <ol>
        <xsl:for-each select="reviews/review">
         <li>
         <strong>User: </strong><xsl:value-of select="user"/>
         <xsl:value-of select="comment"/>
         </li>
        </xsl:for-each>
        </ol>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
