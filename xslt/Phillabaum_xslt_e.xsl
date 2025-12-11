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
                        <link rel="stylesheet" type="text/css" href="Phillabaum_xslt_e.css"/>
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
                        <div id="theme-guide">
                           
                            <svg width="4000" height="120">
                                <text x="665" y="30" font-size="30" fill="#FFFFFF" text-anchor="middle">Color Guide for Themes</text>
                                <circle cx="130" cy="60" r="20" fill="#340058" stroke="black"/>
                                <text x="130" y="95" font-size="15" fill="#FFFFFF" text-anchor="middle">Guilt</text>
                                <circle cx="190" cy="60" r="20" fill="#49EB96" stroke="black"/>
                                <text x="190" y="95" font-size="15" fill="#FFFFFF" text-anchor="middle">Isolation</text>
                                <circle cx="250" cy="60" r="20" fill="#6B0001" stroke="black"/>
                                <text x="250" y="95" font-size="15" fill="#FFFFFF" text-anchor="middle">Ambition</text>
                                <circle cx="310" cy="60" r="20" fill="#FF3103" stroke="black"/>
                                <text x="310" y="95" font-size="15" fill="#FFFFFF" text-anchor="middle">Madness</text>
                                <circle cx="370" cy="60" r="20" fill="#717070" stroke="black"/>
                                <text x="370" y="95" font-size="15" fill="#FFFFFF" text-anchor="middle">Secrecy</text>
                                <circle cx="485" cy="60" r="20" fill="#007A2B" stroke="black"/>
                                <text x="485" y="95" font-size="15" fill="#FFFFFF" text-anchor="middle">Consequences Of Creation</text>
                                <circle cx="610" cy="60" r="20" fill="#FE9900" stroke="black"/>
                                <text x="610" y="95" font-size="15" fill="#FFFFFF" text-anchor="middle">Obsession</text>
                                <circle cx="670" cy="60" r="20" fill="#059FFF" stroke="black"/>
                                <text x="670" y="95" font-size="15" fill="#FFFFFF" text-anchor="middle">Worry</text>
                                <circle cx="730" cy="60" r="20" fill="#28FF07" stroke="black"/>
                                <text x="730" y="95" font-size="15" fill="#FFFFFF" text-anchor="middle">Self Disgust</text>
                                <circle cx="790" cy="60" r="20" fill="#FF0303" stroke="black"/>
                                <text x="790" y="95" font-size="15" fill="#FFFFFF" text-anchor="middle">Rage</text>
                                <circle cx="850" cy="60" r="20" fill="#814B00" stroke="black"/>
                                <text x="850" y="95" font-size="15" fill="#FFFFFF" text-anchor="middle">Misery</text>
                                <circle cx="910" cy="60" r="20" fill="#739501" stroke="black"/>
                                <text x="910" y="95" font-size="15" fill="#FFFFFF" text-anchor="middle">Illness</text>
                                <circle cx="970" cy="60" r="20" fill="#FFFFFF" stroke="black"/>
                                <text x="970" y="95" font-size="15" fill="#FFFFFF" text-anchor="middle">Death</text>
                                <circle cx="1030" cy="60" r="20" fill="#FF0389" stroke="black"/>
                                <text x="1030" y="95" font-size="15" fill="#FFFFFF" text-anchor="middle">Depression</text>
                                <circle cx="1090" cy="60" r="20" fill="#A00155" stroke="black"/>
                                <text x="1090" y="95" font-size="15" fill="#FFFFFF" text-anchor="middle">Fear</text>
                                <circle cx="1150" cy="60" r="20" fill="#EAE010" stroke="black"/>
                                <text x="1150" y="95" font-size="15" fill="#FFFFFF" text-anchor="middle">Places</text>
                                <circle cx="1210" cy="60" r="20" fill="#3411FF" stroke="black"/>
                                <text x="1210" y="95" font-size="15" fill="#FFFFFF" text-anchor="middle">Characters</text>
                            </svg>
                        </div>
                        
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