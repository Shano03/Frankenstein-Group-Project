<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    <!--whc: you need the xpath-default-namespace attribute above because your input document this time is in TEI, and the xmlns xhtml attribute/value to create correct xhtml-->
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat" omit-xml-declaration="yes"/>
    
    <xsl:variable name="frankenstein" select="document('../xml/frankensteinmergefix.xml')"/>
    <!--whc: global variables will go here-->
    <xsl:variable name="xspacer" select="30"/>
    <xsl:variable name="yspacer" select="15"/>
    
    <xsl:template match="$frankenstein">
        <xsl:result-document method="xml" indent="yes" href="../docs/svg-exercise-3_Phillabaum.html">
        <html>
            <head><title>Frankenstein Analysis</title></head>
            <body>
                <h1>Number of Analysis Phrases, by Themes</h1>
            <svg viewBox="0 0 1000 650">
                <g transform="translate(250,10)">
                    <xsl:for-each-group select=".//ch//analysis_Phrase" group-by="@theme">
                        
                        <xsl:sort select="count(current-group())" order="descending"/>
                        <!--whc: these are local variables, meaning they only operate on the current group in the for-each-group loop-->
                        <xsl:variable name="theme-occurrence-count" select="count(current-group())"/>
                        <xsl:variable name="theme-sequence" select="position()"/>

                        <!--whc: this creates each bar in the bar graph-->
                        <line x1="0" x2="{$xspacer * $theme-occurrence-count}" 
                            y1="{$yspacer * $theme-sequence}" y2="{$yspacer * $theme-sequence}"
                            stroke-width="10" stroke="red"/>
                        
                        <!--whc: this labels each bar with the index number and name of each person-->
                        <text x="-10" y="{$yspacer * $theme-sequence}" text-anchor="end">
                            <xsl:value-of select="$theme-sequence"/><xsl:text>: </xsl:text>
                            <xsl:apply-templates select="current-grouping-key()"/></text>
                        
                        <!--whc: this places the count number after the end of each bar-->
                        <text x="{$xspacer * $theme-occurrence-count + 10}" y="{$yspacer * $theme-sequence}" text-anchor="right">
                            <xsl:value-of select="$theme-occurrence-count"/></text>
                        
                    </xsl:for-each-group>
                    
                    <!--whc: this creates the vertical reference line: note that it is OUTSIDE the for-loop-->
                    <line x1="0" y1="0" x2="0" y2="{count(.//ch//analysis_Phrase=>distinct-values()) * $yspacer}" stroke="blue" stroke-width="1"/>
                    
                </g>
            </svg>
                <p>A caption explaining the graph could go here.</p>
            </body>
        </html>
        </xsl:result-document>
    </xsl:template>
    
</xsl:stylesheet>