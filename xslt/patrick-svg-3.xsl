<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:output method="xml" indent="yes" />
    <xsl:variable name= "frankenstein"
        select= "document('../xml/frankensteinmergefix.xml')"/>
  
    <xsl:variable name="xspacer" select="30" />
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
                   
                    <xsl:for-each select="//volume//@theme">
                        <xsl:variable name="theme-count" select="//volume//@theme" />
                        <xsl:variable name="ch-number" select="//ch"/>
                       <!-- <line x1="10" x2="20" y1="{$yspacer* $neg-theme}" y2="{$yspacer*$div-number}" stroke-width="10" stroke="red" />-->
                        <!--<text x="-25" y="{$yspacer*$div-number}" text-anchor="right"> -->
                            <!--<xsl:value-of select="$div-number"/> -->
                        <!--</text>-->
                        
                        <text x="{$xspacer * $ch-number +10}" y="0" text-anchor="right">
                            <xsl:value-of select="//ch"/>
                        </text>
                    </xsl:for-each>  
                    <line x1="0" y1="0" x2="0" y2="{count(//volume)* $yspacer}" stroke="blue" stroke-width="1"/> 
                    <!--vertical axis-->
                    
                    <line x1="0" y1="0" x2="100" y2="{count(//@theme)*$yspacer}" stroke="black" stroke-width="1"/>  
                    <!--  horizontal axis--> 
                </g> 
            </svg>    
    </body>
    </html>
   </xsl:result-document>
    </xsl:template>
</xsl:stylesheet>