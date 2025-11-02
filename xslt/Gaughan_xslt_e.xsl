<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat" omit-xml-declaration="yes"/>
    <xsl:variable name="frankensteinChar" select="document('../xml/frankensteinmergefix.xml')"/>
    
    <xsl:template match="$frankensteinChar">
        <xsl:result-document method="xhtml" indent="yes" href="../docs/Gaughan_xslt_e.html">
        <html>
            <head>
                <title>Frankenstein Character Database</title>
                <link rel="stylesheet" type="text/css" href="Gaughan_xslt_e.css"/>
            </head>
            <body>
                <xsl:for-each select=".//ch">
                    <xsl:apply-templates/>
                </xsl:for-each>
            </body> <!-- pg: on my output i have divisions in my chapters but when i open the html doc there are no divisions anymore-->
        </html>
        </xsl:result-document>  
    </xsl:template>
    <xsl:template match="char"> <!--pg: I cant figure out how to seperate by character to get it to where i could highlight each character as a differenct color, since i think i have to do something here and not just in my css-->
        <span class="char">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
</xsl:stylesheet>