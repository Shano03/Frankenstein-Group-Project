<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat" omit-xml-declaration="yes"/>
        <xsl:variable name="frankensteinproject" select="document('../xml/frankensteinmergefix.xml')"/>
            
        
        <xsl:template match="$frankensteinproject">
            <xsl:result-document method="xhtml" indent="yes" href="frankensteinanalysisphrase.html">
            <html>
            <head><title>The Mental Deterioration of Victor Frankenstein</title> <!--title of page-->
               <link rel="stylesheet" type="text/css" href="frankenstein_basic.css"/><!--linked to css style sheet-->
            </head>
            <body>
                <h2>The Mental Deterioration of Victor Frankenstein</h2> <!-- header -->
                <table>
                    <tr><td>Theme</td><td>Theme Frequency</td></tr> <!-- categories of the table -->
                    <xsl:for-each-group select="//analysis_Phrase" group-by="@theme"> <!-- collecting theme data from xml -->
                        <xsl:sort select="count(current-group())" order="descending"/> 
                        <tr>
                            <td><xsl:value-of select="@theme"/></td><td><xsl:value-of select="count(current-group())"/></td><!-- counting number of occurances of themes -->
                        </tr>
                    </xsl:for-each-group>
                </table>
                
                <hr/> <!-- makes line in between main table and smaller tables -->
                <xsl:for-each select="//volume"> <!--table for specifically volumes 1-3 -->
                <h2>In Volume <xsl:value-of select="position()"/></h2>
                <table>
                    <tr><td>Theme</td><td>Theme Frequency</td></tr> <!-- categories of the table -->
                    <xsl:for-each-group select=".//analysis_Phrase" group-by="@theme">
                        <xsl:sort select="count(current-group())" order="descending"/>
                        <tr>
                            <td><xsl:value-of select="@theme"/></td><td><xsl:value-of select="count(current-group())"/></td>
                        </tr>
                    </xsl:for-each-group>
                </table>
                </xsl:for-each>
                
                
            </body>
            </html>
            </xsl:result-document>
        </xsl:template>
            
 
</xsl:stylesheet>