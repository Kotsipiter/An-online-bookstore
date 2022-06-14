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
    </xsl:apply-templates>
    </html>

</xsl:template> 


<xsl:template match="book">
<books_to_buy>Τίτλος: <span style="color:green;">
<xsl:apply-templates select="book_titles_info/@title"/></span><br />
Id Συγγραφέα: <span style="color:#ff0000">
<xsl:apply-templates select="authors/@author_id"/></span><br />
Ημερομηνια εκδοσης: <span style="color:#ff0000">
<xsl:apply-templates select="book_characteristics/publisher/@publisher_year"/></span><br /><br /></books_to_buy>
</xsl:template>


</xsl:transform>