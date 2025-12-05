<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/2000/svg"
    version="3.0">
    
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name="Frankenstein" select="document('../xml/frankensteinmergefix.xml')"/>
    <xsl:variable name="xspacer" select="25"/>
    <xsl:variable name="yspacer" select="17"/>
    
    <xsl:template match="$Frankenstein">
        <xsl:result-document method="xml" indent="yes" href="../docs/Gaughan_exercise_3.html">
            <html>
                <head>
                    <title>Frankenstein Analysis</title>
                    <link rel="stylesheet" type="text/css" href="frankenstein_basic.css"/>
                </head>
                <body>
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
                                
                            </div>
                        </div>
                        <div><a href="Phillabaum_xslt_e.html">Full Text</a></div>
                        <div><a href="aboutPage.html">About</a></div>
                        <div> <a href="team_page.html">Team Page</a></div>
                    </nav>
                    <h1>Theme Analysis Graphs</h1>
                    <p>These graphs show the amount of times the themes appeared within the novel.</p>
                    <h2>Number of Analysis Words</h2>
                    <svg viewBox="0 0 1100 240">
                        <g transform="translate(250,10)">
                            <xsl:for-each-group select="//ch//p//analysis_Word" group-by="@theme">
                                
                                <xsl:sort select="count(current-group())" order="descending"/>
                                <xsl:variable name="word-count" select="count(current-group())"/>
                                <xsl:variable name="word-sequence" select="position()"/>
                                    
                                    <line x1="0" x2="{$xspacer * $word-count}" y1="{($yspacer * $word-sequence) - 5}" y2="{($yspacer * $word-sequence) - 5}" stroke-width="10" stroke="purple"/>
                                
                                <text x="-10" y="{$yspacer * $word-sequence}" text-anchor="end" stroke="black" fill="white" stroke-width="0.1"><xsl:value-of select="$word-sequence"/><xsl:text>: </xsl:text> <xsl:apply-templates select="string()[1]"/></text>
                                <text x="{$xspacer * $word-count + 10}" y="{$yspacer * $word-sequence}" text-anchor="right" stroke="black" fill="white" stroke-width="0.1"><xsl:value-of select="$word-count"/></text>
                                
                            </xsl:for-each-group> 
                            <line x1="0" y1="0" x2="0" y2="{count(//ch//p//analysis_Word)=>distinct-values() * $yspacer}" stroke="black" stroke-width="1"/>
                        </g>
                    </svg>            
                                    <h2>Number of Analysis Phrases by Themes</h2>
                 
                                    <svg viewBox="0 0 1100 300">
                                        <g transform="translate(250,10)">
                                            
                                            <xsl:for-each-group select=".//ch//analysis_Phrase" group-by="@theme">
                                                
                                                <xsl:sort select="count(current-group())" order="descending"/>
                                                
                                                <xsl:variable name="theme-occurrence-count" select="count(current-group())"/>
                                                <xsl:variable name="theme-sequence" select="position()"/>
                                                
                                                
                                                <line x1="0" x2="{$xspacer * $theme-occurrence-count}" 
                                                    y1="{($yspacer * $theme-sequence) - 5}" y2="{($yspacer * $theme-sequence) - 5}"
                                                    stroke-width="10" stroke="green"/>
                                                
                                                
                                                <text x="-10" y="{$yspacer * $theme-sequence}" text-anchor="end" stroke="black" fill="white" stroke-width="0.1">
                                                    <xsl:value-of select="$theme-sequence"/><xsl:text>: </xsl:text>
                                                    <xsl:apply-templates select="current-grouping-key()"/></text>
                                                
                                                
                                                <text x="{$xspacer * $theme-occurrence-count + 10}" y="{$yspacer * $theme-sequence}" text-anchor="right" stroke="black" fill="white" stroke-width="0.1">
                                                    <xsl:value-of select="$theme-occurrence-count"/></text>
                                                
                                            </xsl:for-each-group>
                                            
                                            
                                            <line x1="0" y1="0" x2="0" y2="{count(.//ch//analysis_Phrase) * $yspacer}" stroke="black" stroke-width="1"/>
                                            
                                        </g>
                                    </svg>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
    
</xsl:stylesheet>