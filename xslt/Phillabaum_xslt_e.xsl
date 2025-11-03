<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat" omit-xml-declaration="yes"/>
    
    <!-- Declares the variable name as fullText for the frankensteinmergefix.xml document. This makes it so the xml document is loaded into the xslt file. -->
    
    <xsl:variable name="fullText" select="document('frankensteinmergefix.xml')"/>
    
    <!-- Serves as the top level rule and starts matching at the root element -->
       
        <xsl:template match="/">
            <!-- Displays the output in the chosen html document -->
            <xsl:result-document method="xhtml" indent="yes" href="exercise-d-output.html">
                <html>
                    <head>
                        <!-- Serves as the title to the webpage -->
                        <title>Frankenstein</title>
                        <!-- Links the css file to the the xslt file so the output shows the colors chosen for the elements below -->
                        <link rel="stylesheet" type="text/css" href="Phillabaum_xslt_e.css"/>
                    </head>
                    <body>
                        <!-- For each volume within the $fullText variable the letter and ch elements should be surrounded by p tags for spacing within the output between the letters and chapters -->
                        <xsl:for-each select="$fullText//volume">
                            <xsl:if test="//letter">
                                <p><xsl:apply-templates/></p>
                            </xsl:if>
                            <xsl:if test="//ch">
                                <p><xsl:apply-templates/></p>
                            </xsl:if>
                        </xsl:for-each>
                    </body>
                </html>
            </xsl:result-document>
        </xsl:template>
    
    <!-- Template rules to color code the elements analysis_Word, analysis_Phrase, place, and char for the full text page of our webpage -->
    
    <xsl:template match="analysis_Word">
        <span class="analysis_Word"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="analysis_Phrase">
        <span class="analysis_Phrase"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="place">
        <span class="place"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="char">
        <span class="char"><xsl:apply-templates/></span>
    </xsl:template>
    
</xsl:stylesheet>