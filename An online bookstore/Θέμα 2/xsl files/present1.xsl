<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />


<xsl:template match="online_bookshop/book_list/book">
  <html>
  <body>
  <h2>Erwtima 7a</h2>
  </body>
  </html>
</xsl:template>

<xsl:template match="book_category"/>
<xsl:template match="secondary_category"/>
<xsl:template match="name"/>
<xsl:template match="contact_details"/>

<xsl:template match="online_bookshop/book_list/book" > 
        <xsl:apply-templates select="book_titles_info/@title"/>
        <xsl:apply-templates select="book_titles_info/@subtitle"/>
        <xsl:apply-templates select="cost_information/start_value"/>
        <xsl:apply-templates select="cost_information/end_value"/>
        <xsl:apply-templates select="other_information/diathesimotita"/>
</xsl:template> 

<xsl:template match="@title">
  Τίτλος: <span style="color:green;">
  <xsl:value-of select="."/>
  </span>
  <br />
</xsl:template>

<xsl:template match="@subtitle">
  Υπότιτλος: <span style="color:green;">
  <xsl:value-of select="."/>
  </span>
  <br />
</xsl:template>

<xsl:template match="cost_information/start_value">
  Αρχική Τιμή: <span style="color:#ff0000">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="cost_information/end_value">
  Τελική Τιμή: <span style="color:green;">
  <xsl:value-of select="."/>
  </span>
  <br />
</xsl:template>

<xsl:template match="other_information/diathesimotita">
  Διαθεσιμότητα: <span style="color:#ff0000">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>


</xsl:transform>
