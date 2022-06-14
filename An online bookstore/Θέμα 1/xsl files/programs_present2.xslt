<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
      <hmtl>
        <head>
          <title>Programs</title>
        </head>
        <BODY>
            <h2>Προγράμματα της κατηγορίας "mobile"</h2>
            <UL>
                <xsl:for-each select="Provider/programmes/programme">
                    <xsl:sort select="programme_name"/>
                    <xsl:if test="programme_name/@programme_cat='mobile'">
                        <LI><xsl:value-of select="programme_name"/>
                        <xsl:value-of select="mobilecat/@cat"/></LI>
                    </xsl:if>
                </xsl:for-each>
            </UL>
        </BODY>
        <xsl:apply-templates/>
      </hmtl>
    </xsl:template>
</xsl:transform>