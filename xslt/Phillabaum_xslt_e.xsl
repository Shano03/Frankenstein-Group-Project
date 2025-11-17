<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat" omit-xml-declaration="yes"/>
    
    <!-- Declares the variable name as fullText for the frankensteinmergefix.xml document. This makes it so the xml document is loaded into the xslt file. -->
    
    <xsl:variable name="fullText" select="document('../xml/frankensteinmergefix.xml')"/>
    
    <!-- Serves as the top level rule and starts matching at the root element -->
       
    <xsl:template match="$fullText">
            <!-- Displays the output in the chosen html document -->
            <xsl:result-document method="xhtml" indent="yes" href="../docs/Phillabaum_xslt_e.html">
                <html>
                    <head>
                        <!-- Serves as the title to the webpage -->
                        <title>Frankenstein</title>
                        <!-- Links the css file to the the xslt file so the output shows the colors chosen for the elements below -->
                        <a href="index.html">Back to Home Page</a>
                        <link rel="stylesheet" type="text/css" href="../docs/Phillabaum_xslt_e.css"/>
                    </head>
                    <body>
                        <!-- For each volume within the $fullText variable the letter and ch elements should be surrounded by p tags for spacing within the output between the letters and chapters -->
                        <xsl:for-each select=".//volume">
                            <xsl:apply-templates/>
                        </xsl:for-each>
                    </body>
                </html>
            </xsl:result-document>
        </xsl:template>
    
    
    <xsl:template match="volumeName"> 
        <h1><xsl:apply-templates/></h1>
    </xsl:template>
    
    <xsl:template match="title"> 
        <h1><xsl:apply-templates/></h1>
    </xsl:template>
    
    <xsl:template match="chapterName"> 
        <h2><xsl:apply-templates/></h2>
    </xsl:template>
    
    <xsl:template match="letterName"> 
        <h2><xsl:apply-templates/></h2>
    </xsl:template>
    
    <xsl:template match="p"> 
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <!-- Template rules to color code the elements analysis_Word, analysis_Phrase, place, and char for the full text page of our webpage -->
    
    <!--<xsl:template match="analysis_Word">
        <span class="analysis_Word"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="analysis_Phrase">
        <span class="analysis_Phrase"><xsl:apply-templates/></span>
    </xsl:template>-->
    
    
    <xsl:template match="*[@theme='Guilt']">
        <span class="Guilt"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="*[@theme='Isolation']">
        <span class="Isolation"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="*[@theme='Ambition']">
        <span class="Ambition"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="*[@theme='Madness']">
        <span class="Madness"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="*[@theme='Secrecy']">
        <span class="Secrecy"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="*[@theme='Creation_Of_Creation']">
        <span class="Consequences_Of_Creation"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="*[@theme='Obsession']">
        <span class="Obsession"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="*[@theme='Worry']">
        <span class="Worry"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="*[@theme='Self_Disgust']">
        <span class="Self_Disgust"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="*[@theme='Rage']">
        <span class="Rage"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="*[@theme='Misery']">
        <span class="Misery"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="*[@theme='Illness']">
        <span class="Illness"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="*[@theme='Death']">
        <span class="Death"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="*[@theme='Depression']">
        <span class="Depression"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="*[@theme='Fear']">
        <span class="Fear"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="place">
        <span class="place"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="char">
        <span class="char"><xsl:apply-templates/></span>
    </xsl:template>
    
</xsl:stylesheet>