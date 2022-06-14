<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        <html>
  <body>
    <h2>Erwtima 6a</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Ονομα Προγράμματος</th>
        <th>Τιμή για Νέο Πελάτη</th>
        <th>Τιμή για Παλαιό Πελάτη</th>
        <th>Τιμή για Εταιρία</th>
      </tr>
      <tr>
      <xsl:for-each select="Provider/programmes/programme">
                    
        <th><xsl:value-of select="programme_name"/></th>
        
        
        <!-- THA KANW TO APO KATW SYNEXEIA ANLOGA TI EXEI KATHE FORA-->
        <xsl:if test="prices/price/@category='NewCustomer'">
            <th><xsl:value-of select="prices/price/value"/></th>
            <th>-</th>
            <th>-</th>
        </xsl:if>
        
        <xsl:if test="prices/price/@category='OldCustomer'">
            <th>-</th>
            <th><xsl:value-of select="prices/price/value"/></th>
            <th>-</th>
        </xsl:if>
        
         <xsl:if test="prices/price/@category='Company'">
            <th>-</th>
            <th>-</th>
            <th><xsl:value-of select="prices/price/value"/></th>
        </xsl:if>
        
       </xsl:for-each>
        
        
      </tr>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:transform>