<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat" omit-xml-declaration="yes"/>
    
    <xsl:variable name="frankenstein" select="document('../xml/frankensteinmergefix.xml')"/>
    <!--jp: global variables -->
    <xsl:variable name="xspacer" select="30"/>
    <xsl:variable name="yspacer" select="15"/>
    
    <xsl:template match="$frankenstein">
        <xsl:result-document method="xml" indent="yes" href="../docs/svg-exercise-3_Phillabaum.html">
        <html>
            <head><title>Frankenstein Analysis</title></head>
            <body>
                <h1>Number of Analysis Phrases by Themes</h1>
            <!--jp: viewBox and transform adjusted so that the graph fits on the user's screen and the vertical line isn't longer than needed-->
            <svg viewBox="0 0 1000 240">
                <g transform="translate(220,10)">
                    <xsl:for-each-group select=".//ch//analysis_Phrase" group-by="@theme">
                        
                        <xsl:sort select="count(current-group())" order="descending"/>
                        <!--jp: local variables for the for-each-group-->
                        <xsl:variable name="theme-occurrence-count" select="count(current-group())"/>
                        <xsl:variable name="theme-sequence" select="position()"/>

                        <!--jp: creates each bar in the bar graph-->
                        <line x1="0" x2="{$xspacer * $theme-occurrence-count}" 
                            y1="{($yspacer * $theme-sequence) - 5}" y2="{($yspacer * $theme-sequence) - 5}"
                            stroke-width="10" stroke="green"/>
                        
                        <!--jp: this labels each bar with the index number and each theme-->
                        <text x="-10" y="{$yspacer * $theme-sequence}" text-anchor="end">
                            <xsl:value-of select="$theme-sequence"/><xsl:text>: </xsl:text>
                            <xsl:apply-templates select="current-grouping-key()"/></text>
                        
                        <!--jp: this places the amount of each theme at the end of each bar in the graph-->
                        <text x="{$xspacer * $theme-occurrence-count + 10}" y="{$yspacer * $theme-sequence}" text-anchor="right">
                            <xsl:value-of select="$theme-occurrence-count"/></text>
                        
                    </xsl:for-each-group>
                    
                    <!--jp: this creates the vertical reference line: however I can't figure out why the line is longer than it should be-->
                    <!--jp: I seemed to fix it by adjusting the viewbox, but I was wondering if I could fix it without adjusting the viewbox-->
                    <line x1="0" y1="0" x2="0" y2="{count(.//ch//analysis_Phrase) * $yspacer}" stroke="black" stroke-width="1"/>
                    
                </g>
            </svg>
                <p>This graph shows the amount of times a theme popped up in a phrase within the novel.</p>
            </body>
        </html>
        </xsl:result-document>
    </xsl:template>
    
</xsl:stylesheet>