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
                    <link rel="stylesheet" type="text/css" href="themepage.css"/>
                </head>
                <body>
                    <h1>Theme Analysis</h1>
                    <p>Frankenstein experiences great bouts of guilt and remorse throughout the novel. He feels responsible for the death of his little brother William after the creature kills him, and feels further guilt when Justine, Henry, Elizabeth, and his father die directly or indirectly by the hands of the creature. Despite the guilt he feels, he still does not take full responsibly for their deaths, and goes back and forth between blaming himself and blaming the creature.</p>
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
                    <link rel="stylesheet" type="text/css" href="themepage.css"/>  
                </head>
                <body>
                    <h1>Theme Analysis</h1>
                    <p>Victor Frankenstein isolates himself while obsessing over making his creation. He rarely writes to his family while at Ingolstadt, which worries them. He spends several days and nights observing corpses decay as research for his project. He neglects his own health and wellbeing in pursuit of making this perfect creation, which leads to his declining mental and physical health.</p>
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
                    <link rel="stylesheet" type="text/css" href="themepage.css"/>
                </head>
                <body>
                    <h1>Theme Analysis</h1>
                    <p>Victor's ambition is his fatal flaw. His drive and obsession with making new life and having control over death leads to his downfall and death, as well as the deaths of his family and friends. Frankenstein uses his story as a cautionary tale to warn Captain Robert Walton about the dangers of ambition and the consequences that it brings.</p>
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
                    <link rel="stylesheet" type="text/css" href="themepage.css"/>
                </head>
                <body>
                    <h1>Theme Analysis</h1>
                    <p>Victor Frankenstein experiences moments of madness throughout the novel. Due to him neglecting his mental and physical health for several months, he has multiple breakdowns throughout the novel.</p>
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
                    <link rel="stylesheet" type="text/css" href="themepage.css"/> 
                </head>
                <body>
                    <h1>Theme Analysis</h1>
                    <p>Victor Frankenstein withholds the true nature of his research and experiments from those around him. He never lets his family know the full extent of his knowledge, even when withholding that information hurts them.</p>
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
                    <link rel="stylesheet" type="text/css" href="themepage.css"/>
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
                    <link rel="stylesheet" type="text/css" href="themepage.css"/>  
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
                    <link rel="stylesheet" type="text/css" href="themepage.css"/>
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
                    <link rel="stylesheet" type="text/css" href="themepage.css"/>
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
                    <link rel="stylesheet" type="text/css" href="themepage.css"/>
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
                    <link rel="stylesheet" type="text/css" href="themepage.css"/>
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
                    <link rel="stylesheet" type="text/css" href="themepage.css"/> 
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
