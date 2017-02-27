<?xml version="1.0"?>

<xsl:stylesheet
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:fn2="http://www.w3.org/2004/07/xpath-functions"
        xmlns:xhtml="http://www.w3.org/1999/xhtml"
        exclude-result-prefixes="xhtml xsl"
        version="1.0">

    <xsl:output method="text" encoding="UTF-8" indent="no"/>

    <xsl:template match="/">
<xsl:text>tstmp,type,source,value,units</xsl:text><xsl:text>
</xsl:text>
        <xsl:apply-templates select="//observation|//Correlation|//HealthData"/>
    </xsl:template>

    <xsl:template match="observation">
<xsl:value-of select="effectiveTime/low/@value"/>, <xsl:value-of select="code/@displayName"/>, <xsl:value-of select="text/sourceName"/>, <xsl:value-of select="value/@value"/>, <xsl:value-of select="value/@unit"/><xsl:text>
</xsl:text>
    </xsl:template>

    <xsl:template match="Correlation|HealthData">
<xsl:apply-templates select="Record"/>
    </xsl:template>

    <xsl:template match="Record">
<xsl:value-of select="@startDate"/>, <xsl:value-of select="@type"/>, <xsl:value-of select="@sourceName"/>, <xsl:value-of select="@value"/>, <xsl:value-of select="@unit"/><xsl:text>
</xsl:text>
    </xsl:template>

</xsl:stylesheet>
