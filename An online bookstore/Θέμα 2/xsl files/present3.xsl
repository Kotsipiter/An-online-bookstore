<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />
<xsl:template match="/">
<html>
<body>
<h2>Eρώτημα 7C</h2>
<table border="3">
        <tr bgcolor="#9acd32">
            <th>Τίτλος Βιβλίου</th>
            <th>Υπότιτλος Βιβλίου</th>
            <th>Τελική Τιμή</th>
        </tr>


<tr>

   <xsl:for-each select="online_bookshop/book_list/book"> 
           <xsl:sort select="cost_information/end_value" data-type="number" order="descending"/>
      <tr>
      <td><xsl:value-of select="book_titles_info/@title"/></td>
      <xsl:choose>
          <xsl:when test="book_titles_info/@subtitle != ''">
              <td><xsl:value-of select="book_titles_info/@subtitle"/></td>
          </xsl:when>
          <xsl:otherwise>
              <td></td>
          </xsl:otherwise>
      </xsl:choose>
      <td><xsl:value-of select="cost_information/end_value"/></td>


     </tr>

    </xsl:for-each>
</tr>
</table>
</body>
</html>
</xsl:template>
</xsl:transform>