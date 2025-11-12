<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:output method="xml" indent="yes" />
    <xsl:variable name= "frankenstein"
        select= "document('../xml/frankensteinmergefix.xml')"/>
  
    <xsl:variable name="xspacer" select="20" />
    <xsl:variable name="yspacer" select="15" />
    
    <xsl:template match="$frankenstein">
        <xsl:result-document method= "xml" indent="yes" href="../docs/patrick-svg3-output.html">
            <html>
                <head><title>
                        Frankenstein Chapter By Chapter Themes
                </title></head>
                <body>
                    <h1>Themes Based on Chapter </h1>
            <svg viewBox= "0 0 1000 1000">
                <g transform="translate(50,50)">  
                   
                    <xsl:for-each select="//ch">
                        <xsl:variable name="theme-count" select=".//*[@theme]=>count()" />
                        <xsl:variable name="ch-number" select="position()"/>
                        <line x1="0" x2="{$xspacer* $theme-count}" y1= "{$yspacer*$ch-number}" y2="{$yspacer*$ch-number}" stroke-width="10" stroke="red" />
                        <text x="{$xspacer* $theme-count +10}" y="{$yspacer*$ch-number}" text-anchor="right"> 
                            <xsl:value-of select="$theme-count"/>  
                        </text>
                        
                        <text x="{-20}" y="{$yspacer* $ch-number}" text-anchor="right">
                            <xsl:value-of select="$ch-number"/>
                        </text>
                    </xsl:for-each>  
                    <line x1="0" y1="0" x2="0" y2="{count(//ch)* $yspacer}" stroke="blue" stroke-width="1"/> 
                    <!--vertical axis-->
                    
                    <line x1="0" y1="0" x2="{count(.//@theme)*$xspacer}" y2="0" stroke="black" stroke-width="1"/>  
                    <!--  horizontal axis--> 
                </g> 
            </svg>    
    </body>
    </html>
   </xsl:result-document>
    </xsl:template>
</xsl:stylesheet>