<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

    <xsl:output encoding="UTF-8"/>  

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="article/*[1][self::p]">
        <h1>
            <xsl:apply-templates select="@*|node()"/>
        </h1>        
    </xsl:template>

    <xsl:template match="
        article/*[
            preceding-sibling::*[1][self::h1] and 
            self::p and 
            not(self::p/strong)
        ]">
        <p>
            <strong>
                <xsl:apply-templates select="@*|node()"/>
            </strong>
        </p>        
    </xsl:template>

</xsl:stylesheet>