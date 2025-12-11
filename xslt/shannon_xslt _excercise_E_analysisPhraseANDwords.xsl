<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat" omit-xml-declaration="yes"/>
        <xsl:variable name="frankensteinproject" select="document('../xml/frankensteinmergefix.xml')"/>
            
        
        <xsl:template match="$frankensteinproject">
            <xsl:result-document method="xhtml" indent="yes" href="../docs/frankensteinanalysisphraseNEW.html">
            <html>
            <head><title>The Mental Deterioration of Victor Frankenstein</title> <!--title of page-->
                <link rel="stylesheet" type="text/css" href="frankenstein_table_css.css"/><!--linked to css style sheet-->
            </head>
            <body>
                <a href="index.html">
                    <h1>Frankenstein Mental Analysis</h1>
                </a>
                <nav>
                    <div><a href="index.html">Homepage</a></div>
                    <div class="dropdown">
                        <a href="Themes.html">Themes</a>
                        <div class="dropdown-content">
                            <a href="frankenstein_xslt_guilt.html">Guilt</a>
                            <a href="frankenstein_xslt_isolation.html">Isolation</a>
                            <a href="frankenstein_xslt_ambition.html">Ambition</a>
                            <a href="frankenstein_xslt_madness.html">Madness</a>
                            <a href="frankenstein_xslt_secrecy.html">Secrecy</a>
                            <a href="frankenstein_xslt_consequencesOfcreation.html">Consequences Of Creation</a>
                            <a href="frankenstein_xslt_obsession.html">Obsession</a>
                            <a href="frankenstein_xslt_worry.html">Worry</a>
                            <a href="frankenstein_xslt_selfDisgust.html">Self Disgust</a>
                            <a href="frankenstein_xslt_rage.html">Rage</a>
                            <a href="frankenstein_xslt_misery.html">Misery</a>
                            <a href="frankenstein_xslt_illness.html">Illness</a>
                        </div>
                    </div>
                    <div class="dropdown">
                        <a href="analysis.html">Analysis</a>
                        <div class="dropdown-content">
                            <a href="Gaughan_exercise_3.html">Theme Occurrences Graphs</a>
                            <a href="frankensteinanalysisphraseNEW.html">Theme Occurrences Table Based on Volume</a>
                            <a href="patrick_xslt_eNEW.html">Theme Occurrences Based On Chapter</a>
                            
                        </div>
                    </div>
                    <div><a href="Phillabaum_xslt_e.html">Full Text</a></div>
                    <div><a href="aboutPage.html">About</a></div>
                    <div> <a href="team_page.html">Team Page</a></div>
                </nav>
                <h2>The Mental Deterioration of Victor Frankenstein</h2> <!-- header -->
                <table>
                    <tr><td>Theme</td><td>Theme Frequency</td>
                        <td>Volume 1</td> <td>Volume 2</td><td>Volume 3</td></tr> <!-- categories of the table -->
                    <xsl:for-each-group select="//*[@theme]" group-by="@theme"> <!-- collecting theme data from xml -->
                       
                 <xsl:sort select="count(current-group())" order="descending"/> 
                        <xsl:variable name="current-theme" select="@theme"/>
                        <tr>
                            <td><xsl:value-of select="@theme!replace(.,'_',' ')"/></td><td><xsl:value-of select="count(current-group())"/></td><xsl:for-each select="//volume">
                                <td>
                                    <xsl:value-of select=".//p/*[@theme=$current-theme]=>count()"/> 
                                </td>
                                
                                
                            </xsl:for-each>
                            <!-- counting number of occurances of themes -->
                        </tr>
                    </xsl:for-each-group>
                </table>
                
              
                
            </body>
            </html>
            </xsl:result-document>
        </xsl:template>
            
 
</xsl:stylesheet>