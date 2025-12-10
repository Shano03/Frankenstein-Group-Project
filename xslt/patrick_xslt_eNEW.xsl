<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat" omit-xml-declaration="yes"/>
    <xsl:variable name="frankensteinText" select="document('../xml/frankensteinmergefix.xml')"/>
    <xsl:variable name="xspacer" select="20" />
    <xsl:variable name="yspacer" select="15" />
    <xsl:template match="$frankensteinText">
        <xsl:result-document method="xhtml" indent="yes" href="../docs/patrick_xslt_eNEW.html">
            <html>
                <head>
                    <title>Themes Based On Chapter</title>
                    <link rel="stylesheet" type="text/css" href="themepage.css"/>
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
                                
                            </div>
                        </div>
                        <div><a href="Phillabaum_xslt_e.html">Full Text</a></div>
                        <div><a href="aboutPage.html">About</a></div>
                        <div> <a href="team_page.html">Team Page</a></div>
                    </nav>
                    
                    
                    <!--creates and colors the graph key-->
                    <p> <span style="background-color: red; color: black;">Guilt     </span> 
                      <span style="background-color: white; color: black;">Ambition     </span>
                        <span style="background-color: #5BFE42; color: black;">Madness     </span>
                        <span style="background-color: yellow; color: black;">Secrecy     </span>
                        <span style="background-color: orange; color: black;">Consequences of Creation     </span>
                        <span style="background-color: pink; color: black;">Obsession     </span>
                        <span style="background-color: purple; color: black;">Worry     </span>
                        <span style="background-color: #FF9292; color: black;">Self Disgust     </span>
                        <span style="background-color: #42F1FE; color: black;">Rage     </span>
                        <span style="background-color: #CE7EFF; color: black;">Misery     </span>
                        <span style="background-color: #FF8346; color: black;">Illness     </span></p>
                    
                    <!-- universal variables-->
                    <xsl:variable name="xspacer" select="5"/>
                    <xsl:variable name="yspacer" select="15"/>
                    <svg viewBox="0 0 1000 450">
                        <g transform="translate(150,10)">
                            <xsl:for-each select=".//ch">
                                
                                <!--these are local variables-->
                                <xsl:variable name="chapNum" select="position()"/>
                                <xsl:variable name="guilt" select=".//*[@theme='Guilt']=>count()"/>
                                <xsl:variable name="isolation" select=".//*[@theme='Isolation']=>count()"/>
                                <xsl:variable name="ambition" select=".//*[@theme='Ambition']=>count()"/>
                                <xsl:variable name="madness" select=".//*[@theme='Madness']=>count()"/>
                                <xsl:variable name="secrecy" select=".//*[@theme='Secrecy']=>count()"/>
                                <xsl:variable name="consequencesofcreation" select=".//*[@theme='Consequences_Of_Creation']=>count()"/>
                                <xsl:variable name="obsession" select=".//*[@theme='Obsession']=>count()"/> 
                                <xsl:variable name="worry" select=".//*[@theme='Worry']=>count()"/> 
                                <xsl:variable name="selfdisgust" select=".//*[@theme='Self_Disgust']=>count()"/> 
                                <xsl:variable name="rage" select=".//*[@theme='Rage']=>count()"/> 
                                <xsl:variable name="misery" select=".//*[@theme='Misery']=>count()"/> 
                                <xsl:variable name="illness" select=".//*[@theme='Illness']=>count()"/> 
                                <!--this creates guilt bar-->
                                <line x1="0" x2="{$xspacer * $guilt}" 
                                    y1="{$yspacer * $chapNum}" y2="{$yspacer * $chapNum}"
                                    stroke-width="10" stroke="red"/>
                                <!-- this creates the label for each line -->
                                <text x="-15"
                                    y="{$yspacer * $chapNum + 4}"
                                    text-anchor="end"
                                    font-size="10"
                                    fill="white">
                                     <xsl:value-of select=".//chapterName"/>
                                </text>
                                <!--this creates the isolation bar -->
                                <line x1="{$xspacer * $guilt}" x2="{$xspacer * ($isolation+$guilt)}" 
                                    y1="{$yspacer * $chapNum}" y2="{$yspacer * $chapNum}"
                                    stroke-width="10" stroke="white"/>
                                
                                <!--this creates the ambition bar -->
                                <line x1="{$xspacer * ($guilt + $isolation)}" x2="{$xspacer * ($ambition+$isolation+$guilt)}" 
                                    y1="{$yspacer * $chapNum}" y2="{$yspacer * $chapNum}"
                                    stroke-width="10" stroke="#5BFE42"/>
                                
                                <!--this creates the madness bar -->
                                <line x1="{$xspacer * ($guilt + $isolation + $ambition)}" x2="{$xspacer * ($madness+$ambition+$isolation+$guilt)}" 
                                    y1="{$yspacer * $chapNum}" y2="{$yspacer * $chapNum}"
                                    stroke-width="10" stroke="yellow"/>
                                
                                <!--this creates the secrecy bar -->
                                <line x1="{$xspacer * ($guilt + $isolation + $ambition + $madness)}" x2="{$xspacer * ($secrecy+$madness+$ambition+$isolation+$guilt)}" 
                                    y1="{$yspacer * $chapNum}" y2="{$yspacer * $chapNum}"
                                    stroke-width="10" stroke="orange"/>
                                
                                <!--this creates the consequences of creation bar -->
                                <line x1="{$xspacer * ($guilt + $isolation + $ambition + $madness + $secrecy)}" x2="{$xspacer * ($consequencesofcreation+$secrecy+$madness+$ambition+$isolation+$guilt)}" 
                                    y1="{$yspacer * $chapNum}" y2="{$yspacer * $chapNum}"
                                    stroke-width="10" stroke="pink"/>
                                
                                <!--this creates the obsession bar -->
                                <line x1="{$xspacer * ($guilt + $isolation + $ambition + $madness + $secrecy + $consequencesofcreation)}" x2="{$xspacer * ($obsession+$consequencesofcreation+$secrecy+$madness+$ambition+$isolation+$guilt)}" 
                                    y1="{$yspacer * $chapNum}" y2="{$yspacer * $chapNum}"
                                    stroke-width="10" stroke="pink"/>
                                
                                <!--this creates the worry bar -->
                                <line x1="{$xspacer * ($guilt + $isolation + $ambition + $madness + $secrecy + $consequencesofcreation + $obsession)}" x2="{$xspacer * ($worry+$obsession+$consequencesofcreation+$secrecy+$madness+$ambition+$isolation+$guilt)}" 
                                    y1="{$yspacer * $chapNum}" y2="{$yspacer * $chapNum}"
                                    stroke-width="10" stroke="purple"/>
                                
                                <!--this creates the self disgust bar -->
                                <line x1="{$xspacer * ($guilt + $isolation + $ambition + $madness + $secrecy + $consequencesofcreation + $obsession + $worry)}" x2="{$xspacer * ($selfdisgust+$worry+$obsession+$consequencesofcreation+$secrecy+$madness+$ambition+$isolation+$guilt)}" 
                                    y1="{$yspacer * $chapNum}" y2="{$yspacer * $chapNum}"
                                    stroke-width="10" stroke="#FF9292"/>
                                
                                <!--this creates the rage bar -->
                                <line x1="{$xspacer * ($guilt + $isolation + $ambition + $madness + $secrecy + $consequencesofcreation + $obsession + $worry + $selfdisgust)}" x2="{$xspacer * ($rage+$selfdisgust+$worry+$obsession+$consequencesofcreation+$secrecy+$madness+$ambition+$isolation+$guilt)}" 
                                    y1="{$yspacer * $chapNum}" y2="{$yspacer * $chapNum}"
                                    stroke-width="10" stroke="#42F1FE"/>
                                
                                <!--this creates the misery bar -->
                                <line x1="{$xspacer * ($guilt + $isolation + $ambition + $madness + $secrecy + $consequencesofcreation + $obsession + $worry + $selfdisgust + $rage)}" x2="{$xspacer * ($misery+$rage+$selfdisgust+$worry+$obsession+$consequencesofcreation+$secrecy+$madness+$ambition+$isolation+$guilt)}" 
                                    y1="{$yspacer * $chapNum}" y2="{$yspacer * $chapNum}"
                                    stroke-width="10" stroke="#CE7EFF"/>
                                
                                <!--this creates the illness bar -->
                                <line x1="{$xspacer * ($guilt + $isolation + $ambition + $madness + $secrecy + $consequencesofcreation + $obsession + $worry + $selfdisgust + $rage + $misery)}" x2="{$xspacer * ($illness+$misery+$rage+$selfdisgust+$worry+$obsession+$consequencesofcreation+$secrecy+$madness+$ambition+$isolation+$guilt)}" 
                                    y1="{$yspacer * $chapNum}" y2="{$yspacer * $chapNum}"
                                    stroke-width="10" stroke="#FF8346"/>
                            </xsl:for-each>
                            
                        </g>
                    </svg>
                    
                    
                
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
</xsl:stylesheet>