<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
      <hmtl>
        <head>
          <title>Offers</title>
        </head>
        <body>
            <h2>Προσφορές Τηλεπικοινωνιακού Παρόχου</h2>
            <table border="2">
            <tr bgcolor="#84f0b9">
                <th>Προγράμματα</th>
                <th>Τιμή Προσφοράς</th>
                <th>Διάρκεια Προσφοράς</th>
             </tr>
                <xsl:for-each select="Provider/offerslist/offer">
                <tr>
                   <td> <xsl:value-of select="@programme_id"/>    </td>
                   <td> <xsl:value-of select="@price"/>           </td>
                   <td> <xsl:value-of select="OfferDuration/@duration"/>   </td>
                </tr>   
                </xsl:for-each>
            </table>
        </body>
      </hmtl>
    </xsl:template>
</xsl:transform>