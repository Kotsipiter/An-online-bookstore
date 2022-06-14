<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />



<xsl:template match="book_category"/>
<xsl:template match="secondary_category"/>
<xsl:template match="name"/>
<xsl:template match="contact_details"/>

<xsl:template match="online_bookshop/book_list" > 

    <html>
    <xsl:apply-templates select="book">
    <xsl:sort select="book_titles_info/@title"/>
    </xsl:apply-templates>
    </html>

</xsl:template> 


<xsl:template match="book">
Τίτλος: <span style="color:green;">
<xsl:apply-templates select="book_titles_info/@title"/></span><br />
Αρχική Τιμή: <span style="color:#ff0000">
<xsl:apply-templates select="cost_information/start_value"/></span><br />
Τελική Τιμή: <span style="color:green;">
<xsl:apply-templates select="cost_information/end_value"/></span><br />
 Διαθεσιμότητα: <span style="color:#ff0000">
<xsl:apply-templates select="other_information/diathesimotita"/></span><br /><br />
</xsl:template>


</xsl:transform>