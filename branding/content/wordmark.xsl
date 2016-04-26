<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:svg="http://www.w3.org/2000/svg">

<xsl:template match="svg:svg/@height">
<xsl:attribute name="height"><xsl:value-of select="'39'"/></xsl:attribute>
</xsl:template>

<xsl:template match="svg:g[@id='g3229']/@transform">
<xsl:attribute name="transform"><xsl:value-of select="'translate(-112.1549,-60)'"/></xsl:attribute>
</xsl:template>

<xsl:template match="svg:svg|svg:defs|svg:defs//*|svg:g[@id='g3229' or @id='g17886']|svg:path[@id='path2813' or @id='path2823']|svg:g[@id='g17886']//*|@*">
<xsl:copy>
<xsl:apply-templates select="*|@*"/>
</xsl:copy>
</xsl:template>

</xsl:stylesheet>
