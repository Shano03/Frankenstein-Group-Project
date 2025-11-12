<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/2000/svg"
    version="3.0">
    
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name="Frankenstein" select="document('../xml/frankensteinmergefix.xml')"/>
    <xsl:variable name="xspacer" select="25"/>
    <xsl:variable name="yspacer" select="17"/>
    
    <xsl:template match="$Frankenstein">
        <xsl:result-document method="xml" indent="yes" href="../docs/Gaughan_exercise_3.html">
            <html>
                <head>
                    <title>Frankenstein Analysis</title>
                </head>
                <body>
                    <h1>Number of Analysis Words</h1>
                    <svg viewBox="0 0 1000 1000">
                        <g transform="translate(150,50)">
                            <xsl:for-each-group select="//ch//p//analysis_Word" group-by="@theme">
                                
                                <xsl:sort select="count(current-group())" order="descending"/>
                                <xsl:variable name="word-count" select="count(current-group())"/>
                                <xsl:variable name="word-sequence" select="position()"/>
                                    
                                    <line x1="0" x2="{$xspacer * $word-count}" y1="{$yspacer * $word-sequence}" y2="{$yspacer * $word-sequence}" stroke-width="10" stroke="purple"/>
                                
                                <text x="-10" y="{$yspacer * $word-sequence}" text-anchor="end"><xsl:value-of select="$word-sequence"/><xsl:text>: </xsl:text> <xsl:apply-templates select="string()[1]"/></text>
                                <text x="{$xspacer * $word-count + 10}" y="{$yspacer * $word-sequence}" text-anchor="end"><xsl:value-of select="$word-count"/></text>
                                
                            </xsl:for-each-group> 
                            <line x1="0" y1="0" x2="0" y2="{count(//ch//p//analysis_Word)=>distinct-values() * $yspacer}" stroke="black" stroke-width="1"/>
                        </g> 
                    </svg>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
    
</xsl:stylesheet>