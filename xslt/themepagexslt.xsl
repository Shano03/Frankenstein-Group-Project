<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat" omit-xml-declaration="yes"/>
    <xsl:variable name="frankensteinText" select="document('../xml/frankensteinmergefix.xml')"/>
    <xsl:template match="$frankensteinText">
        <xsl:result-document method="xhtml" indent="yes" href="../docs/frankenstein_xslt_guilt.html">
            <html>
                <head>
                    <title>Theme of Guilt</title>
                    <link rel="stylesheet" type="text/css" href="../docs/frankenstein_basic.css"/>
                </head>
                <body>
                      <h1>Occurrences of Theme</h1> 
                        
                        <xsl:for-each select= "//analysis_Phrase[@theme= 'Guilt']">
                     <p><xsl:value-of select= "./text()"/></p>
                           
                        </xsl:for-each>
                    <xsl:for-each select= "//analysis_Word[@theme= 'Guilt']">
                        <p><xsl:value-of select= "./text()"/></p>
                        
                    </xsl:for-each>    
                </body>
            </html>
        </xsl:result-document> 
        
        
        
        <xsl:result-document method="xhtml" indent="yes" href="../docs/frankenstein_xslt_isolation.html">
            <html>
                <head>
                    <title>Theme of Isolation</title>
                    <link rel="stylesheet" type="text/css" href="../docs/frankenstein_basic.css"/>  
                </head>
                <body>
                    <h1>Occurrences of Theme</h1> 
                    
                    <xsl:for-each select= "//analysis_Phrase[@theme= 'Isolation']">
                        <p><xsl:value-of select= "./text()"/></p>
                        
                    </xsl:for-each>
                    <xsl:for-each select= "//analysis_Word[@theme= 'Isolation']">
                        <p><xsl:value-of select= "./text()"/></p>
                        
                    </xsl:for-each>    
                </body>
            </html>
        </xsl:result-document>
        
        
        
        
        <xsl:result-document method="xhtml" indent="yes" href="../docs/frankenstein_xslt_ambition.html">
            <html>
                <head>
                    <title>Theme of Ambition</title>
                    <link rel="stylesheet" type="text/css" href="../docs/frankenstein_basic.css"/>
                </head>
                <body>
                    <h1>Occurrences of Theme</h1> 
                    
                    <xsl:for-each select= "//analysis_Phrase[@theme= 'Ambition']">
                        <p><xsl:value-of select= "./text()"/></p>
                        
                    </xsl:for-each>
                    <xsl:for-each select= "//analysis_Word[@theme= 'Ambition']">
                        <p><xsl:value-of select= "./text()"/></p>
                        
                    </xsl:for-each>    
                </body>
            </html>
        </xsl:result-document>
        
        
        
        <xsl:result-document method="xhtml" indent="yes" href="../docs/frankenstein_xslt_madness.html">
            <html>
                <head>
                    <title>Theme of Madness</title>
                    <link rel="stylesheet" type="text/css" href="../docs/frankenstein_basic.css"/>
                </head>
                <body>
                    <h1>Occurrences of Theme</h1> 
                    
                    <xsl:for-each select= "//analysis_Phrase[@theme= 'Madness']">
                        <p><xsl:value-of select= "./text()"/></p>
                        
                    </xsl:for-each>
                    <xsl:for-each select= "//analysis_Word[@theme= 'Madness']">
                        <p><xsl:value-of select= "./text()"/></p>
                        
                    </xsl:for-each>    
                </body>
            </html>
        </xsl:result-document>
        
        
        
        <xsl:result-document method="xhtml" indent="yes" href="../docs/frankenstein_xslt_secrecy.html">
            <html>
                <head>
                    <title>Theme of Secrecy</title>
                    <link rel="stylesheet" type="text/css" href="../docs/frankenstein_basic.css"/> 
                </head>
                <body>
                    <h1>Occurrences of Theme</h1> 
                    
                    <xsl:for-each select= "//analysis_Phrase[@theme= 'Secrecy']">
                        <p><xsl:value-of select= "./text()"/></p>
                        
                    </xsl:for-each>
                    <xsl:for-each select= "//analysis_Word[@theme= 'Secrecy']">
                        <p><xsl:value-of select= "./text()"/></p>
                        
                    </xsl:for-each>    
                </body>
            </html>
        </xsl:result-document>
       
       
       
       
        <xsl:result-document method="xhtml" indent="yes" href="../docs/frankenstein_xslt_consequencesOfcreation.html">
            <html>
                <head>
                    <title>Theme of Consequences of Creation</title>
                    <link rel="stylesheet" type="text/css" href="../docs/frankenstein_basic.css"/>
                </head>
                <body>
                    <h1>Occurrences of Theme</h1> 
                    
                    <xsl:for-each select= "//analysis_Phrase[@theme= 'Consequences_Of_Creation']">
                        <p><xsl:value-of select= "./text()"/></p>
                        
                    </xsl:for-each>
                    <xsl:for-each select= "//analysis_Word[@theme= 'Consequences_Of_Creation']">
                        <p><xsl:value-of select= "./text()"/></p>
                        
                    </xsl:for-each>    
                </body>
            </html>
        </xsl:result-document>
        
        
        
        <xsl:result-document method="xhtml" indent="yes" href="../docs/frankenstein_xslt_obsession.html">
            <html>
                <head>
                    <title>Theme of Obsession</title>
                    <link rel="stylesheet" type="text/css" href="../docs/frankenstein_basic.css"/>  
                </head>
                <body>
                    <h1>Occurrences of Theme</h1> 
                    
                    <xsl:for-each select= "//analysis_Phrase[@theme= 'Obsession']">
                        <p><xsl:value-of select= "./text()"/></p>
                        
                    </xsl:for-each>
                    <xsl:for-each select= "//analysis_Word[@theme= 'Obsession']">
                        <p><xsl:value-of select= "./text()"/></p>
                        
                    </xsl:for-each>    
                </body>
            </html>
        </xsl:result-document>
        
        
        
        
        
        <xsl:result-document method="xhtml" indent="yes" href="../docs/frankenstein_xslt_worry.html">
            <html>
                <head>
                    <title>Theme of Worry</title>
                    <link rel="stylesheet" type="text/css" href="../docs/frankenstein_basic.css"/>
                </head>
                <body>
                    <h1>Occurrences of Theme</h1> 
                    
                    <xsl:for-each select= "//analysis_Phrase[@theme= 'Worry']">
                        <p><xsl:value-of select= "./text()"/></p>
                        
                    </xsl:for-each>
                    <xsl:for-each select= "//analysis_Word[@theme= 'Worry']">
                        <p><xsl:value-of select= "./text()"/></p>
                        
                    </xsl:for-each>    
                </body>
            </html>
        </xsl:result-document>
        
        
        
        <xsl:result-document method="xhtml" indent="yes" href="../docs/frankenstein_xslt_selfDisgust.html">
            <html>
                <head>
                    <title>Theme of Self Disgust</title>
                    <link rel="stylesheet" type="text/css" href="../docs/frankenstein_basic.css"/>
                </head>
                <body>
                    <h1>Occurrences of Theme</h1> 
                    
                    <xsl:for-each select= "//analysis_Phrase[@theme= 'Self_Disgust']">
                        <p><xsl:value-of select= "./text()"/></p>
                        
                    </xsl:for-each>
                    <xsl:for-each select= "//analysis_Word[@theme= 'Self_Disgust']">
                        <p><xsl:value-of select= "./text()"/></p>
                        
                    </xsl:for-each>    
                </body>
            </html>
        </xsl:result-document>
        
        
        
        
        <xsl:result-document method="xhtml" indent="yes" href="../docs/frankenstein_xslt_rage.html">
            <html>
                <head>
                    <title>Theme of Rage</title>
                    <link rel="stylesheet" type="text/css" href="../docs/frankenstein_basic.css"/>
                </head>
                <body>
                    <h1>Occurrences of Theme</h1> 
                    
                    <xsl:for-each select= "//analysis_Phrase[@theme= 'Rage']">
                        <p><xsl:value-of select= "./text()"/></p>
                        
                    </xsl:for-each>
                    <xsl:for-each select= "//analysis_Word[@theme= 'Rage']">
                        <p><xsl:value-of select= "./text()"/></p>
                        
                    </xsl:for-each>    
                </body>
            </html>
        </xsl:result-document>
        
        
        
        
        <xsl:result-document method="xhtml" indent="yes" href="../docs/frankenstein_xslt_misery.html">
            <html>
                <head>
                    <title>Theme of Misery</title>
                    <link rel="stylesheet" type="text/css" href="../docs/frankenstein_basic.css"/>
                </head>
                <body>
                    <h1>Occurrences of Theme</h1> 
                    
                    <xsl:for-each select= "//analysis_Phrase[@theme= 'Misery']">
                        <p><xsl:value-of select= "./text()"/></p>
                        
                    </xsl:for-each>
                    <xsl:for-each select= "//analysis_Word[@theme= 'Misery']">
                        <p><xsl:value-of select= "./text()"/></p>
                        
                    </xsl:for-each>    
                </body>
            </html>
        </xsl:result-document>
        
        
        
        
        <xsl:result-document method="xhtml" indent="yes" href="../docs/frankenstein_xslt_illness.html">
            <html>
                <head>
                    <title>Theme of Illness</title>
                    <link rel="stylesheet" type="text/css" href="../docs/frankenstein_basic.css"/> 
                </head>
                <body>
                    <h1>Occurrences of Theme</h1> 
                    
                    <xsl:for-each select= "//analysis_Phrase[@theme= 'Illness']">
                        <p><xsl:value-of select= "./text()"/></p>
                        
                    </xsl:for-each>
                    <xsl:for-each select= "//analysis_Word[@theme= 'Illness']">
                        <p><xsl:value-of select= "./text()"/></p>
                        
                    </xsl:for-each>    
                </body>
            </html>
        </xsl:result-document>
        
       
    </xsl:template>
    
    
   
</xsl:stylesheet>
