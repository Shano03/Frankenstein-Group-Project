<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat" omit-xml-declaration="yes"/>
    <xsl:variable name="frankensteinText" select="document('../xml/frankensteinmergefix.xml')"/>
    
    <xsl:template match="$frankensteinText">
        <xsl:result-document method="xhtml" indent="yes" href="../docs/patrick_xslt_e.html">
            <html>
                <head>
                    <title>Frankenstein Chapter by Chapter Themes</title>
                    <link rel="stylesheet" type="text/css" href="patrick_xslt_e.css"/>
                </head>
                <body>
                    <h1>Themes Based on Chapter</h1>
                    <table> <!-- ap: i am creating a table to display the themes by chapter-->
                        <tr><th>Chapter</th><th>Phrase Themes</th><th>Word Themes</th></tr>
                        
                        <xsl:for-each select="//ch"> 
                            <tr><td><span class="chapter"><xsl:apply-templates select= "chapterName" /> </span></td><td><span class="phrase"><xsl:apply-templates select= ".//analysis_Phrase/@theme=>string-join('; ')"/></span></td><td><span class="word"><xsl:apply-templates select= ".//analysis_Word/@theme=>string-join('; ')"/></span></td></tr> <!--ap: i used span and class to allow coloring in my css-->
                        </xsl:for-each> <!--ap: i split the phrases and words up because i wasn't sure how to put them together. i can always change that if i can figure it out -->
                        
                    </table> 
                </body>
            </html>
        </xsl:result-document> 
    </xsl:template>
</xsl:stylesheet>